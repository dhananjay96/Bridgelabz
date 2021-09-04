count=0
sum=0
while [ $count -le 5 ]
do
	number=$((RANDOM%100))
	echo $number
    sum=$((sum+number))
	count=$((count+1))
done
echo "Sum is $sum"
echo "Average is $((sum/5))"