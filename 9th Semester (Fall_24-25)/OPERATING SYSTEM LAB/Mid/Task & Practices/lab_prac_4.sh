~$ man
What manual page do you want?
For example, try 'man man'.
~$ man cat

[1]+  Stopped                 env LESS_TERMCAP_mb=$(printf "\e[1;31m") LESS_TERMCAP_md=$(printf "\e[1;31m") LESS_TERMCAP_me=$(printf "\e[0m") LESS_TERMCAP_se=$(printf "\e[0m") LESS_TERMCAP_so=$(printf "\e[1;44;33m") LESS_TERMCAP_ue=$(printf "\e[0m") LESS_TERMCAP_us=$(printf "\e[1;32m") man "$@"
~$ cd -help
bash: cd: -h: invalid option
cd: usage: cd [-L|[-P [-e]] [-@]] [dir]
~$ pwd
/home/user
~$ dir
2024-11-01-terminal-1.sh    Folder1  Lab_prac_4.term  Rafiul  a2.txt  combined.txt      dt1  lab_prac_3.term  lab_task_2.term  lab_task_3.term     newtext.txt     terminal.term
2024-11-01-terminal-1.term  Folder2  Rafi             a1.txt  a3.txt  combinedtext.txt  dt3  lab_task_2.sh    lab_task_3.sh    linux_term_prac.sh  terminal.ipynb
~$ cat a2.txt
~$ cat a3.txt
~$ cat a1.txt
~$ 
~$ 
~$ 
~$ 
~$ 
~$ 
~$ 
~$ 
~$ 
~$ 
~$ cat newtext.txt
~$ cat Rafiul
cat: Rafiul: Is a directory
~$ echo GooD > a1.txt
~$ echo Bangladesh >> a1.txt
~$ echo In562534 >> a1.txt
~$ echo "World, Hello" >> a1.txt
~$ echo "Sho hanSHO Han" >> a1.txt
~$ cat a1.txt
GooD
Bangladesh
In562534
World, Hello
Sho hanSHO Han
~$ wc a1.txt
 5  8 53 a1.txt
~$ wc -c a1.txt
53 a1.txt
~$ wc -l a1.txt
5 a1.txt
~$ nl a.txt
nl: a.txt: No such file or directory
~$ nl a1.txt
     1  GooD
     2  Bangladesh
     3  In562534
     4  World, Hello
     5  Sho hanSHO Han
~$ wc -w a.txt
wc: a.txt: No such file or directory
~$ wc -w a1.txt
8 a1.txt
~$ nl a1.txt
     1  GooD
     2  Bangladesh
     3  In562534
     4  World, Hello
     5  Sho hanSHO Han
~$ nl -i2 a1.txt
     1  GooD
     3  Bangladesh
     5  In562534
     7  World, Hello
     9  Sho hanSHO Han
