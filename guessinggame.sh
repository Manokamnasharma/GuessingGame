n_lines = $(ls | wc -l)
input_ = 0

function test {
    if [[ input_ -lt n_lines  ]]
    then
        local answer = "Your guess was too low"
    elif [[ input_ -gt n_lines  ]]
    then
        local answer = "Your guess was too high"
    else
        local answer = "CONGRATULATIONS !!!"
    fi
    echo $answer 
}

while [[ input_ -ne n_lines ]]
do
    echo "Guess how many files are in the current directory !"
    echo "Write the number of files, then press 'Enter':"
    read input_
    clear
    echo "$(test)"
    echo ""
done