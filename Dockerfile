i# Python 3.11.2 버전의 이미지를 기반 이미지로 사용합니다.
FROM python:3.11.2

# 컨테이너 내 작업 디렉토리를 /usr/src/app으로 설정합니다.
WORKDIR /usr/src/app

# 현재 디렉토리의 모든 파일을 컨테이너의 작업 디렉토리로 복사합니다.
COPY . .

# pip 패키지 관리자를 최신 버전으로 업그레이드합니다.
RUN python -m pip install --upgrade pip

# requirements.txt 파일에 명시된 패키지들을 설치합니다.
RUN pip install -r requirements.txt

# 작업 디렉토리를 myapp 폴더로 변경합니다.
WORKDIR ./myapp

# gunicorn을 사용하여 main.py 파일 내의 app 애플리케이션을 실행합니다.
# 애플리케이션은 0.0.0.0 IP와 포트 8001에서 바인딩됩니다.
CMD gunicorn main:app --bind 0.0.0.0:8001

# 컨테이너가 외부와 통신할 수 있도록 8001 포트를 엽니다.
EXPOSE 8001
