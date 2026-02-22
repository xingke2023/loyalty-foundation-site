# Loyalty Foundation Website - 快速参考

## 🚀 快速启动

```bash
npm run dev          # 启动开发服务器 → http://localhost:4000
npm run deploy       # 构建生产版本 → public/
```

## 📝 常用命令

| 命令 | 说明 |
|------|------|
| `npm run dev` | 启动开发服务器 |
| `npm run build` | 生成静态文件 |
| `npm run clean` | 清理缓存 |
| `npm run deploy` | 清理并构建 |
| `hexo new "标题"` | 创建新文章 |
| `hexo new page "名称"` | 创建新页面 |

## 📁 重要文件位置

```
_config.yml                           # 网站配置
themes/loyalty/layout/index.ejs       # 首页内容
themes/loyalty/layout/_partial/       # 页头页脚
source/_posts/*.md                    # 博客文章
source/about/index.md                 # 关于页面
```

## 🎨 修改内容

### 修改首页
编辑 `themes/loyalty/layout/index.ejs`

### 修改页头/页脚
编辑 `themes/loyalty/layout/_partial/header.ejs` 或 `footer.ejs`

### 修改配色
编辑 `themes/loyalty/layout/layout.ejs` 中的 Tailwind 配置

### 修改网站信息
编辑根目录的 `_config.yml`

## 📮 联系信息

- 📧 info@loyalty-foundation.org
- 📞 +852 5274 5160
- 🌐 www.loyalty-foundation.org
- 📘 facebook.com/loyaltyfdn

## 💰 捐款信息

**银行**: Bank of China (HK)
**账号**: 012-611-2-044547-4
**FPS**: 110539434

## 📋 网站版本

- **Hexo**: 8.1.0
- **主题**: loyalty (自定义)
- **版本**: 1.0.0

## 🔗 有用链接

- [完整文档](README.md)
- [使用指南](USAGE.md)
- [项目信息](PROJECT_INFO.md)
- [Hexo 文档](https://hexo.io/docs/)
