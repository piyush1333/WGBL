echo "enter the name of the folder"
read folderName

mkdir $folderName


echo "new directory created"

cd $folderName



for i in 1 2 3 4 
do
echo $i>"$folderName$i.txt"
done

cd ..

zip -r $folderName.zip $folderName 

length=${#folderName}
echo $length



for((j=$length-1; j>=0; j--))
do
reverseFolder="$reverseFolder${folderName:$j:1}"
done


mkdir  $reverseFolder

unzip $folderName.zip -d $reverseFolder


cp $folderName/* $reverseFolder

cd $reverseFolder

rm -rf $folderName

find -name "*.txt" -print -exec cat {} \; 





