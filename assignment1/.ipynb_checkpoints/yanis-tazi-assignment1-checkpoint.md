## Chapter 1 Assignment

### Markdown
This is a markdown document (`.md`), a simple and easy-to-use markup language you can use to format most documents. You will be guided on how to use markdown while answering the prompts in this assignment, and you will find markdown especially useful for documenting your work in the future assignments (especially in Python or R). For now, use the `VSCode` editor (see course SetUp guide) to modify and complete the assignment, `VSCode` supports markdown files out of the box, and you can [preview](https://code.visualstudio.com/docs/languages/markdown#_markdown-preview) your markdown code with the rendered text side by side.

You will modify this file with your answers and submit your assignment in an email to `xix2007@med.cornell.edu`. The file should be saved as `{first}-{last}-assignment{#}.md`, and your email should be titled `datascibasics assignment {#}`.

### Assignment:
Follow chapter 1's [exercise module](https://axiezai.github.io/wcm_datasci_basics_01shell/05-assignment/) steps and answer the following questions:

#### Q1:Explain in your own words, what the `datascibasics` script file you've created does when executed. Enter your answer in the markdown quoted block here:


First, let's show the steps to get to datascibasics script :

## -Step 1 : <img src="shell.png">

## -Step 2 : Create directory spring 2021 <img src="directory.png">

## -Step 3: man touch

## -Step 4-5 : write datascibasics file line by line <img src="write_datascibasics.png">

#### The first line : #!/bin/sh  is to specify that the script should always be run with bash. The second line is a command to output the head HTTP response of the website. 


#### Q2: According to the output error message and permissions you listed in step 6, why doesn't your `datascibasics` script work?

## -Step 6 : <img src="permission_denied.png">

## Investigate permission denied : <img src="investigation.png">

#### It makes sense to receive an error message because we do not have the x permission meaning execute .

#### Q3: When you ran the same script with `sh` in step 7, why did this work?

## -Step 7 : <img src="run_with_sh.png">

#### It works because we only need read permissions and it will ignore the #!/bin/sh line .

#### Q4a: In steps 8 and 9, what permission combination did you change your `datascibasics` file to? Copy and paste the `chmod` command you used, and show the permissions of your file in the code block here:

## man chmod

## Step 8-9 : <img src="change_permissions.png">

#### Now we have the execute permission under x.

#### Q4b: what is the lowest numeric value your file permissions can have for the code to execute? What about the highest? Why do you think you should avoid giving the highest permissions to a script file (think on a shared machine, like a shared lab computer)?
0   =   no permissions
 1   =   execute only
 2   =   write only
 3   =   write and execute (1+2)
 4   =   read only
 5   =   read and execute (4+1)
 6   =   read and write (4+2)
 7   =   read and write and execute (4+2+1)

#### So basically, we need to do : chmod 500 ./datascibasics in order to have the permission to READ AND EXECUTE which is the minimum required to be able to run the script (500 because 4+1=5 meaning read and execute).

#### When I use chmod 100 ./datascibasics I get permission denied because I do not have read access (1=execute only).

#### So to recap for 4b, the lowest numeric value is 500 and the maximal is 777 . Avoid giving the highest permission because we do not want other users to be able to modify and after execute the script.

#### Q5: Use `man` again to check out what the `cat` program does, and use it to view your `last-modified.txt` file from the last step. When is the last time our course website was modified?

## man cat

## Step 10 : <img src="last-modified.png">

#### It was modified the last time on Thursday.

### Q6a: The `history` program lists your command line history When you simply enter `history` into your terminal. The filtering options are different for `bash` and `zsh`. For `bash`, `history 20` will display the last 20 commands used in your `bash` history, whereas `history 1 20` in `zsh` displays the first 20 entries of your `zsh` history (You can use `history -20 -1` to display the last 20 commands). Use `history` to do the following:

## History 20 : <img src="history20.png">

## History datascibasics : <img src="history_datasci.png">

### Q6b:The history program also lists a line number with each command recorded in your history. Select the line number from the history you displayed in `Q6a` that executes your shell script, enter an `!` in your terminal followed by the line number (`!52` if your line number was 52), what happens? 

## !555:   <img src="repeat_command.png"> 

#### It repeats the specific command executed on that line


#### Now, what if you wanted to recall and execute a command relative to our current position? For example, if our `./datascibasics` execution was 5 commands ago, how do we use `!` to use relative line numbers instead of absolute line numbers (hint: see the `zsh` instructions from part a)?

## !-5:   <img src="5_commands_ago.png"> 
