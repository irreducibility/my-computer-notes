Ffmpeg
======

## Convert mp4 to gif

```
	ffmpeg -i newblink.mp4 -r 15 -vf "scale=512:-1,split[s0][s1];[s0]palettegen[p];[s1][p]paletteuse" -ss 00:00:11 -to 00:00:12 new.gif 
```

## Convert One Video Format To Another

```
	ffmpeg -i input_filename.avi -c:v copy -c:a copy -y output_filename.mp4
```

## Take Screenshots
See [0],[1] for more.

```
	ffmpeg -i ./input.mp4 -s 320x240 -vf fps=1 IMG/img%03d.jpg
	# take screenshot every sec, size 320x240
```

## Trim Videos
See [^2] for more.

```
	ffmpeg -ss 00:05:20 -i input.mp4 -t 00:10:00 -c:v copy -c:a copy output3.mp4
```

## Combine Images To Video

```
	ffmpeg -framerate 8 -i img%03d.jpg output.mp4
	# takes images imagexxx.jpg and converts it to 8fps outuput.mp4
```

# Find Quality Of A Video File

```
	ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=s=x:p=0 input.mp4
```

## Resources
[0]https://superuser.com/questions/135117/how-to-extract-one-frame-of-a-video-every-n-seconds-to-an-image
[1]https://trac.ffmpeg.org/wiki/Create%20a%20thumbnail%20image%20every%20X%20seconds%20of%20the%20video
[^2]:[https://shotstack.io/learn/use-ffmpeg-to-trim-video/]
