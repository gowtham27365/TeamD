echo "Enter 1 to view date    | Enter 2 to view time" 
echo "Enter 3 to view os info | Enter 4 to view load average"   

read x

# Get the current date and time

current_date=$(date +"%A, %B %d, %Y")
current_time=$(date +"%T")

# Get system load average

load_average=$(cat /proc/loadavg)

# Get OS information

#os_info=$(cat /etc/os-release)

os_info2=$(uname -a)

if [ $((x)) == 1 ]; then
    echo current_date:

    echo $current_date

elif [ $((x))  == 2 ]; then 
    echo current_time:

    echo $current_time

elif [ $((x)) == 3 ]; then 

    echo "OS Information:"

    echo "$os_info"
    echo "$os_info2"

elif [ $((x)) == 4 ]; then
    echo load_average:

    echo $load_average

else 
    echo "Enter correct number to view the correct details"

fi

