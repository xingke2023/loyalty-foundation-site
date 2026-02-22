# URL Migration: Pinyin to English

## Date: 2026-02-04

## Overview
All service page URLs have been migrated from Chinese Pinyin to English for better SEO and international accessibility.

## Files Renamed

| Old Filename (Pinyin) | New Filename (English) | Service Title |
|----------------------|------------------------|---------------|
| gong-yi-ai-yue-yu-xue-xi-lan-mu.md | ai-cantonese-learning.md | 公益AI粵語學習欄目 |
| shou-zhen-jiang-zuo.md | acupuncture-seminar.md | 手針講座 |
| wu-xing-ji-da-chu.md | five-star-chef.md | 五星級大廚 |
| nan-qu-ye-bin-fen-ci-shan-tan-wei.md | southern-district-charity-stall.md | 南區夜繽紛慈善攤位 |
| song-nuan-zeng-song-fu-dai-gei-du-ju-lao-ren.md | elderly-gift-bags.md | 送暖贈送福袋給獨居老人 |
| pai-fan-song-nuan-gei-lu-su-zhe.md | homeless-meal-distribution.md | 派飯送暖給露宿者 |
| huangdaxian-lvguang-ershow-yiwu-huishou-2025.md | clothing-recycling-2025.md | 黃大仙中信綠光二手衣物回收環保活動 |
| cheung-chau-jiankang-jiangzuo-2025.md | cheung-chau-health-seminar-2025.md | 忠信長洲健康講座 |
| zhong-xin-song-nuan-dao-shan-qu-2026.md | warmth-to-mountains-2026.md | 忠信送暖到山區2026 |
| ci-shan-fan-chuan-ti-yan-ri.md | charity-sailing-experience.md | 慈善帆船體驗日 |
| jin-rong-pai-zhao-ji-chuan-bo-fu-wu-gong-yi-zhi-yuan-zhong-xin.md | financial-maritime-support-center.md | 金融牌照及船舶服務公益支援中心 |
| xuan-xue-yi-gong-dui-feng-shui-ming-li-gong-yi-fu-wu.md | fengshui-volunteer-service.md | 玄學義工隊風水命理公益服務 |
| ai-gong-yi-zhang-zhe-jian-kang-ai-zhu-li.md | elderly-health-ai-assistant.md | AI公益:長者健康AI助理 |

## URL Changes

### Old URLs (Pinyin)
- `/services/shou-zhen-jiang-zuo.html`
- `/services/wu-xing-ji-da-chu.html`
- `/services/gong-yi-ai-yue-yu-xue-xi-lan-mu.html`
- etc.

### New URLs (English)
- `/services/acupuncture-seminar.html`
- `/services/five-star-chef.html`
- `/services/ai-cantonese-learning.html`
- etc.

## Files Modified

1. **Source Files**: All 13 service Markdown files in `source/services/` renamed
2. **Homepage Template**: `themes/loyalty/layout/index.ejs` - Updated all service URLs in both:
   - Projects section (services array, lines 156-216)
   - Columns section (columns array, lines 242-279)

## Deployment

```bash
cd /var/www/loyalty-foundation-site
hexo clean
hexo generate
sudo systemctl reload nginx
```

## Verification

All new URLs are live and accessible at:
- https://www.loyalty-foundation.org/services/[english-name].html

Example working URLs:
- https://www.loyalty-foundation.org/services/acupuncture-seminar.html
- https://www.loyalty-foundation.org/services/ai-cantonese-learning.html
- https://www.loyalty-foundation.org/services/warmth-to-mountains-2026.html

## Notes

- Old pinyin URLs will return 404 errors (no redirects implemented)
- All internal links have been updated in the homepage template
- File content (Chinese titles and descriptions) remains unchanged
- Only filenames and URLs were translated to English
- Consider implementing 301 redirects if old URLs were indexed by search engines

## Future Recommendations

If you need to support old URLs, consider adding redirects in Nginx:
```nginx
rewrite ^/services/shou-zhen-jiang-zuo\.html$ /services/acupuncture-seminar.html permanent;
rewrite ^/services/wu-xing-ji-da-chu\.html$ /services/five-star-chef.html permanent;
# ... etc
```
