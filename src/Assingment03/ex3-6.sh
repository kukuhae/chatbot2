#!/bin/bash

# 폴더 이름을 변수로 설정합니다.
폴더_이름="files"

# 해당 이름의 폴더가 없으면 생성합니다.
if [ ! -d "$폴더_이름" ]; then
  mkdir "$폴더_이름"
fi

# 해당 폴더로 이동합니다.
cd "$폴더_이름"

# 5개의 파일을 생성합니다.
touch file0.txt file1.txt file2.txt file3.txt file4.txt

# 생성한 파일들을 files.tar로 압축합니다.
tar -cvf files.tar *.txt

# 압축 해제할 새로운 폴더를 생성합니다.
새_폴더_이름="new_files"
mkdir "$새_폴더_이름"

# 압축 파일을 새 폴더에 해제합니다.
tar -xvf files.tar -C "$새_폴더_이름"

