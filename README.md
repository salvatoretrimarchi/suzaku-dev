SUZAKU项目开发环境
================
## 使用说明

本项目会在本地80端口启动HTTP服务

1. 下载项目代码
```
./suzaku-dev.sh init
```
2. 下载docker镜像
```
docker-compose pull
```

3. 启动docker container
```
docker-compose up -d
```

4. 初始化数据库
```
python init-db.py
```

5. 浏览器打开[http://127.0.0.1/](http://127.0.0.1/)，管理员账号为: admin/admin

6. 安装应用 Suzaku mes system
