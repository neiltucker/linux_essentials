#!/bin/sh
# curl -sSL https://raw.githubusercontent.com/neiltucker/linux_essentials/main/create-csv.sh | sh

cat << 'EOF' > employees.csv
ID,FirstName,LastName
1001,John,Williams
1002,Bill,Brown
1003,Carol,Young
1004,Harry,Hunter
1005,Hazel,Smith
1006,Tony,Thomas
EOF

echo "employees.csv file has been created successfully."
