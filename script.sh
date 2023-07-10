echo -e "\n\n************* CREATING A NUMBER OF FILES AND ADDING"
echo -e " THEM TO THE PROJECT AND COMMITTING\n\n"

n=0
while [ $n -lt 64 ] ; do
n=$(($n+1))
file=file$n
echo file > $file
if [ "$n" == "19" ] ; then
echo BAD >> $file
fi
git add $file
git commit $file -s -m"$file"
git tag $file
echo I added and committed $file
done
echo -e "\n\n************* I PUT THE BAD LINE IN file19\n\n"
