# Hexo 网站部署指南

## 网站信息
- **网站名称**: Loyalty Foundation 忠信基金會
- **域名**: https://bak.loyalty-foundation.org
- **网站目录**: `/var/www/loyalty-foundation-site`
- **Nginx 配置**: `/etc/nginx/sites-enabled/bak.loyalty-foundation.org`
- **静态文件目录**: `/var/www/loyalty-foundation-site/public`

## 快速部署

使用自动化部署脚本（推荐）：

```bash
cd /var/www/loyalty-foundation-site
./deploy.sh
```

这个脚本会自动执行以下操作：
1. 清理缓存和旧的构建文件
2. 重新生成静态文件
3. 测试 Nginx 配置
4. 重新加载 Nginx
5. 验证网站可访问性

## 手动部署步骤

如果需要手动部署，按照以下步骤操作：

### 1. 清理旧文件
```bash
cd /var/www/loyalty-foundation-site
hexo clean
```

### 2. 生成静态文件
```bash
hexo generate
```

### 3. 测试 Nginx 配置
```bash
sudo nginx -t
```

### 4. 重新加载 Nginx
```bash
sudo systemctl daemon-reload
sudo systemctl reload nginx
```

### 5. 验证网站
访问 https://bak.loyalty-foundation.org 或运行：
```bash
curl -I https://bak.loyalty-foundation.org
```

## 常用 Hexo 命令

### 创建新文章
```bash
hexo new "文章标题"
```

### 创建新页面
```bash
hexo new page "页面名称"
```

### 本地预览
```bash
hexo server
# 访问 http://localhost:4000
```

### 清理缓存
```bash
hexo clean
```

### 生成静态文件
```bash
hexo generate
# 或简写
hexo g
```

## 文件结构

```
/var/www/loyalty-foundation-site/
├── _config.yml          # Hexo 主配置文件
├── package.json         # Node.js 依赖配置
├── source/              # 源文件目录
│   ├── _posts/         # 文章目录
│   ├── images/         # 图片资源
│   └── about/          # 关于页面
├── themes/              # 主题目录
│   └── loyalty/        # 当前使用的主题
├── public/              # 生成的静态文件（Nginx 服务目录）
├── deploy.sh            # 自动部署脚本
└── DEPLOYMENT.md        # 本文档

## Nginx 配置要点

- **根目录**: `/var/www/loyalty-foundation-site/public`
- **SSL 证书**: Let's Encrypt 自动管理
- **HTTP 自动跳转**: HTTP (80端口) 自动重定向到 HTTPS (443端口)
- **Gzip 压缩**: 已启用
- **安全头部**: 已配置 X-Frame-Options, X-Content-Type-Options, X-XSS-Protection

## 更新内容流程

1. 编辑或创建文章/页面
2. 本地预览（可选）：`hexo server`
3. 运行部署脚本：`./deploy.sh`
4. 验证网站更新

## 故障排查

### 网站无法访问
```bash
# 检查 Nginx 状态
sudo systemctl status nginx

# 查看 Nginx 错误日志
sudo tail -f /var/log/nginx/bak.loyalty-foundation.org-error.log

# 重启 Nginx
sudo systemctl restart nginx
```

### 静态文件未更新
```bash
# 清理并重新生成
hexo clean && hexo generate
```

### 检查 SSL 证书
```bash
# 查看证书有效期
sudo certbot certificates

# 手动续期证书
sudo certbot renew
```

## 技术栈

- **静态站点生成器**: Hexo 8.1.0
- **Web 服务器**: Nginx 1.24.0
- **Node.js**: 24.4.1
- **主题**: loyalty (自定义主题)
- **SSL**: Let's Encrypt
- **操作系统**: Ubuntu 24.04.3 LTS

## 支持与文档

- Hexo 官方文档: https://hexo.io/docs/
- Nginx 文档: https://nginx.org/en/docs/
- Let's Encrypt: https://letsencrypt.org/
