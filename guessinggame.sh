echo "[Welcome to Guessing game]"

function question {
	echo "Please enter the number of files in the current directory:"
	read response
    files=$(ls -1 | wc -l)
}

question

while [[ $response -ne $files ]]
do
	if [[ $response -lt $files ]] 
	then
		echo "Your Guess is low. Try Higher"
	else
		echo "Your Guess is high. Try Lower"
	fi
	question
done

echo "Well done! It is the correct answer, here is the list of files:"
echo "-------------" && ls -1