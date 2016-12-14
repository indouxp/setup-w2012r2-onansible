#!/bin/sh

set -eu

# CentOS7の最新のepelをlocalinstallする。
sudo yum localinstall http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm
# epelより、ansibleのインストール
sudo yum install ansible
# pipのインストール
sudo curl -sL https://bootstrap.pypa.io/get-pip.py | sudo python
# pipで、pywinrmのインストール
sudo pip install pywinrm
