export files=`ls ./*/configure`
echo "configure files: $files"
for file in $files
do
    echo "Patching file: $file"
    sed -i -e "s/'-MT -O2'/'-MD -O2'/g" $file
done