~$ sort a1.txt
Bangladesh
GooD
In562534
Sho hanSHO Han
World, Hello
~$ sort -r a1.txt
World, Hello
Sho hanSHO Han
In562534
GooD
Bangladesh
~$ echo "World, Hello" >> a1.txt
~$ cat a1.txt
GooD
Bangladesh
In562534
World, Hello
Sho hanSHO Han
World, Hello
~$ sort -u a1.txt
Bangladesh
GooD
In562534
Sho hanSHO Han
World, Hello
~$ echo "world, hello" >> a1.txt
~$ echo bangladesh >> a1.txt
~$ echo dhaka,bangladesh >> a1.txt
~$ echo dhaka, bangladesh >> a1.txt
~$ echo Dhaka, Bangladesh >> a1.txt
~$ echo Dhaka, h >> a1.txt
~$ echo Dhaka,,,, >> a1.txt
~$ echo Dhaka, DHK  >> a1.txt
~$ cat a1.txt
GooD
Bangladesh
In562534
World, Hello
Sho hanSHO Han
World, Hello
world, hello
bangladesh
dhaka,bangladesh
dhaka, bangladesh
Dhaka, Bangladesh
Dhaka, h
Dhaka,,,,
Dhaka, DHK
~$ sort -k 1 a1.txt
Bangladesh
Dhaka, Bangladesh
Dhaka, DHK
Dhaka, h
Dhaka,,,,
GooD
In562534
Sho hanSHO Han
World, Hello
World, Hello
bangladesh
dhaka, bangladesh
dhaka,bangladesh
world, hello
~$ sort -k 2 a1.txt
Bangladesh
Dhaka,,,,
GooD
In562534
bangladesh
dhaka,bangladesh
Dhaka, Bangladesh
Dhaka, DHK
World, Hello
World, Hello
dhaka, bangladesh
Dhaka, h
Sho hanSHO Han
world, hello
~$ sort -k 4.2 a1.txt
Bangladesh
Dhaka, Bangladesh
Dhaka, DHK
Dhaka, h
Dhaka,,,,
GooD
In562534
Sho hanSHO Han
World, Hello
World, Hello
bangladesh
dhaka, bangladesh
dhaka,bangladesh
world, hello
~$ sort -k 2.3 a1.txt
Bangladesh
Dhaka, h
Dhaka,,,,
GooD
In562534
bangladesh
dhaka,bangladesh
Dhaka, DHK
Sho hanSHO Han
Dhaka, Bangladesh
dhaka, bangladesh
World, Hello
World, Hello
world, hello
~$ head a1.txt
GooD
Bangladesh
In562534
World, Hello
Sho hanSHO Han
World, Hello
world, hello
bangladesh
dhaka,bangladesh
dhaka, bangladesh
~$ tail a1.txt
Sho hanSHO Han
World, Hello
world, hello
bangladesh
dhaka,bangladesh
dhaka, bangladesh
Dhaka, Bangladesh
Dhaka, h
Dhaka,,,,
Dhaka, DHK
~$ head -6c a1.txt
GooD
B~$ head -3c a1.txt
~$ head -s
head: invalid option -- 's'
Try 'head --help' for more information.
~$ head -5 a1.txt
GooD
Bangladesh
In562534
World, Hello
Sho hanSHO Han
~$ head -5 a1.txt a3.txt
==> a1.txt <==
GooD
Bangladesh
In562534
World, Hello
Sho hanSHO Han

==> a3.txt <==
~$ cut -d, -f 1,3 a1.txt
GooD
Bangladesh
In562534
World
Sho hanSHO Han
World
world
bangladesh
dhaka
dhaka
Dhaka
Dhaka
Dhaka,
Dhaka
~$ cut -d, -f 1,2 a1.txt
GooD
Bangladesh
In562534
World, Hello
Sho hanSHO Han
World, Hello
world, hello
bangladesh
dhaka,bangladesh
dhaka, bangladesh
Dhaka, Bangladesh
Dhaka, h
Dhaka,
Dhaka, DHK
~$ cut -d, -f 1,3 a1.txt
GooD
Bangladesh
In562534
World
Sho hanSHO Han
World
world
bangladesh
dhaka
dhaka
Dhaka
Dhaka
Dhaka,
Dhaka
~$ cut -c 1-4 a1.txt
GooD
Bang
In56
Worl
Sho 
Worl
worl
bang
dhak
dhak
Dhak
Dhak
Dhak
Dhak
~$ cut -c 4- a1.txt
D
gladesh
62534
ld, Hello
 hanSHO Han
