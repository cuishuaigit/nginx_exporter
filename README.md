# nginx_exporter
nginx status exporter for prometheus.io,status_code:400,404,499,500,503.written by python.


# Usage
usage: exporter-demo.py [-h] [-e HOST] [-p PORT] -l LOG

nginx exporter args server listen address and port and log path

optional arguments:
  -h, --help            show this help message and exit
  -e HOST, --exporter HOST
                        exporter linsten address,default listen on 127.0.0.1
  -p PORT, --port PORT  exporter listen port,default port is 9119
  -l LOG, --log LOG     the log file that you want to monitor


# Install
## required
python:3.6(python2.7)
flask:1.0.2
prometheus_client:0.3.1
   pip install flask prometheus_client
   git clone https://github.com/cuishuaigit/nginx_exporter.git
   cd nginx_exporter
   chmod +x nginx_exporter
   cp nginx_exporter /usr/local/bin
# Example
## Start
nohup nginx_exporter -e 172.10.1.9 -p 9119 -l /data/nginx/access.log >/dev/null &
-e: exporter linsten address,default listen on 127.0.0.1
-p: exporter listen port,default port is 9119
-l: the log file that you want to monitor

## Configure prometheus
- job_name: 'nginx-exporter'
    static_configs:
    - targets: ['172.10.1.9:9119']

# Contributing
1、Fork it!
2、Create your feature branch: git checkout -b my-new-feature
3、Commit your changes: git commit -am 'Add some feature'
4、Push to the branch: git push origin my-new-feature
5、Submit a pull request
