#!/bin/bash


HOST=$(hostname)
NOW=$(date '+%Y-%m-%d %H:%M')

echo "=== $HOST 시스템 상태 ($NOW) ==="
echo ""

echo "--- 디스크 ---"
df -h /
echo ""

echo "--- 메모리 ---"
free -h
echo ""

echo "--- 도커 ---"
docker ps -a
echo ""
echo "--- 점검 ---"

USAGE=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$USAGE" -gt 80 ]; then
	echo "경고: 디스크 사용률 ${USAGE}% - 정리 필요"
else
	echo "정상: 디스크 사용률 ${USAGE}%"
fi

echo ""
