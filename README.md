SUZAKU项目开发环境
================
## 单机版使用说明

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

## SAAS版使用说明

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

4. 初始化数据库，耗时较长，请耐心等待
```
docker-compose exec -u root app bash

export INIT_SAAS_TOOLS="--portal-create \
                        --server-create \
                        --plan-create \
                        --odoo-script=/mnt/odoo-source/odoo-bin \
                        --odoo-config=/mnt/config/odoo-server.conf \
                        --admin-password=admin \
                        --portal-db-name=127.0.0.2 \
                        --server-db-name=127.0.0.1 \
                        --plan-template-db-name=template-1 \
                        --plan-clients=demo-%i \
                        "
bash /install-odoo-saas.sh

PGUSER=suzaku PGPASSWORD=suzaku PGHOST=db PGPORT=5432 NEW_ADMIN_PASSWORD=admin python /reset-admin-passwords.py
```

5. SAAS管理后台为[http://127.0.0.2/](http://127.0.0.2/)，管理员账号为: admin/admin

6. MES实例登录门户为[http://127.0.0.1/](http://127.0.0.1/)
