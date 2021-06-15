FROM alpine:latest
WORKDIR /app

RUN apk add --no-cache python3 py3-pip

COPY pip_requirements.txt .
RUN python3 -m pip install -r pip_requirements.txt

COPY app.py .
COPY start.sh .

CMD ["./start.sh"]
