#!/bin/sh

# 데이터베이스 파일명을 변수에 저장합니다.
database="DB.txt"

# 데이터베이스 파일 존재 여부를 확인합니다.
if [ ! -e "$database" ]; then
    # 데이터베이스 파일이 없으면 경고 메시지를 출력하고 스크립트를 종료합니다.
    echo "DB 파일이 없습니다."
    exit 1
fi

# 검색할 이름을 첫 번째 인자로부터 가져옵니다.
search_name="$1"

# 데이터베이스 파일에서 이름에 해당하는 정보를 검색합니다.
info=$(grep "^$search_name:" "$database")

# 검색된 정보가 있으면 그 정보를 출력합니다.
if [ -n "$info" ]; then
    echo "$info"
else
    # 정보가 없으면 사용자에게 검색 결과가 없음을 알립니다.
    echo "검색 결과가 없습니다."
fi

exit 0

