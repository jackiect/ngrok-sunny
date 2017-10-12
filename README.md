# ngrok-sunny
国内内网穿透服务商sunny的python版ngrok Docker化


## 使用示例
- 构建镜像: `docker build -t jacktan1991/ngrok-sunny .`
- 运行默认ngrok实例(78abf60bad8281af): `docker run --rm --name ngrok-sunny jacktan1991/ngrok-sunny`, 对应访问地址: http://tzai.free.ngrok.cc/
- 运行其他ngrok实例(2220899471a68db1): `docker run --rm --name ngrok-sunny jacktan1991/ngrok-sunny 2220899471a68db1`, 对应访问地址: http://djuncle.free.ngrok.cc/

### 代理其他container
事先已在sunny上配置好167bc4b9187dd399隧道代理的是`dockerdjango:8088`

- `docker run -it --rm --name py-server python:2.7 /bin/sh -c 'cd /root/; echo Hello World! Ngrok Sunny! > index.html; python -m SimpleHTTPServer 8088'`
- `docker run --rm --name ngrok-sunny --link py-server:dockerdjango jacktan1991/ngrok-sunny 167bc4b9187dd399` 对应访问地址: http://dockerdjango.free.ngrok.cc/

### docker-compose版示例
- `docker-compose -f docker-compose.tutorial.yml up`: 对应访问地址: http://dockerdjango.free.ngrok.cc/

