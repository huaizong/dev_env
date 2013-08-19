#!bin/bash
sh autobuild.sh
echo "PATH=$PATH:/home/huaizong/dev/bin:" >> /etc/bashrc
echo "export PATH" >> /etc/bashrc
yum install -y kernel-devel SDL-devel  gcc g++ gdb valgrind git telnet ftp subversion  ibus-pinyin-open-phrase.x86_64 ibus-pinyin.x86_64 libmemcached-devel libevent-devel mysql-devel sqlite3-devel curl-devel mysql-server
ssh-keygen -t rsa -C "huaizongfujian@gmail.com"
git config --global user.email huaizongfujian@gmail.com
git config --global user.name "Wang Huaizong"
