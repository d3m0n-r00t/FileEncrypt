## FileEncrypt

The FileEncrypt is bash script cmdline program to encrypt files using openssl aes256-cbc


### Usage:
```
git clone https://github.com/Vidhunind/FileEncrypt
cd FileEncrypt
bash run.sh
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
$bash run.sh
[1]To Encrypt file [enc]
[2]To Decrypt file [dec]
>> 2
[!]Enter your filename to Decrypt : file.txt.enc
enter aes-256-cbc decryption password:
Decryption successful.
```