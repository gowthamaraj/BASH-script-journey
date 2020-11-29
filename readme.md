# BASH

<hr/>

## Simple Commands

 - Simple Commands : 
 
[ var=value ... ] name [ arg ... ] [ redirection ... ]

 - Pipelines : 
 
[time [-p]] [ ! ] command [ [|||&] command2 ... ]

 - Compound Commands :
 
if list [ ;|<newline> ] then list [ ;|<newline> ] fi
    { list ; }

 - Coprocesses : 
 
coproc [ name ] command [ redirection ... ]

 - Functions : 
 
name () compound-command [ redirection ]

 - PATH=/bin:/sbin:/usr/bin:/usr/sbin : 

 - File redirection : 
 
[x]>file, [x]<file

 - File descriptor copying :
 
[x]>&y, [x]<&y

 - Redirecting standard output and standard error : 
&>file

-----------------------------------------------------------------

### Pathname Expansion
1. ls 0?' '*.ogg
2. ls [0-9]*
3. ls [[:digit:]][[:digit:]]*
It is also important to understand that these globs will never jump into subdirectories. They only match against file names in their own directory. If we want a glob to go looking at the pathnames in a different directory, we need to explicitly tell it with a literal pathname:
4. ls ~/*/hello.txt

### Tilde Expansion
echo 'I live in: ' ~

### Command Substitution
With Command Substitution, we effectively write a command within a command, and we ask bash to expand the inner command into its output and use that output as argument data for the main command.

#### The backtick variant has some very important downsides:

 - The backtick syntax looks a lot like quoting. This has caused widespread confusion among users. Even to the trained eye, it is sometimes hard to not forget that backtick expansions still need double-quotes around them to be safe, just like all other value expansions.
 
 - The backtick syntax is inconsistent with value expansions. The beauty of $(...) is that is clearly communicates that we are expanding a value into place here, just like all other dollar-style value expansions do. This clarity is absent with the backtick syntax.
 
 - The backtick syntax turns quoting and nesting into an exercise in absurdity. It requires a maze of backslash-escaping which makes it almost impossible to parse and nearly guarantees that you will make mistakes: echo "`echo \"\`echo \\"hello\\"\`\"`" vs. echo "$(echo "$(echo "hello")")"
 
### What are bash parameters?
Simply put, bash parameters are regions in memory where you can temporarily store some information for later use.

Bash provides a few different types of parameters: positional parameters, special parameters and shell variables.

name=lhunath
item='    4. Milk'
contents="$(cat hello.txt)"

### Parameter Expansion
Parameter Expansion effectively takes the data out of your parameter and inlines it into the data of your command. As we saw briefly before, we expand parameters by prefixing their name with a $ symbol.

name=Britta time=23.73
echo "$name's current record is ${time}s."

echo "$name's current record is ${time%.*} seconds and ${time#*.} hundredths."
echo "PATH currently contains: ${PATH//:/, }"
 
 - "${url#*/}"
 - "${url##*/}"
 - "${url%/*}"
 - "${url%%/*}"
 - "${url/./-}"
 - "${url//./-}"
 - "${url/#*:/http:}"
 - "${url/%.html/.jpg}"
 - "${#url}"
 - "${url:7}"
 - "${url^^[ht]}"
 
Remove the shortest string that matches the pattern if it's at the start of the value.

Remove the longest string that matches the pattern if it's at the start of the value.

Remove the shortest string that matches the pattern if it's at the end of the value.

Remove the longest string that matches the pattern if it's at the end of the value.

Replace the first string that matches the pattern with the replacement.

Replace each string that matches the pattern with the replacement.

Replace the string that matches the pattern at the beginning of the value with the replacement.

Replace the string that matches the pattern at the end of the value with the replacement.
Expand the length of the value (in bytes).

Expand a part of the value, starting at start, length bytes long. You can even count start from the end rather than the beginning by using a (space followed by a) negative value.

Expand the transformed value, either upper-casing or lower-casing the first or all characters that match the pattern. You can omit the pattern to match any character.

### Shell Initialization
When you start an interactive bash session, bash will prepare itself for usage by reading a few initialization commands from different files on your system. You can use these files to tell bash how to behave. One in particular is intended to give you the opportunity to export variables into the environment. The file is called .bash_profile and it lives in your home directory. There's a good chance that you don't have this file yet; if this is the case, you can just create the file and bash will find it the next time it goes looking for it.

At the very end of your ~/.bash_profile, you should have the command source ~/.bashrc. That's because when .bash_profile exists, bash behaves a little curious in that it stops looking for its standard shell initialization file ~/.bashrc. The source command remedies this oddity.

Note that if there is no ~/.bash_profile file, bash will try to read from ~/.profile instead, if it exists. The latter is a generic shell profile configuration file, which is also read by other shells. You can opt to put your environment configuration there instead, but if you do, you need to be aware that you should limit yourself to POSIX sh syntax and not use any bash-specific shell syntax in the file. POSIX sh syntax is similar to bash but it is beyond the scope of this guide.

### Special Parameters
$0
$@
$#
$-
$$
$!




