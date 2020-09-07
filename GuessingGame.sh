### PEER GRADED PROJECT ASSIGNMENT FOR UNIX WORKBENCH

function right(){
echo "Congratulations you are right.";
echo "Game Over, thank you for guessing.";
}

function wrong(){
echo "Please guess again I'm sure you will get it right.";
PROC_ANSWER=$(( INPUT - ANSWER ));
if [ $PROC_ANSWER -eq 1 -o $PROC_ANSWER -eq -1 ]; then
echo "Your input is very close to the actual answer.";
elif [ $PROC_ANSWER -ge 2 ];then 
echo "Your input is too high apart, than the actual answer";
elif [ $PROC_ANSWER -le -2 ];then 
echo "Your input is way too low than the actual answer";
fi
}

function intro(){
echo "WELCOME TO THE GUESSING GAME:";
echo "==============================";
printf "Try guessing how many files are there here: ";
read INPUT;
}

function re_iterate(){
printf "Try guessing how many files are there here: ";
read INPUT;
}

intro;

ANSWER=$(ls | wc -l);

while [[ $INPUT -gt -1 ]];
do
	if [ $INPUT -eq $ANSWER ];then
	clear;
	right;
	break;
	elif [ $INPUT -ne $ANSWER  ]; then 
	clear;
	wrong; 
	re_iterate;
	fi
done

