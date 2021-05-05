
  
Move file from one to the respective folders.

1). touch abc.txt def.txt ghi.txt jkl.txt

b)  cp abc.txt def.pdf

d) mkdir basename

e) mv abc.txt def.pdf
   mv ghi.txt ghi.pdf


#!/bin/bash
for file in $( ls * .txt)
do
   echo "file:$file"
    baseName=$( echo $file | awk -f. '{ print $1}' )
  echo "baseName:$baseName"
      if [ -d $baseName ]
    then
  rm -r $baseName  
fi
mkdir $baseName
cp $file $baseName
done

****
(a)  Append current date to all log files name which has extension.log.1 from folder

 touch abc.log.1 def.log.1 ghi.log.1 jkl.log.1 mno.log.1

(b)
#!/bin/bash
echo -e "enterfilename"
read filename

  if [ -f $filename ]
then
   if [ -w $filename ]
  then
     echo "if you want to something "
    cat >> $filename
       else
echo  "$filename do not write permision"
    fi
else
echo "$filename does not exist"
fi




(d)
#!/bin/bash -x
 for file in$(ls *.log.1)
  do
echo "file:$file"
   basename=$(echo $file | awk -F. '{print $1}')
    echo "basename:$basename"
      today=$(date +"%d,%m,%Y")
      full_filename=$basename-$today.'log'
    echo $full_filename
done
(e)
#!/bin/bash
echo -e "enterfilename"
read filename

  if [ -f $filename ]
then
   if [ -w $filename ]
  then
     echo "if you want to something "
    cat >> $filename
       else
echo  "$filename do not write permision"
    fi
else
echo "$filename does not exist"
fi

** Check if a folder or not. If it's not present,create it

nano pappu.sh

(a) Test if particular exist in current directory or not
 
ls 

(b)if its doesn't  exists then create it else print "folder already exixt.."
  
mkdir day3problem

cd day3problem

nano pappu.sh

ls 
***
Execute command "hello" and "ls" and check its execution status and print
 whether command execute successful or not.

(a) Execute "hello" command at command prompt
   hello
(b)Check execution status of "hello" command
  bash: hello: command not found

(a) Execute "ls" command at command prompt
   ls
(b)Check execution status of "ls" command

$ ls
abc.txt         digit.sh        minmax.sh*            test,sh
add.sh*         digitword.sh*   movefiletofolder.sh*  test.sh*
baseName.txt    empwage4.sh     random.sh*            testwhile.sh
basename/       empwagev4.sh*   singledigit.sh*       trxtSwitchfor.sh*
cal.sh          empwagev5.sh*   sum.sh                unitcase.sh*
coin.sh*        fruits.txt      sumavg.sh*            unitcon.sh*
conversion.sh*  ghi.txt         sumavg.shy*           units.sh*
day5pro4.sh*    hello.sh*       sumavg1.sh*           weekday.sh
def.txt         jkl.txt         sumavg2.sh*           xyz.txt
 dice.sh*        leapyear.sh*    sumavg2.shy*
die.sh*         linux-content/  tenhundred.sh*

** Set environment usersecret="dH34xjaa23" if its already not set.

Env =dH34xJaa23

Users/dell/AppData/Local/Microsoft/WindowsApps
OLDPWD=/c/Users/public/minibootcamp
_=/usr/bin/Env
=dH34xJaa23

*******

Find a word "systemd" from all log files in the 
folder /var/log and print number of occerence more than 0 again each file.

use linux command to search word and print occurance.

#!/bin/bash

 mystring="systemd"
 echo "string length: ${mystring}"

Executed output

$ bash  wordcount.sh
string length: 7

*****
Create process list table

dell@DESKTOP-TCPJ3LK MINGW64 /c/Users/public/minibootcamp/programSequence/linux-content (master)
$ ps
      PID    PPID    PGID     WINPID   TTY         UID    STIME COMMAND
S    2794    1131    2794       3932  pty3      197609 12:25:40 /usr/bin/bash
S    1655    1131    1655       3024  pty3      197609 10:06:57 /usr/bin/awk
S     835       1     835       6560  pty0      197609 17:38:41 /usr/bin/nano
S    2964    2794    2794      11872  pty3      197609 12:25:49 /usr/bin/bash
S    3136    1131    3136       7484  pty3      197609 12:29:38 /usr/bin/bash
S    3479    1131    3479       9548  pty3      197609 12:44:13 /usr/bin/awk
S    2974    1131    2974       3284  pty3      197609 12:26:36 /usr/bin/bash
     1131    1130    1131       3124  pty3      197609 22:30:54 /usr/bin/bash
S    3088    2974    2974      10000  pty3      197609 12:26:42 /usr/bin/mkdir
S    3649    1131    3649       9960  pty3      197609 13:34:52 /usr/bin/awk
S    3375    1131    3375       9708  pty3      197609 12:31:33 /usr/bin/bash
     3855    1131    3855       1396  pty3      197609 14:04:20 /usr/bin/ps
S    3092    1131    3092      13252  pty3      197609 12:29:10 /usr/bin/bash
S    1025       1    1025       5508  pty1      197609 21:40:49 /usr/bin/nano
     1130       1    1130       8508  ?         197609 22:30:54 /usr/bin/mintty
