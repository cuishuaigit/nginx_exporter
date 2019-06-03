FROM jfloff/alpine-python:3.6-slim
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple flask prometheus_client \
   && apk add --no-cache git \
   && git clone https://github.com/cuishuaigit/nginx_exporter.git \
   && cd nginx_exporter \
   && chmod +x nginx_exporter \
   && cp nginx_exporter /usr/bin
EXPOSE 9119
ENTRYPOINT ["nginx_exporter"]
