# nginx_exporter

nginx status exporter for prometheus.io,status_code:400,401,403,404,413,499,500,502,503,504 written by python.


# Usage
usage: exporter-demo.py [-h] [-e HOST] [-p PORT] -l LOG

nginx exporter args server listen address and port and log path

optional arguments:

 &nbsp;&nbsp;&nbsp; -h, --help            show this help message and exit
  
 &nbsp;&nbsp;&nbsp; -e HOST, --exporter HOST   exporter linsten address,default listen on 127.0.0.1
  
 &nbsp;&nbsp;&nbsp; -p PORT, --port PORT  exporter listen port,default port is 9119
  
 &nbsp;&nbsp;&nbsp; -l LOG, --log LOG     the log file that you want to monitor


# Install

## required

python:3.6(python2.7)<br>

flask:1.0.2<br>

prometheus_client:0.3.1

 &nbsp;&nbsp;&nbsp;  pip install flask prometheus_client
   
 &nbsp;&nbsp;&nbsp;  git clone https://github.com/cuishuaigit/nginx_exporter.git
   
 &nbsp;&nbsp;&nbsp;  cd nginx_exporter
   
 &nbsp;&nbsp;&nbsp;  chmod +x nginx_exporter
   
 &nbsp;&nbsp;&nbsp;  cp nginx_exporter /usr/local/bin
   
# Example
## Start
nohup nginx_exporter -e 172.10.1.9 -p 9119 -l /data/nginx/access.log >/dev/null &

&nbsp;&nbsp;&nbsp;-e: exporter linsten address,default listen on 127.0.0.1

&nbsp;&nbsp;&nbsp;-p: exporter listen port,default port is 9119

&nbsp;&nbsp;&nbsp;-l: the log file that you want to monitor

## Configure prometheus
\- job_name: 'nginx-exporter'

    static_configs:
    
    - targets: ['172.10.1.9:9119']

# Contributing
1、Fork it!

2、Create your feature branch: git checkout -b my-new-feature

3、Commit your changes: git commit -am 'Add some feature'

4、Push to the branch: git push origin my-new-feature

5、Submit a pull request
