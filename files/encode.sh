#!/bin/bash

bold=$(tput bold)
red=$(tput setaf 1)
yellow=$(tput setaf 3)
nocolor=$(tput sgr0)

bold_red=${bold}${red}
bold_yellow=${bold}${yellow}

print_error_and_exit()
{
    echo "${bold_red}$1${nocolor}"
    exit 
}

[ "$#" -eq 0 ] \
&& print_error_and_exit "One argument needs to be given. Both relative, and absolute file paths are supported." 

[ "$#" -gt 1 ] \
&& print_error_and_exit "Multiple arguments are not supported." 

[ ! -f "$1" ] \
&& print_error_and_exit "The given argument is not an existing file." 

input_filename="$1"

[ ! -r "$input_filename" ] \
&& print_error_and_exit "Input file is not readable by you." 

input_filepath=$(dirname "$input_filename")

[ ! -w "$input_filepath" ] \
&& print_error_and_exit "Destination directory is not writable by you." 

filename_extracted_from_path=$(basename "$input_filename")
filename_without_text_extension="${filename_extracted_from_path%.txt}"

if [ "$filename_extracted_from_path" = "$filename_without_text_extension" ]
then
    # the file has a different than txt gives filename.enc
    output_filename="$input_filepath/$filename_extracted_from_path".enc
else
    # the file has the .txt extension
    output_filename="$input_filepath/$filename_without_text_extension.txt.enc"
fi

[ -f "$output_filename" ] \
&& print_error_and_exit "Destination file exists." 

if ! openssl  aes-256-cbc -salt -a -e -in "$input_filename" -out "$output_filename" 2> /dev/null
then
    [ -f "$output_filename" ] && rm "$output_filename"

    print_error_and_exit "Encryption failed." 
else
    echo "${bold_yellow}Encryption successful.${nocolor}"

    exit 0
fi