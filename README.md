# ngrok-sunny
国内内网穿透服务商sunny的python版ngrok Docker化


## 使用示例
- 构建镜像: `docker build -t jacktan1991/ngrok-sunny .`
- 运行默认ngrok实例(78abf60bad8281af): `docker run --rm --name ngrok-sunny jacktan1991/ngrok-sunny`, 对应访问地址: http://tzai.free.ngrok.cc/
- 运行其他ngrok实例(2220899471a68db1): `docker run --rm --name ngrok-sunny jacktan1991/ngrok-sunny 2220899471a68db1`, 对应访问地址: http://djuncle.free.ngrok.cc/

