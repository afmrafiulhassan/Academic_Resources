~$ pwd
/home/user
~$ ls
2024-11-01-terminal-1.sh    Folder2  a1.txt  combinedtext.txt  lab_prac_3.term  lab_task_3.term     terminal.ipynb
2024-11-01-terminal-1.term  Rafi     a2.txt  dt1               lab_task_2.sh    linux_term_prac.sh  terminal.term
Folder1                     Rafiul   a3.txt  dt3               lab_task_2.term  newtext.txt
~$ touch file1.txt
~$ mkdir mydir
~$ echo "Hell,  World!" > output.txt
~$ cat output.txt
Hell,  World!
~$ rm output.txt
~$ echo "Hello, World!" > output.txt
~$ cat output.txt
Hello, World!
~$ echo "Appending a new line" >> output.txt
~$ cat output.txt
Hello, World!
Appending a new line
~$ pwd
/home/user
~$ echo "Jani nah" > file2.txt
~$ cat file2.txt
Jani nah
~$ cat output.txt file2.txt > combined.txt
~$ cat combined.txt
Hello, World!
Appending a new line
Jani nah
~$ cat combined.txt | less

[1]+  Stopped                 cat combined.txt | less
~$ cat file2.txt
Jani nah
~$ cat output.txt
Hello, World!
Appending a new line
~$ cat file2.txt >> output.txt
~$ cat output.txt
Hello, World!
Appending a new line
Jani nah
~$ touch .hiddenfile
~$ cat -n combined.txt
     1  Hello, World!
     2  Appending a new line
     3  Jani nah
~$ cat output.txt | sort
Appending a new line
Hello, World!
Jani nah
~$ cp file1.txt file1_backup.txt
~$ ls
2024-11-01-terminal-1.sh    Rafi    a3.txt            dt3               lab_prac_3.term  linux_term_prac.sh  terminal.ipynb
2024-11-01-terminal-1.term  Rafiul  combined.txt      file1.txt         lab_task_2.sh    mydir               terminal.term
Folder1                     a1.txt  combinedtext.txt  file1_backup.txt  lab_task_2.term  newtext.txt
Folder2                     a2.txt  dt1               file2.txt         lab_task_3.term  output.txt
~$ cat file1_backup.txt
~$ cat file1.txt
~$ echo "DUMP" > file1.txt
~$ cat file1.txt
DUMP
~$ rm file1_backup.txt
~$ ls
2024-11-01-terminal-1.sh    Rafi    a3.txt            dt3              lab_task_2.sh       mydir           terminal.term
2024-11-01-terminal-1.term  Rafiul  combined.txt      file1.txt        lab_task_2.term     newtext.txt
Folder1                     a1.txt  combinedtext.txt  file2.txt        lab_task_3.term     output.txt
Folder2                     a2.txt  dt1               lab_prac_3.term  linux_term_prac.sh  terminal.ipynb
~$ cp file1.txt file1_backup.txt
~$ cat file1_backup.txt
DUMP
~$ cp output.txt file2.txt ../mydir/
cp: target '../mydir/' is not a directory
~$ pwd
/home/user
~$ ls
2024-11-01-terminal-1.sh    Rafi    a3.txt            dt3               lab_prac_3.term  linux_term_prac.sh  terminal.ipynb
2024-11-01-terminal-1.term  Rafiul  combined.txt      file1.txt         lab_task_2.sh    mydir               terminal.term
Folder1                     a1.txt  combinedtext.txt  file1_backup.txt  lab_task_2.term  newtext.txt
Folder2                     a2.txt  dt1               file2.txt         lab_task_3.term  output.txt
~$ cp output.txt file2.txt ../mydir/
cp: target '../mydir/' is not a directory
~$ 
~$ 
~$ 
~$ cp output.txt file2.txt mydir/
~$ cd mydir
~/mydir$ ls
file2.txt  output.txt
~/mydir$ cd ..
~$ mv file2.txt mydir/
~$ cd mydir
~/mydir$ ls
file2.txt  output.txt
~/mydir$ cd ..
~$ rm file1_backup.txt
~$ ls
2024-11-01-terminal-1.sh    Folder2  a1.txt  combined.txt      dt3              lab_task_2.sh    linux_term_prac.sh  output.txt
2024-11-01-terminal-1.term  Rafi     a2.txt  combinedtext.txt  file1.txt        lab_task_2.term  mydir               terminal.ipynb
Folder1                     Rafiul   a3.txt  dt1               lab_prac_3.term  lab_task_3.term  newtext.txt         terminal.term
~$ mkdir empMydir
~$ rm -d empMydir
~$ rm -r mydir
~$ ls
2024-11-01-terminal-1.sh    Folder2  a1.txt  combined.txt      dt3              lab_task_2.sh    linux_term_prac.sh  terminal.ipynb
2024-11-01-terminal-1.term  Rafi     a2.txt  combinedtext.txt  file1.txt        lab_task_2.term  newtext.txt         terminal.term
Folder1                     Rafiul   a3.txt  dt1               lab_prac_3.term  lab_task_3.term  output.txt
~$ rm output.txt file1.txt
~$ ls
2024-11-01-terminal-1.sh    Folder2  a1.txt  combined.txt      dt3              lab_task_2.term     newtext.txt
2024-11-01-terminal-1.term  Rafi     a2.txt  combinedtext.txt  lab_prac_3.term  lab_task_3.term     terminal.ipynb
Folder1                     Rafiul   a3.txt  dt1               lab_task_2.sh    linux_term_prac.sh  terminal.term
~$ mkdir -p a/b/c
~$ rm -r a
~$ ls
2024-11-01-terminal-1.sh    Folder2  a1.txt  combined.txt      dt3              lab_task_2.term     newtext.txt
2024-11-01-terminal-1.term  Rafi     a2.txt  combinedtext.txt  lab_prac_3.term  lab_task_3.term     terminal.ipynb
Folder1                     Rafiul   a3.txt  dt1               lab_task_2.sh    linux_term_prac.sh  terminal.term
~$ Rafiul