
#!/bin/bash

echo "Simple Interest Calculator"
echo "--------------------------"

read -p "Enter principal amount: " principal
read -p "Enter annual rate of interest (%): " rate
read -p "Enter time period (years): " time

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" \
    'BEGIN { printf "%.2f", (p * r * t) / 100 }')

total=$(awk -v p="$principal" -v i="$interest" \
    'BEGIN { printf "%.2f", p + i }')

echo "--------------------------"
echo "Simple Interest: $interest"
echo "Total Amount: $total"
