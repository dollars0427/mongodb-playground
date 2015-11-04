#mongodb-playground

This is a virtual environment for developer to build a test environment of mongodb quickly.

##Install

**Before start the testing environment, you must install the lastest version of Vargant.**

1.Download the vagrant box of Ubuntu 14.04 64bits：

https://github.com/kraksoft/vagrant-box-ubuntu/releases/download/14.04/ubuntu-14.04-amd64.box

2.Import the vagrant box file：

```bash
$ vagrant box add 14.04 ubuntu-14.04-amd64.box
```

##Usage
Running this command at project folder to start the virual machine：

```bash
$ vagrant up
```

Stop the virual machine:

```bash
$ vagrant halt
```

Remote to the virual machine:

```bash
$ vagrant ssh
```
