#  Part 1: Set-up your shell

# Dotfiles

# 1. Folder creation :

# 2. Add a configuration for at least one program, e.g. your shell, with some customization (to start off, it can be something as simple as customizing your shell prompt by setting $PS1).

```bash
 I decided to change the color to yellow using this command : export PS1="\e[1;33m[\u@\h \W]\$ \e[m "
```




# Aliases 
```bash
alias dc='cd'
```
# Question 1:
```bash
 history | awk '{$1="";print substr($0,2)}' : This returns the history without the first string (which correspond to history number) and supress space between first and second string so it starts with second string .

 history | awk '{$1="";print substr($0,2)}' | sort : Adding sort will sort the history by alphabetical order .

 history | awk '{$1="";print substr($0,2)}' | sort | uniq -c : It will remove duplicates and add at the beginning occurence for each command of the history

 history | awk '{$1="";print substr($0,2)}' | sort | uniq -c | sort -n : It will sort them by occurence (smallest to the highest)

 history | awk '{$1="";print substr($0,2)}' | sort | uniq -c | sort -n | tail -n 10 : It will only output the 10 history commands with the highest occurence .

 To sum up : It returns the 10 most frequent history commands .
```


# Question 2:

```bash
cd dotfiles_folder
tree -a
```

Output :
```bash
├── .bash_history
├── .bash_profile
├── .bash_profile-anaconda3.bak
├── .bash_sessions
│   ├── 0429AA4F-6C46-4C84-B4F5-F1F1A7C2CD3B.history
│   ├── 0429AA4F-6C46-4C84-B4F5-F1F1A7C2CD3B.historynew
│   ├── 0429AA4F-6C46-4C84-B4F5-F1F1A7C2CD3B.session
│   ├── 0A600225-D42E-4B11-A018-7C306B50B05D.historynew
│   ├── 26A0FF75-4CD3-48C7-8234-75E34CF67D3E.history
│   ├── 26A0FF75-4CD3-48C7-8234-75E34CF67D3E.historynew
│   ├── 26A0FF75-4CD3-48C7-8234-75E34CF67D3E.session
│   ├── 340AA8A6-56D9-4BD7-A950-205AB8D56E89.history
│   ├── 340AA8A6-56D9-4BD7-A950-205AB8D56E89.historynew
│   ├── 340AA8A6-56D9-4BD7-A950-205AB8D56E89.session
│   ├── 385699DA-12B6-4766-BD85-094CB2929212.historynew
│   ├── 39D86AE2-A8B2-4609-87D5-533D222F4DC5.history
│   ├── 39D86AE2-A8B2-4609-87D5-533D222F4DC5.historynew
│   ├── 39D86AE2-A8B2-4609-87D5-533D222F4DC5.session
│   ├── 3DFCB731-915A-46AD-919C-097B58B54DDD.historynew
│   ├── 5B4D9EB7-105B-47C5-8B79-8553B349D9FC.historynew
│   ├── 5BD6903D-2485-4D90-8377-30F322FFFDCF.history
│   ├── 5BD6903D-2485-4D90-8377-30F322FFFDCF.historynew
│   ├── 5BD6903D-2485-4D90-8377-30F322FFFDCF.session
│   ├── 7BAAC2AB-8EE1-440F-B72D-EC990A1D87F2.history
│   ├── 7BAAC2AB-8EE1-440F-B72D-EC990A1D87F2.historynew
│   ├── 7BAAC2AB-8EE1-440F-B72D-EC990A1D87F2.session
│   ├── 7E0708E4-3742-4982-95AE-49FB5E623B51.historynew
│   ├── 80BF77FF-5730-4D01-8F70-0DF8DDC19992.history
│   ├── 80BF77FF-5730-4D01-8F70-0DF8DDC19992.historynew
│   ├── 80BF77FF-5730-4D01-8F70-0DF8DDC19992.session
│   ├── 82D9EBE8-7F5C-4E00-9A02-EE73E6D8B236.historynew
│   ├── 82D9EBE8-7F5C-4E00-9A02-EE73E6D8B236.session
│   ├── 86E0AB9A-E306-4421-841D-8B88212D9988.history
│   ├── 86E0AB9A-E306-4421-841D-8B88212D9988.historynew
│   ├── 8BB73209-B90D-4C91-98AB-344976ACC898.historynew
│   ├── 8D289E0E-D5EE-4C53-93FF-B7527BE28F0E.history
│   ├── 8D289E0E-D5EE-4C53-93FF-B7527BE28F0E.historynew
│   ├── 8D289E0E-D5EE-4C53-93FF-B7527BE28F0E.session
│   ├── 96780FFE-9C14-46F7-85DD-AA44E89AC34A.historynew
│   ├── 9F449E94-813A-4A77-920A-1A910BCBCAA0.history
│   ├── 9F449E94-813A-4A77-920A-1A910BCBCAA0.historynew
│   ├── 9F449E94-813A-4A77-920A-1A910BCBCAA0.session
│   ├── B325C200-7E14-4D92-9A44-A84E7630770D.history
│   ├── B325C200-7E14-4D92-9A44-A84E7630770D.historynew
│   ├── B325C200-7E14-4D92-9A44-A84E7630770D.session
│   ├── DDE9AE9C-9334-4A0E-949D-EA064A1C449E.historynew
│   ├── DE78C91C-C1AD-4977-8BAC-A75D9904AE4C.historynew
│   ├── DEE811A1-E9E2-419B-A82B-5D6A5D54D554.historynew
│   ├── E17A7BF7-CFFF-475F-8623-4C5CF35305B2.history
│   ├── E17A7BF7-CFFF-475F-8623-4C5CF35305B2.historynew
│   ├── E17A7BF7-CFFF-475F-8623-4C5CF35305B2.session
│   ├── E5087579-5CEE-4FAF-AFB3-F12C6F0F6322.history
│   ├── E5087579-5CEE-4FAF-AFB3-F12C6F0F6322.historynew
│   ├── E5087579-5CEE-4FAF-AFB3-F12C6F0F6322.session
│   ├── EB3AA4D3-0D7E-4B79-864B-89A610842D8D.history
│   ├── EB3AA4D3-0D7E-4B79-864B-89A610842D8D.historynew
│   ├── EB3AA4D3-0D7E-4B79-864B-89A610842D8D.session
│   ├── EC128886-4981-46D2-B3FF-59AD3AEB5382.history
│   ├── EC128886-4981-46D2-B3FF-59AD3AEB5382.historynew
│   ├── EC128886-4981-46D2-B3FF-59AD3AEB5382.session
│   ├── FB8C168B-1691-4A3E-AD0E-A86B5387E617.history
│   ├── FB8C168B-1691-4A3E-AD0E-A86B5387E617.historynew
│   ├── FB8C168B-1691-4A3E-AD0E-A86B5387E617.session
│   └── _expiration_check_timestamp
└── .bashrc
```

