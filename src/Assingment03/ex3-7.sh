#!/bin/sh

# 첫 번째 인자로 받은 폴더 이름이 존재하는지 확인합니다.
if [ -d "$1" ]
then
   # 폴더가 이미 존재하면 아무 것도 하지 않습니다. ':'는 빈 연산입니다.
   :
else
   # 폴더가 존재하지 않으면 새로운 폴더를 만듭니다.
   mkdir $1
   # 새로 만든 폴더로 이동합니다.
   cd $1
   # 5개의 파일을 만들기 위한 카운터 변수를 초기화합니다.
   i=0
   # i가 5보다 작을 때까지 반복합니다.
   while [ $i -lt 5 ]
   do
       # file0, file1, ...과 같은 이름으로 폴더를 생성합니다.
       mkdir file$i
       # file0.txt, file1.txt, ...과 같은 이름으로 파일을 생성합니다.
       touch "file$i.txt"
       # 각 파일에 대한 심볼릭 링크를 해당 폴더 내에 생성합니다.
       ln -s file$i.txt file$i/file$i.txt
       # 카운터를 1 증가시킵니다.
       i=$((i + 1))
   done

fi 

exit 0

