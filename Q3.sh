#!/bin/bash

# fib() function এর কাজ হচ্ছে fibonacci series তৈরি করা
function fib() {
    first=0
    second=1
    current=0
    echo -n "The Series: 0 1" # সুন্দর আউটপুট জন্য মাত্র

    # যদি input 0 হয়
    if [ $1 -eq 0 ]; then
        return 0
    # যদি input 1 হয়
    elif [ $1 -eq 1 ]; then
        return 1
    # যদি input 2 এর চেয়ে বড় হয়
    else
        for (( i=2; i<$1; i++ ))
        do
            current=`expr $first + $second`
            echo -n " $current"  # সুন্দর আউটপুট জন্য মাত্র
            first=$second
            second=$current
        done
        echo ""  # সুন্দর আউটপুট জন্য মাত্র
        return $current
    fi
}

# main() function এর কাজ হচ্ছে user input নেওয়া, fib() ফাংশন কে কল করে আউটপুট তৈরি করা
function main() {
    n=$1
    fib $n
    echo "$1th fibonacci: $?" # ফাইনাল আউটপুট
}

main $1
