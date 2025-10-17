#variable
a=10
echo a is $a

#special  variables
# $0 - $N, $*, $#

#substitution varibles
## command substitution
DATE=$(date)
echo today Date is $DATE

##Arithmatic Substitution
ADD=$((2+2))
echo ADD of 2+2 = $ADD

# Access environment variable
echo Username - $USER