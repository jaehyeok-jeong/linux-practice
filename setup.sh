#!/bin/bash

echo "=== EC2 초기 세팅 시작==="

echo "--- 패키지 목록 갱신 ---"
sudo apt update

echo "--- 기본 유틸리티 설치 ---"
sudo apt install -y git curl vim htop net-tools

echo "--- Docker 설치 ---"
sudo apt install -y docker.io
sudo usermod -aG docker ubuntu

echo "--- 타임존 설정 ---"
sudo timedatectl set-timezone Asia/Seoul

echo "--- 방화벽 설정 ---"
sudo ufw allow OpenSSH
sudo ufw --force enable

echo "--- 셸 설정 ---"
cat > ~/.bash_aliases << 'ALIASEOF'
export EDITOR=vim
alias ll='ls -la'
alias ..='cd ..'
alias lp='cd ~/linux-practice'
alias gs='git status'
alias gl='git log --oneline'
ALIASEOF

echo ""
echo "=== 완료 ==="
echo "docker 그룹 적용을 위해 재접속이 필요합니다."
