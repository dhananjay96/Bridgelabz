echo "Enter Number of Element: "
read no

echo "Enter array elements: "
for ((i=0; i<$no; i++))
do
read arr[$i]=$n
done

smallestNo=$(($no-2))
 echo "------------$smallestNo"
echo "Array in original order"
echo ${arr[*]}
  
function ArraySorting(){

for ((i = 0; i<5; i++))
do
      
    for ((j = 0; j<5-i-1; j++))
    do
      
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}  
            arr[$((j+1))]=$temp
        fi
    done
done
  PrintArray

  }

  function PrintArray(){
    echo "Array in sorted order :"
    echo ${arr[*]}
    echo "Second Largest number : ${arr[$smallestNo]}"
    echo "Second Smallest number : ${arr[1]}"

  }

ArraySorting