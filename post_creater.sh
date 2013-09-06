#!/bin/bash
cur_date=`date +%Y-%m-%d`
echo $cur_date
while [[ $answer1 != y ]]
	do
echo "Create new post? y/n"
read answer1

if [ $answer1 == y ]
	then
	echo "Enter title for post"
	read title1
	echo $title1
	title2="${title1// /-}"
	echo $title2
	post="${cur_date}-${title2}.md"
	echo $post
	touch "_posts/${post}"

elif [ $answer1 == n ]
	then
	echo "goodbye"
	exit
else 
	echo "I'm not sure what you entered, try again"
	sleep 2
	clear
fi
done
echo "done touching"
echo -e "---\r\nlayout: default\r\ntitle: $title1\r\n---">_posts/${post}
echo "would you like to create/edit this file now? y/n"
read answer2
if [ $answer2 == y ]
	then
	/usr/bin/nano _posts/${post}	
	exit 
elif [ $answer2 == n ]
	then 
	echo "goodbye"
	exit
else
	echo "can't read what you wrote goodbye"
	exit
fi