# Question 3:

```bash
(base) lski2678:dotfiles_folder taziy$ ls -a
.				.CFUserTextEncoding		.Trash				.bash_profile			.bash_sessions
..				.DS_Store			.bash_history			.bash_profile-anaconda3.bak	.bashrc
```


# Part 2: Tools and Scripting
```bash
ls -lahtG : This is the command that will write list files in the manner it was asked for.
```

# Question 4 : 

## Marco :
```bash
#!/bin/sh
lastused=$(pwd)
```

## Polo :

```bash
source macro.sh 
function polo () { cd $lastused; }
```


# Question 5 : 

```bash
#!/usr/bin/env bash
runs=0
while true;
do
 ./script_test.sh &> output
 if [[ "$?" -ne 0 ]]; then
 break
 fi
 runs=$[runs+1]
done
echo "how many runs it took for the script to fail: $runs"
cat output
```

```bash
# The standard output stream:
Everything went according to plan
```

```bash
# The output error stream (with BONUS) :
how many runs it took for the script to fail: 85
Something went wrong
The error was using magic numbers
```


# Part 3: Job Control


## Question 6:
```bash
pgrep sleep
pkill sleep
```
This is nice because we can kill a job by searching for the pattern instead of typing the job id .
## Question 7:
```bash
wait {job_id} && sleep 60
```
## Question 8:
```bash


#!/usr/bin/env bash

function pidwait(){

    while kill -0 "$1"; do
        sleep 5
    done
}


pidwait {job_id}
```
