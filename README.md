## FileEncrypt Version 1.1

The FileEncrypt is bash script cmdline program to encrypt files using openssl aes256-cbc

### Requirements:
 
- In Redhat 
```
$ sudo yum install openssl
```
- In Debian
```
$ sudo apt-get install openssl
```
- In arch linux
```
$ sudo pacman -S openssl
```
### Usage:
```
$ git clone https://github.com/Vidhunind/FileEncrypt
$ cd FileEncrypt
$ bash run.sh
```
- To Encrpyt File
```
$ bash run.sh
[1]To Encrypt file [enc]
[2]To Decrypt file [dec]
>> 1
[!]Enter your filename to Encrypt : file.txt
enter aes-256-cbc encryption password:*****
Verifying - enter aes-256-cbc encryption password:*****
Encryption successful
```
- To Decrypt File
```
$ bash run.sh
[1]To Encrypt file [enc]
[2]To Decrypt file [dec]
>> 2
[!]Enter your filename to Decrypt : file.txt.enc
enter aes-256-cbc decryption password:
Decryption successful.
```
### New version python interface

A new python interface is added for easy operation and understanding. 

## Requirements for python 

1. os library 
2. termcolor library

### Usage
'''
$ python3 run.py
'''
The rest is same. Enjoy!!!!!