# linux-practice

EC2 학습 환경 관리 스크립트

## setup.sh

새 인스턴스 초기 세팅. 패키지 설치, Docker, 타임존, 방화벽 설정.

```bash
./setup.sh
```

실행 후 docker 그룹 적용을 위해 재접속 필요.

## check.sh

시스템 상태 점검. 디스크/메모리/컨테이너 현황과 디스크 사용률 경고.

```bash
./check.sh
```
