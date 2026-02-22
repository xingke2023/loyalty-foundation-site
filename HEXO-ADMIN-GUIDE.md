# Hexo Admin 使用指南

忠信基金會網站遠程內容管理系統

## 訪問管理後台

### 網址
```
https://bak.loyalty-foundation.org/admin/
```

### 登入憑證
- **用戶名**: `admin`
- **第一層密碼** (Nginx Basic Auth): `loyalty2025`
- **第二層密碼** (Hexo Admin): `loyalty2025`

⚠️ **重要**: 系統採用雙重認證保護，您需要輸入兩次相同的密碼。

## 啟動管理後台服務

管理後台需要 Hexo server 運行。有兩種方式:

### 方式 1: 手動啟動 (測試用)
```bash
cd /var/www/loyalty-foundation-site
hexo server -d
```

### 方式 2: 使用啟動腳本 (推薦)
```bash
cd /var/www/loyalty-foundation-site
./start-admin.sh
```

### 方式 3: 使用 PM2 持續運行 (生產環境推薦)
```bash
# 安裝 PM2 (僅需一次)
npm install -g pm2

# 啟動服務
pm2 start hexo --name "loyalty-admin" -- server -d

# 設置開機自動啟動
pm2 startup
pm2 save

# 查看狀態
pm2 status

# 查看日誌
pm2 logs loyalty-admin

# 停止服務
pm2 stop loyalty-admin

# 重啟服務
pm2 restart loyalty-admin
```

## 使用管理後台

### 1. 創建新文章/新聞

1. 訪問 `https://bak.loyalty-foundation.org/admin/`
2. 點擊左側菜單 "Posts" 或 "New"
3. 填寫文章標題
4. 設置 Front Matter:
   ```yaml
   title: 文章標題
   date: 2025-12-02
   tags:
     - news
   categories:
     - News
   description: 文章簡介
   ```
5. 在編輯器中撰寫內容 (支持 Markdown)
6. 點擊 "Save" 保存草稿
7. 點擊 "Deploy" 發布到網站

### 2. 上傳圖片

1. 在管理後台,點擊圖片上傳按鈕
2. 或者通過 SSH/SFTP 上傳到:
   ```
   /var/www/loyalty-foundation-site/source/images/old-site-images/
   ```
3. 在文章中引用圖片:
   ```markdown
   ![圖片描述](/images/old-site-images/圖片名稱.jpg)
   ```

### 3. 使用圖片分組功能

在文章中添加多張圖片時,使用以下格式自動啟用智能分組:

```html
<div id="image-gallery" class="mt-8 space-y-6">
    <img src="/images/old-site-images/圖片1.jpg" alt="描述 1" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/圖片2.jpg" alt="描述 2" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/圖片3.jpg" alt="描述 3" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
</div>

<script>
[圖片分組 JavaScript 代碼 - 見 scaffolds/news.md]
</script>
```

💡 **提示**: 使用 `hexo new news "標題"` 或 `hexo new service "services/標題"` 命令創建的文件會自動包含此功能。

### 4. 發布到網站

在管理後台點擊 "Deploy" 按鈕,系統會自動執行:
```bash
./deploy.sh
```

這會:
1. 清理緩存
2. 生成靜態文件
3. 重新載入 Nginx
4. 驗證網站可訪問性

## 命令行操作 (進階用戶)

### 創建內容

```bash
# 創建新聞
hexo new news "2025年春節送暖活動"

# 創建服務頁面
hexo new service "services/she-qu-jian-kang-jiang-zuo"

# 創建一般文章
hexo new post "基金會年度報告"
```

### 本地預覽

```bash
hexo server
# 訪問 http://localhost:4000
```

### 部署

```bash
./deploy.sh
```

## 安全建議

1. **定期更改密碼**:
   ```bash
   # 更改 Nginx Basic Auth 密碼
   sudo htpasswd -c /etc/nginx/.htpasswd-hexo-admin admin

   # 更改 Hexo Admin 密碼
   # 生成新密碼哈希
   node -e "const bcrypt = require('bcrypt-nodejs'); console.log(bcrypt.hashSync('新密碼', bcrypt.genSaltSync(10)));"
   # 更新 _config.yml 中的 admin.password_hash
   ```

2. **限制 IP 訪問** (可選):
   在 Nginx 配置的 `/admin` location 中添加:
   ```nginx
   allow 你的IP地址;
   deny all;
   ```

3. **使用 HTTPS**: 已配置 SSL 證書,確保通過 HTTPS 訪問

## 故障排除

### 管理後台無法訪問

1. 檢查 Hexo server 是否運行:
   ```bash
   ps aux | grep hexo
   ```

2. 檢查端口 4000 是否被佔用:
   ```bash
   lsof -i:4000
   ```

3. 查看 Hexo server 日誌:
   ```bash
   pm2 logs loyalty-admin
   ```

4. 重啟服務:
   ```bash
   pm2 restart loyalty-admin
   ```

### Deploy 按鈕無效

1. 確保 `deploy.sh` 有執行權限:
   ```bash
   chmod +x /var/www/loyalty-foundation-site/deploy.sh
   ```

2. 檢查 `_config.yml` 中的 deployCommand 配置

### 圖片無法顯示

1. 確保圖片已上傳到正確目錄:
   ```bash
   ls /var/www/loyalty-foundation-site/source/images/old-site-images/
   ```

2. 檢查圖片路徑是否正確 (以 `/images/` 開頭)

3. 重新生成網站:
   ```bash
   hexo clean && hexo generate
   ```

## 聯繫支持

如有問題,請聯繫技術支持團隊。
