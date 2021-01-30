#!/usr/bin/expect -d

set timeout -1

spawn git push

expect "Username for 'https://lfs.dreadl0ck.net': "

send -- "$env(LFS_USER)\n"

expect "Password for 'https://$env(LFS_USER)@lfs.dreadl0ck.net': "

send -- "$env(LFS_PASS)\n"

expect eof
exit
