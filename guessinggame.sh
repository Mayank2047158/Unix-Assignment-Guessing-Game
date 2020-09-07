function guess(){
	correct_ans=$(ls -l |grep "^-"|wc -l)
	while true;
	do
		echo "Enter a number you guess"
		read number

		if [ $number -lt $correct_ans ]
		then 
			echo "Guess is less then the Correct Number"
		elif [ $number -gt $correct_ans ]
		then 
			echo "Guess is more then the Correct Number"
		else
			echo "Your guess is correct, Congratulation"
		break;
		fi
	done
 		}

	echo "Guess the number of files in the current directory ?"
guess
