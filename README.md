# README

## 使用 Docker 部署 2 个 wordpress websites on Ubuntu VPS。

- `docker-compose.yml`: compose file for deploy wordpress and mysql containers.
- `src-yaoyingying`: 本地存放 `yaoyingying.com` 的 WordPress 源码（主题/插件等），项目启动后需**手动复制到对应容器**中。
- `src-hugoworld`: 本地存放 `hugo-world.com` 的 WordPress 源码（主题/插件等），项目启动后需**手动复制到对应容器**中。
- `.nginx`: 宿主机上的 Nginx 反向代理配置。
- `.mysql-init`: MySQL 初始化脚本。

## 测试并重载 Nginx

```bash
nginx -t
systemctl reload nginx
```

## 一键开启 HTTPS（推荐）

```bash
certbot --nginx \
-d yaoyingying.com \
-d www.yaoyingying.com \
-d hugo-world.com \
-d www.hugo-world.com
```

certbot 会自动：

- 生成证书
- 配置 HTTPS
- 添加 HTTP → HTTPS 跳转
- 设置自动续期

