#!/bin/sh
# curl https://raw.githubusercontent.com/neiltucker/linux_essentials/main/create-csv.sh | sh

# Create an employees records comma-delimited file (ID, FirstName, LastName)
echo "ID,FirstName,LastName" > employees.csv
echo "1001,John,Williams" >> employees.csv
echo "1002,Bill,Brown" >> employees.csv
echo "1003,Carol,Young" >> employees.csv
echo "1004,Harry,Hunter" >> employees.csv
echo "1005,Hazel,Smith" >> employees.csv
echo "1006,Tony,Thomas" >> employees.csv

echo "employees.csv file has been created successfully."
