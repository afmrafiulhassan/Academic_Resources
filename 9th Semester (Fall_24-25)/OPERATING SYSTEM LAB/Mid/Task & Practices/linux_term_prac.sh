~$ date
Wed Oct 30 08:49:00 UTC 2024
~$ cal -y
                            2024
      January               February               March          
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  
    1  2  3  4  5  6               1  2  3                  1  2  
 7  8  9 10 11 12 13   4  5  6  7  8  9 10   3  4  5  6  7  8  9  
14 15 16 17 18 19 20  11 12 13 14 15 16 17  10 11 12 13 14 15 16  
21 22 23 24 25 26 27  18 19 20 21 22 23 24  17 18 19 20 21 22 23  
28 29 30 31           25 26 27 28 29        24 25 26 27 28 29 30  
                                            31                    

       April                  May                   June          
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  
    1  2  3  4  5  6            1  2  3  4                     1  
 7  8  9 10 11 12 13   5  6  7  8  9 10 11   2  3  4  5  6  7  8  
14 15 16 17 18 19 20  12 13 14 15 16 17 18   9 10 11 12 13 14 15  
21 22 23 24 25 26 27  19 20 21 22 23 24 25  16 17 18 19 20 21 22  
28 29 30              26 27 28 29 30 31     23 24 25 26 27 28 29  
                                            30                    

        July                 August              September        
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  
    1  2  3  4  5  6               1  2  3   1  2  3  4  5  6  7  
 7  8  9 10 11 12 13   4  5  6  7  8  9 10   8  9 10 11 12 13 14  
14 15 16 17 18 19 20  11 12 13 14 15 16 17  15 16 17 18 19 20 21  
21 22 23 24 25 26 27  18 19 20 21 22 23 24  22 23 24 25 26 27 28  
28 29 30 31           25 26 27 28 29 30 31  29 30                 
                                                                  

      October               November              December        
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  
       1  2  3  4  5                  1  2   1  2  3  4  5  6  7  
 6  7  8  9 10 11 12   3  4  5  6  7  8  9   8  9 10 11 12 13 14  
13 14 15 16 17 18 19  10 11 12 13 14 15 16  15 16 17 18 19 20 21  
20 21 22 23 24 25 26  17 18 19 20 21 22 23  22 23 24 25 26 27 28  
27 28 29 30 31        24 25 26 27 28 29 30  29 30 31              
                                                                  
~$ help.man
bash: help.man: command not found
~$ help man
bash: help: no help topics match `man'.  Try `help help' or `man -k man' or `info man'.
~$ help
GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu)
These shell commands are defined internally.  Type `help' to see this list.
Type `help name' to find out more about the function `name'.
Use `info bash' to find out more about the shell in general.
Use `man -k' or `info' to find out more about commands not in this list.

