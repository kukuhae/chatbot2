#!/bin/bash

# 두 숫자와 연산자를 입력받습니다.
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter an operator (+ or -): " operator

# 계산을 수행하고 결과를 출력합니다.
case $operator in
    +)
        echo "Result: $(($num1 + $num2))"
        ;;
    -)
        echo "Result: $(($num1 - $num2))"
        ;;
    *)
        echo "Error: Invalid operator!"
        ;;
esac
