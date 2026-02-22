# Loyalty Foundation 网站使用指南

## 目录

1. [快速开始](#快速开始)
2. [日常操作](#日常操作)
3. [内容管理](#内容管理)
4. [主题自定义](#主题自定义)
5. [部署](#部署)

## 快速开始

### 启动开发服务器

```bash
# 方法 1: 使用 npm 脚本
npm run dev

# 方法 2: 使用启动脚本
./start.sh

# 方法 3: 直接使用 Hexo 命令
hexo server
```

服务器将在 `http://localhost:4000` 启动

### 构建生产版本

```bash
# 方法 1: 使用 npm 脚本
npm run deploy

# 方法 2: 使用部署脚本
./deploy.sh

# 方法 3: 直接使用 Hexo 命令
hexo clean && hexo generate
```

## 日常操作

### 清理缓存

```bash
npm run clean
# 或
hexo clean
```

### 生成静态文件

```bash
npm run build
# 或
hexo generate
```

### 查看已生成的文件

```bash
ls -la public/
```

## 内容管理

### 创建新博客文章

```bash
hexo new "文章标题"
```

这将在 `source/_posts/` 目录下创建一个新的 Markdown 文件。

文章示例：

```markdown
---
title: 文章标题
date: 2025-11-26
tags: [标签1, 标签2]
categories: [分类]
---

这是文章摘要...

<!-- more -->

这是完整内容...
```

### 创建新页面

```bash
hexo new page "页面名称"
```

这将在 `source/页面名称/` 目录下创建 `index.md` 文件。

### 编辑现有内容

直接编辑对应的 Markdown 文件：

- 博客文章: `source/_posts/*.md`
- 关于页面: `source/about/index.md`
- 其他页面: `source/页面名称/index.md`

### 文件结构

```
source/
├── _posts/              # 博客文章
│   └── *.md
├── about/               # 关于页面
│   └── index.md
└── 其他页面/
    └── index.md
```

## 主题自定义

自定义主题位于 `themes/loyalty/` 目录。

### 主题结构

```
themes/loyalty/
├── _config.yml          # 主题配置
├── layout/              # 布局模板
│   ├── layout.ejs      # 主布局
│   ├── index.ejs       # 首页布局
│   ├── page.ejs        # 页面布局
│   └── _partial/       # 组件
│       ├── header.ejs  # 页头
│       ├── footer.ejs  # 页脚
│       └── article.ejs # 文章
└── source/              # 主题资源
    ├── css/
    └── js/
```

### 修改首页内容

编辑 `themes/loyalty/layout/index.ejs`

### 修改页头和页脚

- 页头: `themes/loyalty/layout/_partial/header.ejs`
- 页脚: `themes/loyalty/layout/_partial/footer.ejs`

### 修改配色

在 `themes/loyalty/layout/layout.ejs` 中修改 Tailwind CSS 配置：

```javascript
tailwind.config = {
    theme: {
        extend: {
            colors: {
                primary: '#1a5f7a',      // 主色
                secondary: '#159895',    // 次色
                accent: '#57c5b6',       // 强调色
                // ... 其他颜色
            }
        }
    }
}
```

## 部署

### 本地构建

```bash
./deploy.sh
```

这将：
1. 清理缓存
2. 生成静态文件到 `public/` 目录

### 部署到 Web 服务器

#### 使用 rsync

```bash
rsync -avz public/ user@server:/var/www/html/
```

#### 使用 FTP/SFTP

使用 FTP 客户端（如 FileZilla）上传 `public/` 目录的内容到服务器。

#### 使用 GitHub Pages

1. 安装部署插件：

```bash
npm install hexo-deployer-git --save
```

2. 在 `_config.yml` 中配置：

```yaml
deploy:
  type: git
  repo: https://github.com/username/username.github.io.git
  branch: main
```

3. 部署：

```bash
hexo deploy
```

### 配置 Nginx

如果使用 Nginx，示例配置：

```nginx
server {
    listen 80;
    server_name www.loyalty-foundation.org;

    root /var/www/loyalty-foundation-site/public;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
```

## 常见问题

### 1. 修改后没有生效？

清理缓存并重新生成：

```bash
hexo clean && hexo generate
```

### 2. 如何修改网站标题？

编辑根目录的 `_config.yml` 文件：

```yaml
title: Loyalty Foundation 忠信基金會
subtitle: 'Heal Together, Stronger After'
description: '忠信基金會旨在推廣關愛文化，以愛提供資源，用愛共尋出路'
```

### 3. 如何添加图片？

将图片放在 `source/images/` 目录（需要先创建），然后在 Markdown 中引用：

```markdown
![图片描述](/images/图片名称.jpg)
```

### 4. 如何更改语言？

在 `_config.yml` 中修改：

```yaml
language: zh-HK  # 或 en, zh-CN 等
```

## 技术支持

- Hexo 官方文档: https://hexo.io/docs/
- Tailwind CSS 文档: https://tailwindcss.com/docs

## 联系方式

如有问题，请联系：
- Email: info@loyalty-foundation.org
- Phone: +852 5274 5160
