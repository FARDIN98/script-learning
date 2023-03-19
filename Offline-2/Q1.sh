#!/bin/bash

# ফাংশন sum_of_series() শুরু
function sum_of_series(){
    # sum এর মান ০
    sum=0
    # i = $1 এর মান হলো ১ম আর্গুমেন্ট, sum_of_series ফাংশনে এর মান input এর সমান
    for (( i=1; i<=$1;i++ ))
    do
    # expr এর মান expression। এক্সপ্রেশনের মাধ্যমে কর্মপরিকল্পনা করা হচ্ছে
    sum=expr $sum + $i
    done
    # যোগফলটি রিটার্ন করা হচ্ছে
    return $sum
}

# ফাংশন main() শুরু
function main() {
    # ব্যবহারকারী যখনই সঠিক ইনপুট না দেয় তখন পর্যন্ত এই অসীম লুপ চলবে
    for (( ; ; ))
    do
	# ইনপুট নেওয়া হচ্ছে
	read input
	# ইনপুট যদি সংখ্যা হয় এবং ০ এর চেয়ে বড় হয় তবে নিম্নলিখিত কাজ হবে
	if [ $input -ge 0 ] 2>/dev/null; then
		# sum_of_series ফাংশনকে কল করা হচ্ছে এবং ফলাফলটি প্রিন্ট করা হচ্ছে
		sum_of_series $input
		echo "The sum is: $?"
		# লুপ থেকে বের হওয়ার জন্য ব্রেক ব্যবহার করা হচ্ছে
		break
	else
		# ইনপুট যদি সংখ্যা না হয় তবে একটি মেসেজ প্রিন্ট করা হবে
		echo "Invalid Input! Please Try Again!"
	fi
done
