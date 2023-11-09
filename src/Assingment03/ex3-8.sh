#!/bin/sh
	
# 데이터베이스 파일명을 변수에 저장합니다.
database="DB.txt"

# 데이터베이스 파일이 존재하지 않으면 새로 생성합니다.
if [ ! -e "$database" ]; then
    touch "$database"
fi

# 첫 번째 인자(이름)를 변수에 저장합니다.
name="$1"
# 두 번째 인자(정보)를 변수에 저장합니다.
info="$2"

# 이름과 정보를 데이터베이스 파일에 추가합니다.
echo "$name: $info" >> "$database"

# 사용자에게 정보 추가 완료 메시지를 출력합니다.
echo "정보가 DB.txt 파일에 추가되었습니다."

exit 0
