FROM python:3.8
EXPOSE 8000

WORKDIR /usr/src/app

COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN export PATH=$PATH:$HOME/.local/bin
CMD uvicorn hello.main:app --reload