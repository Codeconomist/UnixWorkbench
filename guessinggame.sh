#  Simple function called "compare" that returns:
#    0 if the values it is passed are equal
#    1 if the first value is lower than the second
#    2 if the second value is higher than the first
#    Note:  the return value of zero is intended to be in line with the "true" command exit status
function compare {
  if [[ $1 -eq $2 ]] ; then
    echo 0
  elif [[ $1 -lt $2 ]] ; then
    echo 1
  else
    echo 2
  fi
}

#  Sets the initial values of variables.
#    file_count is set as the number of files (including folders) in the current directory at the initial script run
#    loop_status keeps track of the continuation of the loop (and therefore also the guess status)
file_count=$(ls | wc -l)
loop_status=1

#  Loop that continues while $loop_status is not 0.  It asks for the guess and assigns the response to $guess
#    When a correct guess is passed to the compare function, the response causes $loop_status to set to 0
#      The IF statement determines what text to display based on the $loop_status and the loop will exit when correct
echo "Type how many files you think the folder contains, then press enter:"
while [[ $loop_status -ne 0 ]]
do
  read guess
  let loop_status=$(compare $guess $file_count)

  if [[ $loop_status -eq 0 ]] ; then
    echo "Your guess of $guess was correct!  Exiting loop"
  elif [[ $loop_status -eq 1 ]] ; then
    echo "Your guess of $guess was too low.  Try again!"
  else
    echo "Your guess of $guess was too high.  Try again!"
  fi
done