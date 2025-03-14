from fastapi import FastAPI

# 创建一个 FastAPI 实例
app = FastAPI()

# 定义一个路由，响应 GET 请求
@app.get("/")
def read_root():
    return {"message": "Hello, World!"}
