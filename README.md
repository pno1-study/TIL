# 📘 TIL – Data / Backend Practice Log

학원 실습을 통해 개발 환경 기초, GPT API 활용, SQL 실습, n8n 연동까지 단계적으로 정리한 TIL 저장소입니다.  
각 폴더는 실습 주제 단위로 구성되어 있으며, **“무엇을 해봤는지 / 왜 필요한지”** 중심으로 기록했습니다.

---

## 📂 폴더 구조
.
├── 00-intro
│   ├── markdown.md
│   ├── server.py
│   ├── test.json
│   └── gpt_test.ipynb
│
└── sql
    ├── 17-join.sql
    ├── 18-join-group.sql
    ├── 19-m-to-m.sql
    ├── 0116-m-n-data.sql
    ├── 260116_example.sql
    ├── lottery_draws.sql
    ├── lottery_n8n.sql
    ├── naver_news_n8n.sql
    └── sales-customers.sql

---

## 00-intro  
**개발 환경 적응 및 GPT API 기초 실습**

Visual Studio Code와 Jupyter Notebook을 사용해  
파일 확장자별 역할과 Python 실행 환경, 외부 API 호출 흐름을 실습했습니다.

### markdown.md  
- Markdown 파일 생성 및 편집 실습  
- README 등 개발 문서 작성을 위한 기본 문법 정리

### server.py  
- Python 파일 생성 및 실행 실습  
- 서버 파일의 기본 구조와 역할 이해

### test.json  
- JSON 파일 생성 실습  
- key-value 구조 및 API·설정 파일에서의 활용 방식 이해

### gpt_test.ipynb  
- Jupyter Notebook 환경에서 Python 코드 실행  
- GPT API를 호출해 응답 결과를 받아오는 실습  
- API Key 설정 → 요청 → 응답 처리 흐름 이해

---

## sql  
**PostgreSQL 실습 및 n8n 연동**

pgAdmin4를 사용해 SQL 파일을 직접 생성하고 실행하며,  
관계형 데이터 구조와 JOIN, 다대다 관계, 자동화 도구(n8n) 연동을 실습했습니다.

### 관계형 구조 / JOIN 실습
- **17-join.sql** : 기본 JOIN 문법 실습  
- **18-join-group.sql** : JOIN과 GROUP BY를 활용한 집계 처리  
- **19-m-to-m.sql** : 다대다(Many-to-Many) 관계 구조 이해  
- **0116-m-n-data.sql** : 다대다 관계를 적용한 데이터 예제

### 예제 및 응용
- **260116_example.sql** : 수업 중 다룬 종합 SQL 예제  
- **sales-customers.sql** : 고객–매출 관계를 가정한 데이터 구조 실습

### n8n 연동 실습
- **lottery_draws.sql** : 로또 추첨 데이터 테이블 구성  
- **lottery_n8n.sql** : n8n을 활용한 데이터 삽입·수정 실습  
- **naver_news_n8n.sql** : 외부 뉴스 데이터를 수집·저장하는 구조 실습

---

## ✍️ 정리

이 저장소는 단순한 문법 정리가 아니라,

- 파일 → 코드 → API → DB → 자동화 도구로 이어지는 데이터 흐름
- 실무에서 사용되는 데이터 처리 구조
- 개발 환경에 대한 이해와 적응 과정

을 직접 실습하며 정리한 학습 기록입니다.

---

## 🔜 향후 정리 예정
- n8n 워크플로우 구조 정리
- GPT API 결과를 DB에 저장하는 흐름
- SQL 실습 내용을 데이터 분석 관점으로 확장
