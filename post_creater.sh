#!/bin/bash
cur_date=`date +%Y-%m-%d`
echo $cur_date
echo "Create new post? y/n"
read answer1

if [ $answer1 == y ]
	then
	echo "Enter title for post"
	read title1
	title2=`echo $title1 |sed -e 's/ /-/g'`
	post="${cur_date}-${title2}.markdown"
	touch "_/posts/$post"
else 
	exit
fi
echo -e "---\r\nlayout: default\r\ntitle: $title1\r\n---">_posts/$post
vi _/posts/${post}
git add _posts/$posts
echo "enter a comment for the post"
read comment
git commit -a -m"$comment"
echo "push to git? y/n"
read answer2
if [ $answer2 == y ]
	then
	git push 
	echo "done, exiting"
	exit
else	
	echo "ok exiting ,post is stored already"
	exit
fi
