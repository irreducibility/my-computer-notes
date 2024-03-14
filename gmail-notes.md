Gmail Notes
===========
### Last Modified 2023 08 13

## Create Filters

Go to settings > see all settings > Filters and Blocked Address. Here
you can create filters and manage them.

### Filter Criteria [^1]
- from:email@address all email from email@address

```
    from:-@organization filter all not from 'organiztion'
    from:*@organization filter all from 'organization'
```
- to:email@address all sent emails to email@address
- in:<label>|anywhere in labels. This one is not recommended to create filters
  for incoming email.

## Setting Up Thunderbird Client

On web gmail, go to settings > see all settings > Forwarding and POP/IMAP.
Use IMAP to setup email forwarding. Enable options appropriately.

For client side configuration see [^2]. Choose Oauth2 as authentication
method.

### Resources

[^1]:[Filter Criteria](https://support.google.com/a/users/answer/9300019?hl=en)
[^2]:[Email Client](https://support.google.com/mail/answer/7126229?visit_id=638223145912174386-2512385018&hl=en&rd=1#zippy=%2Cstep-change-smtp-other-settings-in-your-email-client)
