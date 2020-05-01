#! /usr/bin/expect
spawn git push origin master
expect "*Username*"
send "edte\r"
expect "Password"
send "your password\r"
interact


