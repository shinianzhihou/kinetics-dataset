while read one;
do
    echo "$one"
    axel "${one}" -q -n 100
done < $1

