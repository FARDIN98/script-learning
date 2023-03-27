# Change directory to /tmp
cd /tmp

# Create a new directory named CSE4510_A_131
mkdir "CSE4510_A_131"

# Copy file.txt, file2.txt, and file3.txt from ~/Downloads/ to /tmp/CSE4510_A_131/
cp ~/Downloads/file.txt /tmp/CSE4510_A_131/New_File1.txt
cp ~/Downloads/file2.txt /tmp/CSE4510_A_131/New_File2.txt
cp ~/Downloads/file3.txt /tmp/CSE4510_A_131/New_File3.txt

# Create an empty file named File4.txt
touch File4.txt

# Concatenate the contents of New_File1.txt and New_File2.txt and append the output to File4.txt
cat New_File1.txt New_File2.txt >> File4.txt

# Sort the contents of New_File3.txt and File4.txt, and write the sorted output to a new file named File_131.txt
sort New_File3.txt File4.txt > File_131.txt

# Count the number of words and lines in File_131.txt
wc -w -l File_131.txt

# Display lines 2 to 9 of File_131.txt
head -9 File_131.txt | tail -8

# Create a new user with the username 011201131, and set a password for the user
sudo useradd 011201131
sudo passwd 011201131

#the write permission for File_131.txt
chmod -rw File_131.txt

# Switch to user 011201131
su 011201131

# Open File_131.txt in the Gedit text editor
gedit File_131.txt

# Switch back to the root user
su root

# Display lines from file.txt, file2.txt, and file3.txt that match the pattern [three letter month abbreviation].[one digit day],[four digit year]
cat file.txt file2.txt file3.txt | grep -i -E "[a-zA-Z]{3}[.]{1} [0-9]+[,]{1} [0-9]{4}"

# Display lines from file.txt, file2.txt, and file3.txt that match the pattern [three letter month abbreviation].[four digit year] but exclude lines that start with Sep
cat file.txt file2.txt file3.txt | grep -i -E "[a-zA-Z]{3}[.]{1} [0-9]{4}" grep -i -v "^Sep"

# Change directory to /tmp
cd /tmp

# Remove the directory CSE4510_A_131 and its contents recursively and forcefully
rm -rf "CSE4510_A_131"
