~$ pwd
/home/user
~$ ls
Folder1  Lab_prac_4.sh    Rafi    a1.txt  a3.txt        combinedtext.txt  dt3              lab_task_2.sh    lab_task_3.sh    lab_task_4.term  linux_term_prac.sh  terminal.ipynb
Folder2  Lab_prac_4.term  Rafiul  a2.txt  combined.txt  dt1               lab_prac_3.term  lab_task_2.term  lab_task_3.term  lab_task_5.term  newtext.txt         terminal.term
~$ mkdir TestFolder
~$ cd TestFolder
~/TestFolder$ touch test.txt
~/TestFolder$ mv test.txt example.txt
~/TestFolder$ cp example.txt copy_example.txt
~/TestFolder$ rm copy_example.txt
~/TestFolder$ mv example.txt ../
~/TestFolder$ cd ..
~$ ls
Folder1  Lab_prac_4.sh    Rafi    TestFolder  a2.txt  combined.txt      dt1  example.txt      lab_task_2.sh    lab_task_3.sh    lab_task_4.term  linux_term_prac.sh  terminal.ipynb
Folder2  Lab_prac_4.term  Rafiul  a1.txt      a3.txt  combinedtext.txt  dt3  lab_prac_3.term  lab_task_2.term  lab_task_3.term  lab_task_5.term  newtext.txt         terminal.term
~$ cat example.txt
~$ touch "Hello, World!" > data.txt 
~$ touch "This is a test" >> data.txt
~$ cat data.txt
~$ rm data.txt
~$ echo "Hello, World!" > data.txt 
~$ echo "This is a test" >> data.txt
~$ cat data.txt
Hello, World!
This is a test
~$ date
Wed Nov 20 08:26:17 UTC 2024
~$ mkdir -p Folder1/Subfolder
~$ rm -r Folder1
~$ ifconfig
eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1440
        inet 192.168.98.84  netmask 255.255.255.255  broadcast 192.168.98.84
        ether ca:01:62:8f:60:70  txqueuelen 0  (Ethernet)
        RX packets 2616  bytes 262848 (262.8 KB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 1884  bytes 577605 (577.6 KB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 0  bytes 0 (0.0 B)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 0  bytes 0 (0.0 B)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

~$ ping https://www.google.com/
                                                                  
╔══════════════════════════════╦═════════════════════════════════╗
║   ⚠   NETWORK DISABLED  ⚠    ║    ⚠   NO INTERNET ACCESS  ⚠    ║
╠══════════════════════════════╩═════════════════════════════════╣
║ This project does not have access to the internet.             ║
║ Add a valid license in order to enable internet access.        ║
║ Otherwise, you cannot pull from a Git repository, use cURL,    ║
║ wget, download Python packages from PyPI, etc.                 ║
║ Requests to load data will fail or hang indefinitely.          ║
║                                                                ║
║            https://cocalc.com/store/site-license               ║
║                                                                ║
╟────────────────────────────────────────────────────────────────╢
║ Attempting to install software? It might already be available! ║
║                https://cocalc.com/software                     ║
╟────────────────────────────────────────────────────────────────╢
║ However, you can become admin in a 𝗖𝗢𝗠𝗣𝗨𝗧𝗘 𝗦𝗘𝗥𝗩𝗘𝗥!             ║
║ Learn more here:    https://doc.cocalc.com/compute_server.html ║
╚════════════════════════════════════════════════════════════════╝
                                                                  
~$ ps -e
    PID TTY          TIME CMD
      1 ?        00:00:00 tini
      6 ?        00:00:00 sh
      7 ?        00:00:14 node
    212 ?        00:00:00 sshd
    304 pts/0    00:00:00 bash
    306 pts/1    00:00:00 bash
    714 pts/1    00:00:00 ps
~$ ps -all
F S   UID     PID    PPID  C PRI  NI ADDR SZ WCHAN  TTY          TIME CMD
0 R  2001     724     306  0  98  18 -  1871 -      pts/1    00:00:00 ps
~$ cat >> numbers.txt
3
2
5
4
1
^Z
[1]+  Stopped                 cat >> numbers.txt
~$ sort numbers.txt
1
2
3
4
5
~$ grep 4 numbers.txt
4
~$ who
~$ whoami
user
~$ users
~$ rm numbers.txt
~$ ls
 Folder2          Lab_prac_4.term   TestFolder        a2.txt         combinedtext.txt   dt3               lab_task_2.sh     lab_task_3.term   linux_term_prac.sh   terminal.term
'Hello, World!'   Rafi             'This is a test'   a3.txt         data.txt           example.txt       lab_task_2.term   lab_task_4.term   newtext.txt
 Lab_prac_4.sh    Rafiul            a1.txt            combined.txt   dt1                lab_prac_3.term   lab_task_3.sh     lab_task_5.term   terminal.ipynb
~$ whoami
user
~$ echo "apple, banana, cherry" > data.txt
~$ cat data.txt
apple, banana, cherry
~$ sort data.txt >> sorted_data.txt
~$ cat data.txt
apple, banana, cherry
~$ grep banana data.txt
apple, banana, cherry
~$ cat sorted_data.txt
apple, banana, cherry
~$ ls
 Folder2          Lab_prac_4.term   TestFolder        a2.txt         combinedtext.txt   dt3               lab_task_2.sh     lab_task_3.term   linux_term_prac.sh   terminal.ipynb
'Hello, World!'   Rafi             'This is a test'   a3.txt         data.txt           example.txt       lab_task_2.term   lab_task_4.term   newtext.txt          terminal.term
 Lab_prac_4.sh    Rafiul            a1.txt            combined.txt   dt1                lab_prac_3.term   lab_task_3.sh     lab_task_5.term   sorted_data.txt
~$ rm data.txt sorted_data.txt
~$ ls
 Folder2          Lab_prac_4.term   TestFolder        a2.txt         combinedtext.txt   example.txt       lab_task_2.term   lab_task_4.term      newtext.txt
'Hello, World!'   Rafi             'This is a test'   a3.txt         dt1                lab_prac_3.term   lab_task_3.sh     lab_task_5.term      terminal.ipynb
 Lab_prac_4.sh    Rafiul            a1.txt            combined.txt   dt3                lab_task_2.sh     lab_task_3.term   linux_term_prac.sh   terminal.term
~$ mkdir -p Project && touch Project/README.txt
~$ ls
 Folder2          Lab_prac_4.term   Rafiul            a1.txt   combined.txt       dt3               lab_task_2.sh     lab_task_3.term   linux_term_prac.sh   terminal.term
'Hello, World!'   Project           TestFolder        a2.txt   combinedtext.txt   example.txt       lab_task_2.term   lab_task_4.term   newtext.txt
 Lab_prac_4.sh    Rafi             'This is a test'   a3.txt   dt1                lab_prac_3.term   lab_task_3.sh     lab_task_5.term   terminal.ipynb
~$ cd Project
~/Project$ ls
README.txt
~$ date
Wed Nov 20 09:01:56 UTC 2024
~$ ls
 Folder2          Lab_prac_4.term   Rafiul            a1.txt   combined.txt       dt3               lab_task_2.sh     lab_task_3.term   linux_term_prac.sh   terminal.term
'Hello, World!'   Project           TestFolder        a2.txt   combinedtext.txt   example.txt       lab_task_2.term   lab_task_4.term   newtext.txt
 Lab_prac_4.sh    Rafi             'This is a test'   a3.txt   dt1                lab_prac_3.term   lab_task_3.sh     lab_task_5.term   terminal.ipynb
~$ mkdir TestDir && touch TestDir/test.txt && echo "Hello" >> test.txt
~$ cd TestDir
~/TestDir$ cat test.txt
~/TestDir$ rm -r TestDir
rm: cannot remove 'TestDir': No such file or directory
~/TestDir$ cd ..
~$ rm -r TestDir
~$ ls
 Folder2          Lab_prac_4.term   Rafiul            a1.txt   combined.txt       dt3               lab_task_2.sh     lab_task_3.term   linux_term_prac.sh   terminal.term
'Hello, World!'   Project           TestFolder        a2.txt   combinedtext.txt   example.txt       lab_task_2.term   lab_task_4.term   newtext.txt          test.txt
 Lab_prac_4.sh    Rafi             'This is a test'   a3.txt   dt1                lab_prac_3.term   lab_task_3.sh     lab_task_5.term   terminal.ipynb
~$ mkdir TestDir && touch TestDir/test.txt && echo Hello >> test.txt && cat test.txt
Hello
Hello
~$ rm -r TestDir
~$ ls
 Folder2          Lab_prac_4.term   Rafiul            a1.txt   combined.txt       dt3               lab_task_2.sh     lab_task_3.term   linux_term_prac.sh   terminal.term
'Hello, World!'   Project           TestFolder        a2.txt   combinedtext.txt   example.txt       lab_task_2.term   lab_task_4.term   newtext.txt          test.txt
 Lab_prac_4.sh    Rafi             'This is a test'   a3.txt   dt1                lab_prac_3.term   lab_task_3.sh     lab_task_5.term   terminal.ipynb
~$ cat test.txt
Hello
Hello
~$ rm test.txt
~$ mkdir TestDir && touch TestDir/test.txt && echo Hello >> test.txt && cat test.txt
Hello
~$ ls
 Folder2          Lab_prac_4.term   Rafiul      'This is a test'   a3.txt             dt1           lab_prac_3.term   lab_task_3.sh     lab_task_5.term      terminal.ipynb
'Hello, World!'   Project           TestDir      a1.txt            combined.txt       dt3           lab_task_2.sh     lab_task_3.term   linux_term_prac.sh   terminal.term
 Lab_prac_4.sh    Rafi              TestFolder   a2.txt            combinedtext.txt   example.txt   lab_task_2.term   lab_task_4.term   newtext.txt          test.txt
~$ ls | grep "test"
This is a test
test.txt
~$ ls | sort
Folder2
Hello, World!
Lab_prac_4.sh
Lab_prac_4.term
Project
Rafi
Rafiul
TestDir
TestFolder
This is a test
a1.txt
a2.txt
a3.txt
combined.txt
combinedtext.txt
dt1
dt3
example.txt
lab_prac_3.term
lab_task_2.sh
lab_task_2.term
lab_task_3.sh
lab_task_3.term
lab_task_4.term
lab_task_5.term
linux_term_prac.sh
newtext.txt
terminal.ipynb
terminal.term
test.txt
~$ cat newtext.txt
~$ cat test.txt
Hello
~$ cat a2.txt
Apple
Banana
Banana
Lichi
Pineappple
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
~$ cat a3.txt
Apple
Mango
Orange
Lichi
Pineappple
Jackfruit
WaterMelon
Banana
~$ cat test.txt a2.txt
Hello
Apple
Banana
Banana
Lichi
Pineappple
~$ head -10 a1.txt
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
~$ tail -10 a1.txt
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
~$ ~$ history
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
  399  echo WaterMelon >> a3.txt
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
  429  pwd
  430  ls
  431  mkdir TestFolder
  432  cd TestFolder
  433  touch test.txt
  434  mv test.txt example.txt
  435  cp example.txt copy_example.txt
  436  rm copy_example.txt
  437  mv example.txt ../
  438  cd ..
  439  ls
  440  cat example.txt
  441  touch "Hello, World!" > data.txt 
  442  touch "This is a test" >> data.txt
  443  cat data.txt
  444  rm data.txt
  445  echo "Hello, World!" > data.txt 
  446  echo "This is a test" >> data.txt
  447  cat data.txt
  448  date
  449  mkdir -p Folder1/Subfolder
  450  rm -r Folder1
  451  ifconfig
  452  ping https://www.google.com/
  453  ps -e
  454  ps -all
  455  cat >> numbers.txt
  456  sort numbers.txt
  457  grep 4 numbers.txt
  458  who
  459  whoami
  460  users
  461  rm numbers.txt
  462  ls
  463  whoami
  464  echo "apple, banana, cherry" > data.txt
  465  cat data.txt
  466  sort data.txt >> sorted_data.txt
  467  cat data.txt
  468  grep banana data.txt
  469  cat sorted_data.txt
  470  ls
  471  rm data.txt sorted_data.txt
  472  ls
  473  mkdir -p Project && touch Project/README.txt
  474  ls
  475  cd Project
  476  ls
  477  date
  478  ls
  479  mkdir TestDir && touch TestDir/test.txt && echo "Hello" >> test.txt
  480  cd TestDir
  481  cat test.txt
  482  rm -r TestDir
  483  cd ..
  484  rm -r TestDir
  485  ls
  486  mkdir TestDir && touch TestDir/test.txt && echo Hello >> test.txt && cat test.txt
  487  rm -r TestDir
  488  ls
  489  cat test.txt
  490  rm test.txt
  491  mkdir TestDir && touch TestDir/test.txt && echo Hello >> test.txt && cat test.txt
  492  ls
  493  ls | grep "test"
  494  ls | sort
  495  cat newtext.txt
  496  cat test.txt
  497  cat a2.txt
  498  cat a1.txt
  499  cat a3.txt
  500  cat test.txt a2.txt
  501  head -10 a1.txt
  502  tail -10 a1.txt
  503  history
~$ 