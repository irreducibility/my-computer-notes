#!/usr/bin/python3

import pexpect

class SSH:
    command = "ssh -4 -vND 8888 -o 'PreferredAuthentications=password' -o 'PubkeyAuthentication=no' sshproxy"
    #command = "cat"
    pid = ""

    @classmethod
    def spawn(self):
        try:
            print("running " + self.command)
            self.pid = pexpect.spawn(self.command)
        except:
            print("failed to connect to the server")
            exit(0)

ssh = SSH()
ssh.spawn()

try:
    if ssh.pid.expect(["s password:"]) == 0:
        ssh.pid.sendline("00000000")
        ssh.pid.interact()
    else:
        print("password authentication not working")
except:
    print("couldn't find a 's password:'")
