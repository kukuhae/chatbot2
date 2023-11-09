#!/bin/bash

# 사용자로부터 몸무게(kg)와 신장(m)을 입력받습니다.
read -p "몸무게(kg)를 입력하세요: " weight
read -p "신장(m)을 입력하세요: " height

# BMI를 계산합니다.
bmi=$(echo "scale=2; $weight / ($height * $height)" | bc)

# BMI에 따라 체중 상태를 판단하고 결과를 출력합니다.
if (( $(echo "$bmi >= 18.5" | bc -l) )) && (( $(echo "$bmi < 23" | bc -l) )); then
    echo "당신은 정상 체중입니다."
elif (( $(echo "$bmi >= 23" | bc -l) )); then
    echo "당신은 과체중입니다."
else
    echo "당신은 저체중입니다."
fi

