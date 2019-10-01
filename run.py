import os
from termcolor import cprint
ope=os.popen("which openssl").read()
ope=ope[:-1]
if len(ope) == 0:
    cprint("Openssl is required to run the program please install!",'yellow',attrs=['bold'])
    cprint("Exiting",'yellow',attrs=['bold'])
    exit

else:
    cprint("FileEncrypt v1.1",'red',attrs=['bold'])
    cprint("[1]To Encrypt file",'blue',attrs=['bold'])
    cprint("[2]To Decrypt file",'blue',attrs=['bold'])
    choice=int(input(">>"))
    if choice==1:
        file_to_encrypt=input("Enter file to encrypt: ")
        os.system('/bin/bash ./files/encode.sh '+ file_to_encrypt)
        exit
    elif choice==2:
        file_to_decrypt=input("Enter file to decrypt: ")
        os.system('/bin/bash ./files/decode.sh '+ file_to_decrypt)
        exit
    else:
        cprint("Invalid option please try again!!!", 'red', attrs=['bold'])
        