A star (*) next to a name means that the command is disabled.

 job_spec [&]                                                                                                         history [-c] [-d offset] [n] or history -anrw [filename] or history -ps arg [arg...]
 (( expression ))                                                                                                     if COMMANDS; then COMMANDS; [ elif COMMANDS; then COMMANDS; ]... [ else COMMANDS; ] fi
 . filename [arguments]                                                                                               jobs [-lnprs] [jobspec ...] or jobs -x command [args]
 :                                                                                                                    kill [-s sigspec | -n signum | -sigspec] pid | jobspec ... or kill -l [sigspec]
 [ arg... ]                                                                                                           let arg [arg ...]
 [[ expression ]]                                                                                                     local [option] name[=value] ...
 alias [-p] [name[=value] ... ]                                                                                       logout [n]
 bg [job_spec ...]                                                                                                    mapfile [-d delim] [-n count] [-O origin] [-s count] [-t] [-u fd] [-C callback] [-c quantum] [array]
 bind [-lpsvPSVX] [-m keymap] [-f filename] [-q name] [-u name] [-r keyseq] [-x keyseq:shell-command] [keyseq:readl>  popd [-n] [+N | -N]
 break [n]                                                                                                            printf [-v var] format [arguments]
 builtin [shell-builtin [arg ...]]                                                                                    pushd [-n] [+N | -N | dir]
 caller [expr]                                                                                                        pwd [-LP]
 case WORD in [PATTERN [| PATTERN]...) COMMANDS ;;]... esac                                                           read [-ers] [-a array] [-d delim] [-i text] [-n nchars] [-N nchars] [-p prompt] [-t timeout] [-u fd] [name ...]
 cd [-L|[-P [-e]] [-@]] [dir]                                                                                         readarray [-d delim] [-n count] [-O origin] [-s count] [-t] [-u fd] [-C callback] [-c quantum] [array]
 command [-pVv] command [arg ...]                                                                                     readonly [-aAf] [name[=value] ...] or readonly -p
 compgen [-abcdefgjksuv] [-o option] [-A action] [-G globpat] [-W wordlist] [-F function] [-C command] [-X filterpa>  return [n]
 complete [-abcdefgjksuv] [-pr] [-DEI] [-o option] [-A action] [-G globpat] [-W wordlist] [-F function] [-C command>  select NAME [in WORDS ... ;] do COMMANDS; done
 compopt [-o|+o option] [-DEI] [name ...]                                                                             set [-abefhkmnptuvxBCHP] [-o option-name] [--] [arg ...]
 continue [n]                                                                                                         shift [n]
 coproc [NAME] command [redirections]                                                                                 shopt [-pqsu] [-o] [optname ...]
 declare [-aAfFgiIlnrtux] [-p] [name[=value] ...]                                                                     source filename [arguments]
 dirs [-clpv] [+N] [-N]                                                                                               suspend [-f]
 disown [-h] [-ar] [jobspec ... | pid ...]                                                                            test [expr]
 echo [-neE] [arg ...]                                                                                                time [-p] pipeline
 enable [-a] [-dnps] [-f filename] [name ...]                                                                         times
 eval [arg ...]                                                                                                       trap [-lp] [[arg] signal_spec ...]
 exec [-cl] [-a name] [command [argument ...]] [redirection ...]                                                      true
 exit [n]                                                                                                             type [-afptP] name [name ...]
 export [-fn] [name[=value] ...] or export -p                                                                         typeset [-aAfFgiIlnrtux] [-p] name[=value] ...
 false                                                                                                                ulimit [-SHabcdefiklmnpqrstuvxPT] [limit]
 fc [-e ename] [-lnr] [first] [last] or fc -s [pat=rep] [command]                                                     umask [-p] [-S] [mode]
 fg [job_spec]                                                                                                        unalias [-a] name [name ...]
 for NAME [in WORDS ... ] ; do COMMANDS; done                                                                         unset [-f] [-v] [-n] [name ...]
 for (( exp1; exp2; exp3 )); do COMMANDS; done                                                                        until COMMANDS; do COMMANDS; done
 function name { COMMANDS ; } or name () { COMMANDS ; }                                                               variables - Names and meanings of some shell variables
 getopts optstring name [arg ...]                                                                                     wait [-fn] [-p var] [id ...]
 hash [-lr] [-p pathname] [-dt] [name ...]                                                                            while COMMANDS; do COMMANDS; done
 help [-dms] [pattern ...]                                                                                            { COMMANDS ; }
~$ uname -r
5.15.0-1046-gcp
~$ pwd
/home/user
~$ ls
terminal.term
~$ dir
terminal.term
~$ mkdir Rafi
~$ ls
Rafi  terminal.term
~$ ls -l
total 1
drwxr-xr-x 2 user user 2 Oct 30 08:52 Rafi
-rw-r--r-- 1 user user 0 Oct 30 08:41 terminal.term
~$ ls la
ls: cannot access 'la': No such file or directory
~$ ls -la
total 24
drwxr-xr-x 5 user user    15 Oct 30 08:52 .
drwxr-xr-x 1 root root  4096 Oct 30 07:56 ..
-rw------- 1 user user   139 Oct 30 08:55 .bash_history
lrwxrwxrwx 1 user user    18 Oct 30 07:56 .bash_profile -> /home/user/.bashrc
-rw-r--r-- 1 user user  2355 Oct 30 07:56 .bashrc
-rw-r--r-- 1 user user     0 Oct 30 08:41 .compute-server.syncdb
-rw-r--r-- 1 user user  8192 Oct 30 07:56 .jupyter-blobs-v0.db
-rw------- 1 user user    20 Oct 30 08:47 .lesshst
lrwxrwxrwx 1 user user    12 Oct 30 07:56 .smc -> /tmp/.cocalc
dr-xr-xr-x 4 user user     2 Oct 30 08:52 .snapshots
drwxr-xr-x 2 user user     3 Oct 30 07:56 .ssh
-rw-r--r-- 1 user user 37144 Oct 30 08:55 .terminal.term-0.term
-rw-r--r-- 1 user user    48 Oct 30 08:40 .trermin.term-0.term
drwxr-xr-x 2 user user     2 Oct 30 08:52 Rafi
-rw-r--r-- 1 user user     0 Oct 30 08:41 terminal.term
~$ pwd
/home/user
~$ 
~$ cd Rafi
~/Rafi$ pwd
/home/user/Rafi
~/Rafi$ touch a.txt
~/Rafi$ ls -la
total 3
drwxr-xr-x 2 user user  3 Oct 30 08:57 .
drwxr-xr-x 5 user user 15 Oct 30 08:52 ..
-rw-r--r-- 1 user user  0 Oct 30 08:57 a.txt
~/Rafi$ echo Dima > a.txt
~/Rafi$ cat a.txt
Dima
~/Rafi$ man ls
~/Rafi$ 
~/Rafi$ cd ..
~$ dir
Rafi  terminal.term
~$ ls *.txt
ls: cannot access '*.txt': No such file or directory
~$ cd Rafo
bash: cd: Rafo: No such file or directory
~$ cd Rafi
~/Rafi$ ls *a.txt
a.txt
~/Rafi$ echo Dima1 > b.txt
~/Rafi$ echo ima2 > c.txt
~/Rafi$ ls *a.txt
a.txt
~/Rafi$ ls *.txt
a.txt  b.txt  c.txt
~/Rafi$ ls >> info.txt
~/Rafi$ cat info.txt
a.txt
b.txt
c.txt
info.txt
~/Rafi$ cat > info2.txt


shagdhsa
xhfgsa
^C
~/Rafi$ ls
a.txt  b.txt  c.txt  info.txt  info2.txt
~/Rafi$ ls >> info3.txt
~/Rafi$  cat info
info.txt   info2.txt  info3.txt  
~/Rafi$  cat info
info.txt   info2.txt  info3.txt  
~/Rafi$ cat info3.txt 
a.txt
b.txt
c.txt
info.txt
info2.txt
info3.txt
~/Rafi$ cal > info5.txt
~/Rafi$ cat info5.txt
    October 2024      
Su Mo Tu We Th Fr Sa  
       1  2  3  4  5  
 6  7  8  9 10 11 12  
13 14 15 16 17 18 19  
20 21 22 23 24 25 26  
27 28 29 30 31        
                      
~/Rafi$ history
    1  date
    2  cal -y
    3  help.man
    4  help man
    5* 
    6  help
    7  uname -r
    8  clear
    9  date
   10  cal -y
   11  help.man
   12  help man
   13  help
   14  uname -r
   15  pwd
   16  ls
   17  dir
   18  mkdir Rafi
   19  ls
   20  ls -l
   21  ls la
   22  ls -la
   23  pwd
   24  cd Rafi
   25  pwd
   26  touch a.txt
   27  ls -la
   28  echo Dima > a.txt
   29  cat a.txt
   30  man ls
   31  cd ..
   32  dir
   33  ls *.txt
   34  cd Rafo
   35  cd Rafi
   36  ls *a.txt
   37  echo Dima1 > b.txt
   38  echo ima2 > c.txt
   39  ls *a.txt
   40  ls *.txt
   41  ls >> info.txt
   42  cat info.txt
   43  cat > info2.txt
   44  ls
   45  ls >> info3.txt
   46  cat info3.txt 
   47  cal > info5.txt
   48  cat info5.txt
   49  history
   ~$ Rafiul