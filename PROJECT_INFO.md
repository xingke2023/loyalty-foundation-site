# Loyalty Foundation Website - Project Information

## 项目概述

基于 **Hexo 8.1.0** 构建的忠信基金會官方网站。

## 技术栈

- **静态网站生成器**: Hexo 8.1.0
- **模板引擎**: EJS
- **CSS 框架**: Tailwind CSS (CDN)
- **字体**: Google Fonts (Noto Sans TC)
- **Node.js**: v24.4.1
- **npm**: v11.4.2

## 项目结构

```
loyalty-foundation-site/
├── _config.yml                 # Hexo 主配置文件
├── package.json                # 项目依赖
├── README.md                   # 项目说明
├── USAGE.md                    # 使用指南
├── PROJECT_INFO.md            # 项目信息（本文件）
├── deploy.sh                   # 部署脚本
├── start.sh                    # 启动脚本
├── .gitignore                  # Git 忽略文件
│
├── source/                     # 源文件目录
│   ├── _posts/                # 博客文章
│   │   ├── Welcome-to-Loyalty-Foundation.md
│   │   └── hello-world.md
│   └── about/                 # 关于页面
│       └── index.md
│
├── themes/                     # 主题目录
│   └── loyalty/               # 自定义主题
│       ├── _config.yml        # 主题配置
│       ├── layout/            # 布局模板
│       │   ├── layout.ejs    # 主布局
│       │   ├── index.ejs     # 首页
│       │   ├── page.ejs      # 页面
│       │   └── _partial/     # 部分模板
│       │       ├── header.ejs
│       │       ├── footer.ejs
│       │       └── article.ejs
│       └── source/            # 主题资源
│           ├── css/
│           └── js/
│
├── public/                     # 生成的静态文件（不提交到 Git）
└── hexo-backup/               # 原始 HTML 文件备份

## 功能特性

### 首页内容

1. **Hero Section** - 欢迎标语和主视觉
2. **Mission Section** - 使命宗旨介绍
3. **Services Section** - 六大服务项目：
   - 手針講座
   - 五星級大廚
   - 專案南區夜繽紛慈善攤位
   - 送暖贈送福袋給獨居老人
   - 派飯送暖給露宿者
   - 公益AI粵語學習欄目

4. **Team Section** - 团队成员展示
5. **Contact & Footer** - 联系信息和页脚

### 主题特点

- 响应式设计（移动端友好）
- 双语支持（中文/英文）
- Tailwind CSS 样式
- 平滑过渡动画
- SEO 优化

## 配置信息

### 网站配置 (_config.yml)

```yaml
title: Loyalty Foundation 忠信基金會
subtitle: 'Heal Together, Stronger After'
description: '忠信基金會旨在推廣關愛文化，以愛提供資源，用愛共尋出路'
keywords: charity, foundation, hong kong, loyalty, community service, 忠信基金會
author: Loyalty Foundation
language: zh-HK
timezone: 'Asia/Hong_Kong'
url: https://www.loyalty-foundation.org
theme: loyalty
```

### 主题配色

```javascript
colors: {
    primary: '#1a5f7a',      // 主色调
    secondary: '#159895',    // 次要色
    accent: '#57c5b6',       // 强调色
    light: '#f0f9ff',        // 浅色背景
    brandBlue: '#0077B6',    // 品牌蓝
    brandTeal: '#40A8C4',    // 品牌青
    brandGray: '#666666',    // 品牌灰
    brandDark: '#1a202c',    // 深色
    brandLight: '#f0f9ff',   // 浅蓝背景
}
```

## 使用命令

### 开发

```bash
npm run dev          # 启动开发服务器
npm start            # 同上
./start.sh           # 使用脚本启动
```

### 构建

```bash
npm run build        # 生成静态文件
npm run deploy       # 清理并生成
./deploy.sh          # 使用部署脚本
```

### 清理

```bash
npm run clean        # 清理缓存和生成文件
```

### 内容管理

```bash
hexo new "文章标题"      # 创建新文章
hexo new page "页面名"   # 创建新页面
```

## 部署方式

### 方式 1: 手动部署

```bash
npm run deploy
# 然后复制 public/ 目录到 Web 服务器
```

### 方式 2: Rsync

```bash
rsync -avz public/ user@server:/var/www/html/
```

### 方式 3: GitHub Pages

安装插件并配置后：
```bash
hexo deploy
```

## 联系信息

- **网站**: https://www.loyalty-foundation.org
- **邮箱**: info@loyalty-foundation.org
- **电话**: +852 5274 5160
- **地址**: 1445, Radio City, 505 Hennessy Road, Causeway Bay, Hong Kong
- **Facebook**: https://www.facebook.com/loyaltyfdn

## 捐款信息

### 银行转账
- 账户名称: 忠信基金會 Loyalty Foundation Limited
- 银行: 中國銀行 Bank of China (Hong Kong)
- 账号: 012-611-2-044547-4

### FPS 转数快
- FPS 代码: 110539434

## 法律信息

- **慈善机构免税编号**: 91/18718
- **机构会员编号**: CM000675

## 版权

Copyright © 2023 by Loyalty Foundation. All rights reserved.

## 更新日志

### v1.0.0 (2025-11-26)
- 初始版本
- 使用 Hexo 8.1.0 构建
- 自定义 loyalty 主题
- 基于原有 HTML 页面内容
- 完整的首页、关于页面和博客功能
- 响应式设计
- 双语支持

## 下一步计划

- [ ] 添加更多博客文章
- [ ] 添加图片画廊
- [ ] 添加活动日历
- [ ] 集成捐款支付系统
- [ ] 添加志愿者注册表单
- [ ] SEO 优化
- [ ] 性能优化
- [ ] 添加多语言切换功能
- [ ] 集成社交媒体动态
- [ ] 添加 Newsletter 订阅功能

## 技术支持

如需技术支持，请参考：
- Hexo 文档: https://hexo.io/docs/
- Tailwind CSS 文档: https://tailwindcss.com/docs
- 项目 README.md
- 项目 USAGE.md
