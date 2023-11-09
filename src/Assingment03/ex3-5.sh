#!/bin/bash

# 내부 함수 정의
run_command() {
  # 함수에 전달된 첫 번째 인자를 ls 명령어의 옵션으로 사용합니다.
  ls $1
}

# 스크립트를 사용하여 함수를 호출하고 인자를 전달합니다.
# 예시: 현재 디렉토리의 파일들을 자세히(list) 보여주는 옵션을 사용
run_command "-l"

# 사용자로부터 입력받은 옵션으로 ls 명령어를 실행하는 예시
read -p "Enter the ls command options: " options
run_command "$options"

