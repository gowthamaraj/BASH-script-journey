# BASH

<hr/>

 - Simple Commands
[ var=value ... ] name [ arg ... ] [ redirection ... ]

 - Pipelines
[time [-p]] [ ! ] command [ [|||&] command2 ... ]

 - Compound Commands
if list [ ;|<newline> ] then list [ ;|<newline> ] fi
    { list ; }

 - Coprocesses
coproc [ name ] command [ redirection ... ]

 - Functions
name () compound-command [ redirection ]

 - PATH=/bin:/sbin:/usr/bin:/usr/sbin

 - File redirection
[x]>file, [x]<file

 - File descriptor copying
[x]>&y, [x]<&y

 - Redirecting standard output and standard error
&>file


