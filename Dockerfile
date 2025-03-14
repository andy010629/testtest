# 使用官方的 Python 3.9 镜像作为基础镜像
FROM python:3.9-slim

# 设置工作目录
WORKDIR /app

# 复制当前目录的文件到容器的工作目录
COPY . /app

# 安装应用所需的依赖
RUN pip install --no-cache-dir -r requirements.txt

# 暴露 FastAPI 默认端口
EXPOSE 8000

# 运行 FastAPI 应用，使用 uvicorn 作为 ASGI 服务器
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
