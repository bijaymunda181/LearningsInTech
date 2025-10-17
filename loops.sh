# Two basic loops
# for and while

# Based on expression
a=10
while [ $a -gt 0 ]; do
  echo Hellow
  a=$(($a-1))
  #break # This command can break the loop
  done

  #Based on Inputs
  for comp in frontend catalog user ; do
    echo Installing Component - $comp
    done