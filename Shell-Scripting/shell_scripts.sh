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




#MAIN

add_user Aryan test@123