ld, Hello
ld, hello
gladesh
ka,bangladesh
ka, bangladesh
ka, Bangladesh
ka, h
ka,,,,
ka, DHK
~$ a1.txt
bash: a1.txt: command not found
~$ echo Apple > a3.txt
~$ echo Mango >> a3.txt
~$ echo Orange >> a3.txt
~$ echo Lichi >> a3.txt
~$ echo Pineappple >> a3.txt
~$ echo Jackfruit >> a3.txt
~$ echo WaterMelon >> a3.txt
~$ echo Banana >> a3.txt
~$ paste a1.txt paste a3.txt
paste: paste: No such file or directory
~$ cat a3.txt
Apple
Mango
Orange
Lichi
Pineappple
Jackfruit
WaterMelon
Banana
~$ paste a1.txt a3.txt
GooD    Apple
Bangladesh      Mango
In562534        Orange
World, Hello    Lichi
Sho hanSHO Han  Pineappple
World, Hello    Jackfruit
world, hello    WaterMelon
bangladesh      Banana
dhaka,bangladesh
dhaka, bangladesh
Dhaka, Bangladesh
Dhaka, h
Dhaka,,,,
Dhaka, DHK
~$ echo Jackfruit >> a2.txt
~$ echo Pineappple >> a2.txt
~$ echo Lichi >> a2.txt
~$ echo Banana >> a2.txt
~$ echo Orange >>a2.txt
~$ echo Apple > a2.txt
~$ echo Orange >>a2.txt
~$ echo Apple > a2.txt
~$ echo Banana >> a2.txt
~$ echo Banana >> a2.txt
~$ echo Lichi >> a2.txt
~$ echo Pineappple >> a2.txt
~$ paste a1.txt a3.txt
GooD    Apple
Bangladesh      Mango
In562534        Orange
World, Hello    Lichi
Sho hanSHO Han  Pineappple
World, Hello    Jackfruit
world, hello    WaterMelon
bangladesh      Banana
dhaka,bangladesh
dhaka, bangladesh
Dhaka, Bangladesh
Dhaka, h
Dhaka,,,,
Dhaka, DHK
~$ paste a2.txt a3.txt
Apple   Apple
Banana  Mango
Banana  Orange
Lichi   Lichi
Pineappple      Pineappple
        Jackfruit
        WaterMelon
        Banana
