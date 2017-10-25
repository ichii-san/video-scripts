# id=$(echo $1 | sed -n "s/.*nicovideo.jp\/watch\/\(sm.*\)/\1/p")
# echo $id

# ./download.sh $1
filename=$(find . -name $1* | sed -n "s/\.\/\(.*\)/\1/p")
# echo $filename
length=$(./getlength.sh $filename)
period=$(./divideby16.sh $length)
# echo $period
directory=screenshots-$1
mkdir $directory
./capture.sh $filename $period $directory
./montage.sh $1
