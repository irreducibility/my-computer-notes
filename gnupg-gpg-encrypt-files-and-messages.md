GnuPG
=====

GnuPG is an implementation of PGP.


## Command Line Options

```
	--compress-level    0 for do not compress with gpg
```

## Encrypting With Symmetric Cipher

```
    $ gpg [-a ascii armor] -c <filename>
          #enter password
```

## Encrypting Using Asymmetric Cipher

Encrypt with public key and decrypt with private key.

```
    Bob's Machine                   Alice's Machine
    =============                   ===============
    alice.pub                       bob.pub
    bob.pub                         alice.pub
    bob.private_key                 alice.private_key
```

Bob will encrypt `mesg.foralice` using `alice.pub` and
send it to Alice. Alice will decrypt `mesg.froalice`
using `alice.private_key`.

## Generating Key Pairs

``` 
        gpg --full-generate-key

        gpg --list-keys --keyid-format=long # list all keys
```

## Import Keys

```
        gpg --import <keyfile>
```

## Export Public Keys

```
        gpg --export <email id>
        # fingerprint or key id can be use in place of <email id> 

        -a  ASCII armor
        -o  output to a file instead of stdout
    
        gpg -o <outputfile> -a --export <email id>
```

## Export Private Keys

``` 
        gpg --export-secret-keys <email id>
```

## Encrypting Files

``` 
        gpg -r <email id> -e <filename>
```
And with ascii armor

``` 
        gpg -a -r <email id> -e <filename>
```

## Using Pipe For Encryption/Decryption

To encrypt a message:

``` 
        cat << eof | gpg -a -r <email id> -e
        # message is written taken from stdin
        # make sure message doesn't get saved
        # in shell history
``` 

To decrypt message:
```
        cat <encrypted file> | gpg -d -o -
        # note: this is output in std out
        # -o - will force gpg to print decrypted
        # message on stdout
```

## To Decrypt A File

```
        gpg -d <filename>
```

## Signing Files And Messages

### Sign

Encrypt with private key and decrypt with public key.
``` 
        gpg -u <email id> --sign <filename>
        
        -u or --local-user 
``` 

This will sign the document with your private key. 
The output is signature. `<filename>` is embedded
in this signature.
    
This can be decrypted by anyone with respective 
public key.

``` 
    $ gpg -d <filename>
``` 

Or this can be verified with

``` 
    $ gpg --verify <filename>
```

### Clear Sign

One can make a cleartext sign. This can be useful 
when signing clear messages. 

``` 
    $ gpg -u <email id> --clear-sign <message text>
``` 

The signature contains `<message text>`. Verify it using:

```
    $ gpg --verify <message text>
```

### Detached Sign

If file size is large. It is logical to use detached sign.

``` 
    $ gpg -u <emailid> --detach-sign <filename>
```

The signature file doesn't contain `<filename>`.  
To verify you require the signature and signed file.

```
    $ gpg --verify <filename>.gpg
``` 
where `<filename>.gpg` is detached sign.

## Notes

- Key id is last 8/16 characters of fingerprint.

## Edit Key

To add email address to existing ggp key run the following commands:[^0]

```
        gpg --edit-key <key id>
        gpg> adduid
        # choose appropriate options and add information
        gpg> save
```
This will add the new email address to gpg key. Then update the trust 
level of new uid from unknown to ultimate

```
        gpg --edit-key <key id>
        gpg>trust
        # choose appropriate options
        gpg>save
```

Export the edited gpg public (private) key and maybe upload it to gpg key server.

## Resources
- https://www.gnupg.org/gph/en/manual/x215.html ??? second last paragraph

## Further Reading
- https://wiki.ayushnix.com/sysadmin/gpg/gpg-101/
- https://davesteele.github.io/gpg/2014/09/20/anatomy-of-a-gpg-key/
- https://futureboy.us/pgp.html
- https://gist.github.com/abcdw/3ee8fc771ce5b0b9e50ce670756cbe2d
- https://rzetterberg.github.io/yubikey-gpg-nixos.html A nicely written tutorial
- https://latacora.micro.blog/2019/07/16/the-pgp-problem.html
- https://latacora.micro.blog/2019/07/16/the-pgp-problem.html
- https://latacora.micro.blog/2020/02/19/stop-using-encrypted.html

[0] https://coderwall.com/p/tx_1-g/gpg-change-email-for-key-in-pgp-key-servers
