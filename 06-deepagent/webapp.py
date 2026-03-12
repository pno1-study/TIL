# webapp.py
# Slack -> 메세지 들어온 알람 -> webapp.py 에서 받고 -> Agent 실행
# uv pip install fastapi

from fastapi import FastAPI, Request
from app import graph
from langchain.messages import HumanMessage

app = FastAPI()

# localhost:2024/slack/webhook
# curl -X POST http://localhost:2024/slack/webhook
# curl -X POST http://localhost:2024/slack/webhook -d '{"a": "b"}' -> return {'ok': True} 일때의 전달이 정상인지 테스트

# slack/webhook 하기 전에 langgraph.json 에 다음 값 추가 필요
# "http": {
#        "app": "./webapp.py:app"
#    }
@app.post('/slack/webhook')
async def slack_webhook(req: Request):
    from pprint import pprint
    print('-----------------------')
    # print(req)
    payload = await req.json()
    # print(payload)
    # pprint(payload)
    # pprint(payload['event'].get('text', ''))
    # pprint(payload['event'].get('files', []))
    text = payload['event'].get('text', '')
    files_info = payload['event'].get('files', [])
    files = []
    for file in files_info:
        files.append(
            {
               'name': file['name'],
               'link': file['url_private_download']
            }
        )
    
    print(text, files)
    print('-----------------------')
    return {'ok': True}

    # slack에 최초 등록 때만 쓰는 코드
    # return {'challenge': payload['challenge']}