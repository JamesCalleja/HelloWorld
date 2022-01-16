FROM python:3.8

WORKDIR /usr/src/app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
RUN export PATH=$PATH:$HOME/.local/bin
CMD ["uvicorn", "--host", "0.0.0.0", "--port", "8000", "hello.main:app", "--reload"]
EXPOSE 8000