S    3493    1131    3493      12564  pty3      197609 12:47:20 /usr/bin/awk


*****


 


****************************************
  colomn 2nd
(1) print last 4 frequently access urls count in sorted order form /var/log/httpd/access.log

 cat access.log | awk '{print $7}' |sort  |uniq -c |sort -n |tail -4
    199 /favicon.ico
    199 /runtime.js
    199 /scripts.js
    199 /vendor.js


cat access.log | awk '{print $7}' |sort  |uniq -c |sort -n |tail -10
    115 /assets/arrow-point-to-right.png
    175 /assets/XMLID_1201_.svg
    190 /login
    195 /polyfills.js
    195 /styles.js
    196 /main.js
    199 /favicon.ico
    199 /runtime.js
    199 /scripts.js
    199 /vendor.js

****
(2)  Print list of last 4 frequently access unique urls at particular hours from /var/log/httpd/access.log 

$ awk -vDate=`date -d'now-2 hours' +[%d/%b/%Y:%H:%M:%S` ' { if ($4 > Date) print $7}' access.log | sort  |uniq -c |sort -n | tail -4
     74 /runtime.js
     74 /scripts.js
     74 /vendor.js
     77 /favicon.ico


******
(3) Print list of of web response code count in the unique sorted order at specific hours.

$ cat access.log | awk '{print $9}' | sort | uniq -c | sort -n
      8 206
     26 304
   3176 200


(4) Print list of last 10 unique sorted client IP /var/log/httpd/access.log

 cat access.log |awk '{print $1}'|sort |uniq -c|head -10
    261 10.56.0.3
    283 10.56.1.3
    213 10.56.10.2
    345 10.56.19.3
    383 10.56.2.2
    323 10.56.21.2
    251 10.56.22.3
    214 10.56.3.4
      9 10.56.34.4
    242 10.56.4.2

****************
Data analysis/ manupulation (Awk)

(i) Print Employeename and Totalpay who has been Basepay greater than 10000

$ awk '$4 > 10000 { print $2, $7 }' data.csv
EmployeeName TotalPay
NATHANIEL 567595
GARY 538909
ALBERT 335279
CHRISTOPHER 332343
PATRICK 326373
DAVID 316285
ALSON 315981
DAVID 307899
JOANNE 302377
PATRICIA 297608
EDWARD 294580

(a) Read data file 'data.csv' from command line 
and extract rowa which have BasePay>10000

$ awk '$4 > 10000 { print $0 }' data.csv
Id EmployeeName JobTitle        BasePay OvertimePay OtherPay TotalPay TotalPayBenefits
1  NATHANIEL    GM              167411  0           400184   567595   567595
2  GARY         CAPTAIN         155966  245131      137811   538909   538909
3  ALBERT       CAPTAIN         212739  106088      16452    335279   335279
4  CHRISTOPHER  MECHANIC        77916   56120       198306   332343   332343
5  PATRICK      DEPUTYCHIEF     134401  9737        182234   326373   326373
6  DAVID        ASSTDEPUTY      118602  8601        189082   316285   316285
7  ALSON        BATTALIONCHIEF  92492   89062       134426   315981   315981
8  DAVID        DEPUTYDIRECTOR  256576  0           51322    307899   307899
10 JOANNE       CHIEF           285262  0           17115    302377   302377
12 PATRICIA     CAPTAIN         99722   87082       110804   297608   297608
13 EDWARD       EXECUTIVE       294580  0           0        294580   294580

(b) Print only employeeName and TotalPay

$ awk '{print $2, $7}' data.csv
EmployeeName TotalPay
NATHANIEL 567595
GARY 538909
ALBERT 335279
CHRISTOPHER 332343
PATRICK 326373
DAVID 316285
ALSON 315981
DAVID 307899
JOANNE 302377
PATRICIA 297608
EDWARD 294580



(ii)

(a) Read data File 'data.csv' from command line and extract rows
which have 'CAPTAIN' in the column 'jobtitle'

$ awk '/CAPTAIN/{print}' data.csv
2  GARY         CAPTAIN         155966  245131      137811   538909   538909
3  ALBERT       CAPTAIN         212739  106088      16452    335279   335279
12 PATRICIA     CAPTAIN         99722   87082       110804   297608   297608

(b) Extract Totalpay and calculate sum.Print the result on terminal.
$ awk 'BEGIN {sum=0}{sum=sum+$7}END {print " sum = " sum } {print $7}' data.csv
TotalPay
567595
538909
335279
332343
326373
316285
315981
307899
302377
297608
294580
 sum = 3935229


(iii)  Read data file 'data.csv' from command line and extrct jobtitle 
      and overtimepay for column value range between 7000-10000

(a) awk '$5 > 7000 && $5 < 10000 { print $3 , $5}' data.csv
DEPUTYCHIEF 9737
ASSTDEPUTY 8601

b). Print the result on terminal

DEPUTYCHIEF 9737
ASSTDEPUTY 8601


(iv)  Read data file 'data.csv' from command line and extract
 BasePay value and calculate its average.

a). $ awk 'BEGIN {sum=0}{sum=sum+$4}END {print (avg=sum/11) }' data.csv
172333

b) Print the result on terminal
172333







