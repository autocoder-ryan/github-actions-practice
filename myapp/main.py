# Flask 라이브러리에서 Flask 클래스를 가져옵니다.
from flask import Flask

# Flask 애플리케이션 인스턴스를 생성합니다.
app = Flask(__name__)

# '/' 경로로 접근할 때 실행될 함수입니다.
# 'hello world!'라는 문자열을 반환합니다.
@app.route('/')
def hello_world():
    return 'hello world!'

# 이 파일이 메인 프로그램으로 실행될 때 서버를 시작합니다.
# 호스트는 '0.0.0.0', 포트는 8001로 설정됩니다.
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8001)