~$ paste -d "," a2.txt a3.txt
Apple,Apple
Banana,Mango
Banana,Orange
Lichi,Lichi
Pineappple,Pineappple
,Jackfruit
,WaterMelon
,Banana
~$ grep -i "Banana" a3.txt
Banana
~$ grep "Apple" a3.txt
Apple
~$ grep "World" a1.txt
World, Hello
World, Hello
~$ grep -i "World" a1.txt
World, Hello
World, Hello
world, hello
~$ grep -c "World" a1.txt
2
~$ grep -o "World" a1.txt
World
World
~$ grep -v "World" a1.txt
GooD
Bangladesh
In562534
Sho hanSHO Han
world, hello
bangladesh
dhaka,bangladesh
dhaka, bangladesh
Dhaka, Bangladesh
Dhaka, h
Dhaka,,,,
Dhaka, DHK
~$ ls -la
total 86
drwxr-xr-x 10 user user    45 Nov 13 08:56 .
drwxr-xr-x  1 root root  4096 Nov 13 08:55 ..
-rw-r--r--  1 user user    96 Nov  4 17:58 .2024-11-01-terminal-1.term-0.term
-rw-r--r--  1 user user   254 Nov  6 08:26 .2024-11-06-file-1.term-0.term
-rw-r--r--  1 user user 77419 Nov 13 09:16 .Lab_prac_4.term-0.term
-rw-r--r--  1 user user  4718 Nov 13 08:23 .Lab_task_4.term-0.term
-rw-------  1 user user  6826 Nov 13 09:10 .bash_history
lrwxrwxrwx  1 user user    18 Oct 30 07:56 .bash_profile -> /home/user/.bashrc
-rw-r--r--  1 user user  2355 Oct 30 07:56 .bashrc
-rw-r--r--  1 user user     0 Oct 30 08:41 .compute-server.syncdb
-rw-r--r--  1 user user     0 Nov  6 10:08 .hiddenfile
-rw-r--r--  1 user user  8192 Nov 13 08:56 .jupyter-blobs-v0.db
-rw-r--r--  1 user user  9747 Nov  6 09:50 .lab_prac_3.term-0.term
-rw-r--r--  1 user user  6314 Nov  6 08:21 .lab_task_2.term-0.term
-rw-r--r--  1 user user 32881 Nov  6 10:30 .lab_task_3.term-0.term
-rw-------  1 user user    20 Nov  6 08:51 .lesshst
lrwxrwxrwx  1 user user    12 Nov 13 08:55 .smc -> /tmp/.cocalc
dr-xr-xr-x 17 user user     2 Nov 13 08:59 .snapshots
drwxr-xr-x  2 user user     4 Nov 13 08:55 .ssh
-rw-r--r--  1 user user   331 Nov  1 19:35 .terminal.ipynb.sage-jupyter2
-rw-r--r--  1 user user 73739 Nov  4 17:59 .terminal.term-0.term
-rw-r--r--  1 user user    48 Oct 30 08:40 .trermin.term-0.term
-rw-r--r--  1 user user     4 Nov  1 19:37 2024-11-01-terminal-1.sh
-rw-r--r--  1 user user     0 Nov  4 17:58 2024-11-01-terminal-1.term
drwxr-xr-x  2 user user     6 Nov  6 09:22 Folder1
drwxr-xr-x  2 user user     6 Nov  6 09:22 Folder2
-rw-r--r--  1 user user     0 Nov 13 08:56 Lab_prac_4.term
drwxr-xr-x  2 user user     9 Oct 30 09:50 Rafi
drwxr-xr-x  3 user user     8 Oct 30 10:10 Rafiul
-rw-r--r--  1 user user   173 Nov 13 08:39 a1.txt
-rw-r--r--  1 user user    37 Nov 13 09:05 a2.txt
-rw-r--r--  1 user user    64 Nov 13 09:01 a3.txt
-rw-r--r--  1 user user    44 Nov  6 10:01 combined.txt
-rw-r--r--  1 user user     0 Nov  6 09:50 combinedtext.txt
drwxr-xr-x  2 user user     3 Nov  6 09:11 dt1
drwxr-xr-x  2 user user     2 Nov  6 09:27 dt3
-rw-r--r--  1 user user     0 Nov  6 09:51 lab_prac_3.term
-rw-r--r--  1 user user  2626 Nov  4 18:04 lab_task_2.sh
-rw-r--r--  1 user user     0 Nov  6 08:21 lab_task_2.term
-rw-r--r--  1 user user  4777 Nov  6 10:31 lab_task_3.sh
-rw-r--r--  1 user user     0 Nov  6 10:31 lab_task_3.term
-rw-r--r--  1 user user 11897 Nov  4 18:02 linux_term_prac.sh
-rw-r--r--  1 user user     0 Nov  6 09:50 newtext.txt
-rw-r--r--  1 user user   261 Nov  1 19:35 terminal.ipynb
-rw-r--r--  1 user user     0 Nov  4 17:58 terminal.term
~$ 
~$ chmod 756 a1.txt
~$ ls -la
total 87
drwxr-xr-x 10 user user    45 Nov 13 08:56 .
drwxr-xr-x  1 root root  4096 Nov 13 08:55 ..
-rw-r--r--  1 user user    96 Nov  4 17:58 .2024-11-01-terminal-1.term-0.term
-rw-r--r--  1 user user   254 Nov  6 08:26 .2024-11-06-file-1.term-0.term
-rw-r--r--  1 user user 80358 Nov 13 09:29 .Lab_prac_4.term-0.term
-rw-r--r--  1 user user  4718 Nov 13 08:23 .Lab_task_4.term-0.term
-rw-------  1 user user  6850 Nov 13 09:29 .bash_history
lrwxrwxrwx  1 user user    18 Oct 30 07:56 .bash_profile -> /home/user/.bashrc
-rw-r--r--  1 user user  2355 Oct 30 07:56 .bashrc
-rw-r--r--  1 user user     0 Oct 30 08:41 .compute-server.syncdb
-rw-r--r--  1 user user     0 Nov  6 10:08 .hiddenfile
-rw-r--r--  1 user user  8192 Nov 13 08:56 .jupyter-blobs-v0.db
-rw-r--r--  1 user user  9747 Nov  6 09:50 .lab_prac_3.term-0.term
-rw-r--r--  1 user user  6314 Nov  6 08:21 .lab_task_2.term-0.term
-rw-r--r--  1 user user 32881 Nov  6 10:30 .lab_task_3.term-0.term
-rw-------  1 user user    20 Nov  6 08:51 .lesshst
lrwxrwxrwx  1 user user    12 Nov 13 08:55 .smc -> /tmp/.cocalc
dr-xr-xr-x 17 user user     2 Nov 13 08:59 .snapshots
drwxr-xr-x  2 user user     4 Nov 13 08:55 .ssh
-rw-r--r--  1 user user   331 Nov  1 19:35 .terminal.ipynb.sage-jupyter2
-rw-r--r--  1 user user 73739 Nov  4 17:59 .terminal.term-0.term
-rw-r--r--  1 user user    48 Oct 30 08:40 .trermin.term-0.term
-rw-r--r--  1 user user     4 Nov  1 19:37 2024-11-01-terminal-1.sh
-rw-r--r--  1 user user     0 Nov  4 17:58 2024-11-01-terminal-1.term
drwxr-xr-x  2 user user     6 Nov  6 09:22 Folder1
drwxr-xr-x  2 user user     6 Nov  6 09:22 Folder2
-rw-r--r--  1 user user     0 Nov 13 08:56 Lab_prac_4.term
drwxr-xr-x  2 user user     9 Oct 30 09:50 Rafi
drwxr-xr-x  3 user user     8 Oct 30 10:10 Rafiul
-rwxr-xrw-  1 user user   173 Nov 13 08:39 a1.txt
-rw-r--r--  1 user user    37 Nov 13 09:05 a2.txt
-rw-r--r--  1 user user    64 Nov 13 09:01 a3.txt
-rw-r--r--  1 user user    44 Nov  6 10:01 combined.txt
-rw-r--r--  1 user user     0 Nov  6 09:50 combinedtext.txt
drwxr-xr-x  2 user user     3 Nov  6 09:11 dt1
drwxr-xr-x  2 user user     2 Nov  6 09:27 dt3
-rw-r--r--  1 user user     0 Nov  6 09:51 lab_prac_3.term
-rw-r--r--  1 user user  2626 Nov  4 18:04 lab_task_2.sh
-rw-r--r--  1 user user     0 Nov  6 08:21 lab_task_2.term
-rw-r--r--  1 user user  4777 Nov  6 10:31 lab_task_3.sh
-rw-r--r--  1 user user     0 Nov  6 10:31 lab_task_3.term
-rw-r--r--  1 user user 11897 Nov  4 18:02 linux_term_prac.sh
-rw-r--r--  1 user user     0 Nov  6 09:50 newtext.txt
-rw-r--r--  1 user user   261 Nov  1 19:35 terminal.ipynb
-rw-r--r--  1 user user     0 Nov  4 17:58 terminal.term
~$ history
    1  date
    2  cal -y
    3  help.man
    4  help man
    5  man cal
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
   49  pwd
   50  uname -r
   51  uname -m
   52  mkdir Rafi
   53  clear
   54  pwd
   55  uname -m
   56  uname
   57  clear
   58  pwd
   59  uname
   60  mkdir Rafiul\
   61  clear
   62  pwd
   63  uname
   64  mkdir Rafiul
   65  cd Rafiul
   66  ls
   67  ls -a
   68  history
   69  touch aiub.txt
   70  touch Bangladesh > aiub.txt
   71  cat aiub.txt
   72  echo Bangladesh > aiub.txt
   73  cat aiub.txt
   74  echo Pakistan >> aiub.txt
   75  type aiub.txt
   76  cat aiub.txt
   77  touch brac.txt nsu.txt ewu.txt
   78  ls *.txt
   79  mkdir -p Zayyan/Nusaiba
   80  cd
   81  cd Rafiul
   82  cd Zayyan
   83  cd Nusaiba
   84  uname -r
   85  uname -m
   86  touch .seu.txt
   87  pwd
   88  pwd >> New.txt
   89  cat New.txt
   90  uname
   91  uname >> Log.txt
   92  cat Log.txt
   93  history
   94  cat > abc.txt
   95  cat abc.txt
   96  cat   > abc.txt
   97  cat abc.txt
   98  mkdir Folder1
   99  cd Folder1
  100  touch Hello > a1.txt
  101  cat a1.txt
  102  cls
  103  clr
  104  clear
  105  cd..
  106  cd ..
  107  del Folder1
  108  delete Folder
  109  clear
  110  dir
  111  cd Folder1
  112  clear
  113  cd ..
  114  mkdir Folder1
  115  cd Folder1
  116  touch a1.txt
  117  touch a2.txt
  118  echo Hello > a1.txt
  119  echo World > a2.txt
  120  cat a1.txt
  121  cat a2.txt
  122  cat a1.txt a2.txt > combinedtext.txt
  123  cat combined.txt
  124  cat combinedtext.txt
  125  touch a3.txt
  126  echo Apple > a3.txt
  127  cat combinedtext.txt a3.txt > newtext.txt
  128  cat newtext.txt
  129  echo NewLine >> newtext.txt
  130  cat newtext.txt
  131  cd -
  132  cd Folder1
  133  echo The USCIS Policy Manual is the agency’s centralized online repository for USCIS’ immigration policies. The USCIS Policy Manual will ultimately replace the Adjudicator’s Field Manual (AFM), the USCIS Immigration Policy Memoranda site, and other policy repositories.>> newtext.txt
  134  echo The USCIS Policy Manual is the agency’s centralized online repository for USCIS’ immigration policies.  >> newtext.txt
  135  cat newtext.txt
  136  cat newtext.txt | less
  137  echo The USCIS Policy Manual is the agency’s centralized online repository for USCIS’ immigration policies. The USCIS Policy Manual is the agency’s centralized online repository for USCIS’ immigration policies. The USCIS Policy Manual is the agency’s centralized online repository for USCIS’ immigration policies. The USCIS Policy Manual is the agency’s centralized online repository for USCIS’ immigration policies.  >> newtext.txt
  138  cat newtext.txt | less
  139  cat -n newtext.txt
  140  cd ..
  141  mkdir Folder2
  142  cd Folder2
  143  touch abcd.txt
  144  rm abcd.txt
  145  touch .abcd.txt
  146  echo Hello >abcd.txt
  147  cat abcd.txt
  148  ls
  149  ls -a
  150  touch ex
  151  ls
  152  echo Dump > ex
  153  cat ex
  154  echo You >> ex
  155  cat ex
  156  cd ..
  157  mkdir dt1
  158  ls
  159  cd ..
  160  ls -a
  161  cd -
  162  mkdir dt1
  163  c d..
  164  mkdir dt1
  165  pwd
  166  cd ..
  167  pwd
  168  mkdir dt1
  169  pwd
  170  cd hme
  171  cd home
  172  ls-a
  173  ls
  174  cd user
  175  ls
  176  mkdir dt1
  177  mkdir dt2
  178  cd dt1
  179  touch xy.txt
  180  cp xy.txt ../dt2/
  181  ls
  182  cd ..
  183  ls
  184  cd dt2
  185  ls
  186  cd ..
  187  mkdir dt3
  188  cp -r dt1 dt3
  189  cd dt3
  190  ls
  191  cd ..
  192  cd dt1
  193  ls
  194  cd ..
  195  ls
  196  cd Folder1
  197  ls
  198  mv combinedtext.txt xyz.txt
  199  ls
  200  cat xyz.txt
  201  cd ..
  202  cd Folder2
  203  ls
  204  cd ..
  205  cd Folder1
  206  ls
  207  mv xyz.txt ../Folder2/
  208  ls
  209  cd ..
  210  cd Folder2
  211  ls
  212  cd ..
  213  ls
  214  cd dt3
  215  ls
  216  cd dt1
  217  ls
  218  rm xy.txt
  219  ls
  220  cd ..
  221  rm -d dt1
  222  ls
  223  cd ..
  224  ls
  225  cd dt2
  226  ls
  227  cd ..
  228  rm -r dt2
  229  ls
  230  ~/Folder1$ cd ..
  231  ~$ mkdir Folder1
  232  ~$ cd Folder1
  233  ~/Folder1$ touch a1.txt
  234  ~/Folder1$ touch a2.txt
  235  ~/Folder1$ echo Hello > a1.txt
  236  ~/Folder1$ echo World > a2.txt
  237  ~/Folder1$ cat a1.txt
  238  Hello
  239  ~/Folder1$ cat a2.txt
  240  World
  241  ~/Folder1$ cat a1.txt a2.txt > combinedtext.txt
  242  ~/Folder1$ cat combined.txt
  243  cat: combined.txt: No such file or directory
  244  ~/Folder1$ cat combinedtext.txt
  245  Hello
  246  World
  247  ~/Folder1$ touch a3.txt
  248  ~/Folder1$ echo Apple > a3.txt
  249  ~/Folder1$ cat combinedtext.txt a3.txt > newtext.txt
  250  ~/Folder1$ cat newtext.txt
  251  Hello
  252  World
  253  Apple
  254  ~/Folder1$ echo NewLine >> newtext.txt
  255  ~/Folder1$ cat newtext.txt
  256  Hello
  257  World
  258  Apple
  259  NewLine
  260  ~/Folder1$ 
  261  ~/Folder1$ cd -
  262  /home/user
  263  ~$ cd Folder1
  264  ~/Folder1$ echo The USCIS Policy Manual is the agency’s centralized online repository for USCIS’ immigration policies. The USCIS Policy Manual will ultimately replace the Adjudicator’s Field Manual (AFM), the USCIS Immigration Policy Memoranda site, and other policy repositories.>> newtext.txt
  265  clear
  266  ls
  267  pwd
  268  ls
  269  touch file1.txt
  270  mkdir mydir
  271  echo "Hell,  World!" > output.txt
  272  cat output.txt
  273  rm output.txt
  274  echo "Hello, World!" > output.txt
  275  cat output.txt
  276  echo "Appending a new line" >> output.txt
  277  cat output.txt
  278  pwd
  279  echo "Jani nah" > file2.txt
  280  cat file2.txt
  281  cat output.txt file2.txt > combined.txt
  282  cat combined.txt
  283  cat combined.txt | less
  284  cat file2.txt
  285  cat output.txt
  286  cat file2.txt >> output.txt
  287  cat output.txt
  288  touch .hiddenfile
  289  cat -n combined.txt
  290  cat output.txt | sort
  291  cp file1.txt file1_backup.txt
  292  ls
  293  cat file1_backup.txt
  294  cat file1.txt
  295  echo "DUMP" > file1.txt
  296  cat file1.txt
  297  rm file1_backup.txt
  298  ls
  299  cp file1.txt file1_backup.txt
  300  cat file1_backup.txt
  301  cp output.txt file2.txt ../mydir/
  302  pwd
  303  ls
  304  cp output.txt file2.txt ../mydir/
  305  cp output.txt file2.txt mydir/
  306  cd mydir
  307  ls
  308  cd ..
  309  mv file2.txt mydir/
  310  cd mydir
  311  ls
  312  cd ..
  313  rm file1_backup.txt
  314  ls
  315  mkdir empMydir
  316  rm -d empMydir
  317  rm -r mydir
  318  ls
  319  rm output.txt file1.txt
  320  ls
  321  mkdir -p a/b/c
  322  rm -r a
  323  ls
  324  pwd
  325  date+
  326  date +%r
  327  ncal -bS
  328  cal -bS
  329  cal -y
  330  ncal -bS
  331  echo "(3+4)*5" | bc
  332  echo "(3+4)*5"
  333  echo "(3+4)*5" | c
  334  expr "(3+4)*5"
  335  expr "(3+4)*5" expr "(3+4)*5" | bc
  336  echo "(3+4)*5" | bc
  337  man
  338  man cat
  339  cd -help
  340  pwd
  341  dir
  342  cat a2.txt
  343  cat a3.txt
  344  cat a1.txt
  345  cat newtext.txt
  346  cat Rafiul
  347  echo GooD > a1.txt
  348  echo Bangladesh >> a1.txt
  349  echo In562534 >> a1.txt
  350  echo "World, Hello" >> a1.txt
  351  echo "Sho hanSHO Han" >> a1.txt
  352  cat a1.txt
  353  wc a1.txt
  354  wc -c a1.txt
  355  wc -l a1.txt
  356  nl a.txt
  357  nl a1.txt
  358  wc -w a.txt
  359  wc -w a1.txt
  360  nl a1.txt
  361  nl -i2 a1.txt
  362  sort a1.txt
  363  sort -r a1.txt
  364  echo "World, Hello" >> a1.txt
  365  cat a1.txt
  366  sort -u a1.txt
  367  echo "world, hello" >> a1.txt
  368  echo bangladesh >> a1.txt
  369  echo dhaka,bangladesh >> a1.txt
  370  echo dhaka, bangladesh >> a1.txt
  371  echo Dhaka, Bangladesh >> a1.txt
  372  echo Dhaka, h >> a1.txt
  373  echo Dhaka,,,, >> a1.txt
  374  echo Dhaka, DHK  >> a1.txt
  375  cat a1.txt
  376  sort -k 1 a1.txt
  377  sort -k 2 a1.txt
  378  sort -k 4.2 a1.txt
  379  sort -k 2.3 a1.txt
  380  head a1.txt
  381  tail a1.txt
  382  head -6c a1.txt
  383  head -3c a1.txt
  384  head -s
  385  head -5 a1.txt
  386  head -5 a1.txt a3.txt
  387  cut -d, -f 1,3 a1.txt
  388  cut -d, -f 1,2 a1.txt
  389  cut -d, -f 1,3 a1.txt
  390  cut -c 1-4 a1.txt
  391  cut -c 4- a1.txt
  392  a1.txt
  393  echo Apple > a3.txt
  394  echo Mango >> a3.txt
  395  echo Orange >> a3.txt
  396  echo Lichi >> a3.txt
  397  echo Pineappple >> a3.txt
  398  echo Jackfruit >> a3.txt
  399* echo n >> a3.txt
  400  echo Banana >> a3.txt
  401  paste a1.txt paste a3.txt
  402  cat a3.txt
  403  paste a1.txt a3.txt
  404  echo Jackfruit >> a2.txt
  405  echo Pineappple >> a2.txt
  406  echo Lichi >> a2.txt
  407  echo Banana >> a2.txt
  408  echo Orange >>a2.txt
  409  echo Apple > a2.txt
  410  echo Orange >>a2.txt
  411  echo Apple > a2.txt
  412  echo Banana >> a2.txt
  413  echo Lichi >> a2.txt
  414  echo Pineappple >> a2.txt
  415  paste a1.txt a3.txt
  416  paste a2.txt a3.txt
  417  paste -d "," a2.txt a3.txt
  418  grep -i "Banana" a3.txt
  419  grep "Apple" a3.txt
  420  grep "World" a1.txt
  421  grep -i "World" a1.txt
  422  grep -c "World" a1.txt
  423  grep -o "World" a1.txt
  424  grep -v "World" a1.txt
  425  ls -la
  426  chmod 756 a1.txt
  427  ls -la
  428  history