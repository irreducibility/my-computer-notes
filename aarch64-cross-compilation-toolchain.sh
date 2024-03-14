#!/bin/bash

#Change variables :
#	sourceroot
#	binutildir
#	gccdir
#	glibcdir
#       linuxdir

#src file tree
# $HOME/toolchain-src 
#	|-- binutils-* 
#	|-- gcc-* 
#	|-- glibc-* 
#	`-- linux-*


#output file tree
#  /tmp/arm/
#	|-- build
#	|-- install
#	`-- sysroot	


#environments
export target=aarch64-linux-gnu

export ROOTDIR=/tmp/aarch64

mkdir -p $ROOTDIR/install
export prefix=$ROOTDIR/install
export PATH=$PATH:$ROOTDIR/install/bin

mkdir -p $ROOTDIR/sysroot
export sysroot=$ROOTDIR/sysroot
export archx=arm64

#set builddir
mkdir -p $ROOTDIR/build
export builddir=$ROOTDIR/build

#set sourceroot
export sourceroot=$HOME/arm/src/

#log files

MKLOG=_make.log
CFGLOG=_config.log

#tool source location

export binutildir=$sourceroot/binutils-2.38
export gccdir=$sourceroot/gcc-10.4.0
export glibcdir=$sourceroot/glibc-2.20
export linuxdir=$sourceroot/linux-3.0.8


###########
#BINUTILS
###########

function binutils-fun(){

echo "building binutils..."

cd $builddir

mkdir -p build-binutils

cd build-binutils

$binutildir/configure --prefix=$prefix --target=$target \
	--disable-multilib --disable-werror 		\
	--with-sysroot=$sysroot #>> ./$CFGLOG

make -j$(nproc) # >> ./$MKLOG

make install #>> ./$MKLOG

}

###########
#linux
###########

function linux-fun(){

echo "building linux headers..."

cd $linuxdir

make ARCH=$archx INSTALL_HDR_PATH=$sysroot/usr headers_install #> ./$MKLOG

}

##########
#gcc
##########

function gcc-1-fun(){

echo "building gcc-1..."

cd $builddir

mkdir -p build-gcc-1

cd build-gcc-1

$gccdir/configure --prefix=$prefix --target=$target\
      --enable-languages=c,c++  \
      --without-headers 	\
      --disable-nls             \
      --disable-shared          \
      --disable-multilib        \
      --disable-decimal-float   \
      --disable-threads         \
      --disable-libatomic       \
      --disable-libgomp         \
      --disable-libquadmath     \
      --disable-libssp          \
      --disable-libvtv          \
      --disable-libstdcxx #> ./$CFGLOG

make -j$(nproc) #>> ./$MKLOG

make install # >> ./$MKLOG

}


###########
#glibc
###########
function glibc-1-fun(){

echo "building glibc-1..."

cd $builddir

mkdir -p build-glibc-1

cd build-glibc-1

$glibcdir/configure --prefix=$sysroot/usr	 \
	--build=$MACHTYPE  			 \
	--host=$target	   			 \
	--with-headers=$sysroot/usr/include 	 \
	--disable-multilib libc_cv_forced_unwind=yes #>> ./$CFGLOG


make install-bootstrap-headers=yes install-headers # >> ./$MKLOG

make -j$(nproc) csu/subdir_lib #>> ./$MKLOG

mkdir -p $sysroot/usr/lib 

cp  csu/crt1.o csu/crti.o csu/crtn.o $sysroot/usr/lib

$target-gcc -nostdlib -nostartfiles -shared -x c \
	/dev/null -o $sysroot/usr/lib/libc.so

mkdir  $sysroot/usr/include/gnu -p
touch $sysroot/usr/include/gnu/stubs.h

}

# not really install compiler support library too

#
#build gcc 2 against glibc headers and start files
#==========================================================

#in arm/build

function gcc-2-fun(){

echo "buildig gcc-2"

cd $builddir

mkdir -p build-gcc-2

cd build-gcc-2

$gccdir/configure --prefix=$prefix --target=$target\
    --enable-languages=c,c++  \
    --with-sysroot=$sysroot   \
    --disable-nls             \
    --disable-multilib        \
    --disable-decimal-float   \
    --disable-libatomic       \
    --disable-libgomp         \
    --disable-libquadmath     \
    --disable-libssp          \
    --disable-libvtv          \
    --disable-libstdcxx #>> ./$CFGLOG


make -j$(nproc) #>> ./$MKLOG

make install #1 >> ./$MKLOG

}

###########
#complete glibc
###########

function glibc-complete(){

echo "building complete glibc..."

cd $builddir

mkdir -p glibc-2
cd glibc-2

$glibcdir/configure --prefix=$sysroot/usr --host=$target --target=$target --build=$MACHTYPE --with-headers=$sysroot/usr/include --disable-multilib libc_cv_forced_unwind=yes

make -j$(nproc) #>> ./$MKLOG

make install #>> ./$MKLOG

}


function gcc-complete(){

echo "buildig gcc complete..."

cd $builddir

mkdir -p build-gcc-complete

cd build-gcc-complete

$gccdir/configure --prefix=$prefix \
    --target=$target	      \
    --enable-languages=c,c++  \
    --with-sysroot=$sysroot   \
    --disable-nls             \
    --disable-multilib        \
    --disable-decimal-float   \
    --disable-libatomic       \
    --disable-libgomp         \
    --disable-libquadmath     \
    --disable-libssp          \
    --disable-libvtv          \
    --disable-libstdcxx	      
    #--with-gxx-include-dir=$prefix/$target/usr/include/c++/10.4.0 >> ./$CFGLOG

make -j$(nproc) # >> ./$MKLOG

make install # >> ./$MKLOG

}

function libstdcpp(){

#libstdc++
#===================
#see [2]

echo "building libstdc++"

cd $builddir

mkdir -p build-libcpp
cd build-libcpp

$gccdir/libstdc++-v3/configure --host=$target\
    --prefix=$prefix                 \
    --disable-multilib              \
    --disable-nls                   \
    --disable-libstdcxx-threads     \
    --disable-libstdcxx-pch         \
    --with-gxx-include-dir=$prefix/$target/usr/include/c++/10.4.0 >> ./$CFGLOG

make -j$(nproc) # >> ./$MKLOG
make install #>> ./$MKLOG

}

function gcc-complete-cpp(){

echo "buildig gcc with libstdc++..."

cd $builddir

mkdir -p build-gcc-complete-cpp

cd build-gcc-complete-cpp

$gccdir/configure --prefix=$prefix \
    --target=$target	      \
    --enable-languages=c,c++  \
    --with-sysroot=$sysroot   \
    --disable-nls             \
    --disable-multilib        \
    --disable-decimal-float   \
    --disable-libatomic       \
    --disable-libgomp         \
    --disable-libquadmath     \
    --disable-libssp          \
    --disable-libvtv          \
    --with-gxx-include-dir=$prefix/$target/usr/include/c++/10.4.0\
    --disable-libstdcxx-pch   \
    --disable-libstdcxx-threads

make -j$(nproc) # >> ./$MKLOG

make install # >> ./$MKLOG

}

#building
binutils-fun
linux-fun
gcc-1-fun
glibc-1-fun
gcc-2-fun
glibc-complete
gcc-complete
