function compare {
  if [[ $1 -eq $2 ]] ; then
    echo 0
  elif [[ $1 -lt $2 ]] ; then
    echo 1
  else
    echo 2
  fi
}