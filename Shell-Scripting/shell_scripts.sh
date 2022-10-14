#taking input from user
read a
read b
read c

#if else statements

if [[ $a -gt $b && $a -gt $c ]]
then 
 echo "A is biggest"
elif [[ $b -gt $a && $b -gt $c ]]
then
 echo "B is Biggest"
else
echo "C is Biggest"
fi
#For loop statements

for ((i=1; i<=10; i++ ))
do
echo "i is ${i}"
done
#iteration on files
for FILE in *.txt
do 
echo $FILE
done

#functions for creating user

add_user()
{
USER=$1
PASS=$2
useradd -m -p $PASS $USER && echo "Successfully added user"

}

#taking backup of system files and stuffs 

src_dir=/home/shell/backup_file
tar_dir=/home/backup
curr_time=$(date + "%Y-%m-%d-%H-%M-%S")
backup_file=$tgt_dir/$curr_time.tgz

echo "Taking backup on $curr_time"
echo "$backup_file"

tar czf $backup_file $src_dir

echo "Backup Complete"

#while loop

valid=true
count=1
while [ $valid ]
do
echo $count
if [ $count -eq 5 ];
then
break
fi
((count++))
done

#if else statements

echo "Enter username"
read username
echo "Enter password"
read password

if [[ ( $username == "admin" && $password == "secret" ) ]]; then
echo "valid user"
else
echo "invalid user"
fi

#switch statements

echo "Enter your lucky number"
read n
case $n in
101)
echo echo "You got 1st prize" ;;
510)
echo "You got 2nd prize" ;;
999)
echo "You got 3rd prize" ;;
*)
echo "Sorry, try for the next time" ;;
esac

#arguments 
echo "Total arguments : $#"
echo "1st Argument = $1"
echo "2nd argument = $2"

#arguments input using loops and stuff

for arg in "$@"
do
index=$(echo $arg | cut -f1 -d=)
val=$(echo $arg | cut -f2 -d=)
case $index in
X) x=$val;;

Y) y=$val;;

*)
esac
done
((result=x+y))
echo "X+Y=$result"

#directory making

echo "Enter directory name"
read ndir
if [ -d "$ndir" ]
then
echo "Directory exist"
else
`mkdir $ndir`
echo "Directory created"
fi

#check if file exist 

filename=$1
if [ -f "$filename" ]; then
echo "File exists"
else
echo "File does not exist"
fi


#MAIN

add_user Aryan test@123



