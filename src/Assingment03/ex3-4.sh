#!/bin/bash

while true; do
    # 질문을 던집니다.
    read -p "리눅스가 재미있나요? (yes / no) " answer

    # 입력값에 따라 분기하여 처리합니다.
    case $answer in
        [Yy]|[Yy][Ee][Ss])
            echo "리눅스를 즐기고 있어서 다행입니다!"
            break
            ;;
        [Nn]|[Nn][Oo])
            echo "아쉽네요. 더 재미있는 경험이 되도록 해봅시다!"
            break
            ;;
        *)
            echo "잘못된 입력입니다. 'yes' 또는 'no'로 답변해주세요."
            ;;
    esac
done

