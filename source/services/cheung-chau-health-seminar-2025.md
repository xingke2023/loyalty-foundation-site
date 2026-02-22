---
title: 忠信長洲健康講座
tags:
  - services
layout: service-page
date: 2025-06-25
description: 忠信基金會在長洲舉辦健康講座，邀請專業醫護人員為居民提供健康知識，關注社區健康，提升居民健康意識與生活質量。
---

### 守護社區健康，傳遞專業關懷

健康是生活的基石，也是幸福的源泉。忠信基金會深明健康對每一位居民的重要性，特別在長洲這個充滿人情味的小島社區，我們希望通過專業的健康講座，將正確的健康知識帶給每一位居民。

本次健康講座邀請了資深醫護專業人員，為長洲居民講解日常保健知識、慢性病預防與管理、營養飲食建議等實用內容。講座現場氣氛熱烈，居民們積極提問，專家耐心解答，真正做到了將健康知識送到社區，送到居民身邊。

### 講座特色

**專業醫護團隊**
邀請具豐富臨床經驗的醫護人員主講，確保健康資訊的專業性和準確性，讓居民獲得可靠的健康指導。

**實用健康知識**
涵蓋日常保健、疾病預防、營養膳食、心理健康等多個方面，內容貼近生活，易於理解和實踐。

**互動問答環節**
設有充足的問答時間，居民可以就個人健康疑問向專家諮詢，獲得個性化的健康建議。

**關注長者健康**
特別針對長洲區內眾多長者的健康需求，講解老年常見病的預防與護理，幫助長者提升生活質量。

**社區健康文化**
通過定期舉辦健康講座，在社區內建立良好的健康文化氛圍，提升整體居民的健康意識。

### 活動精彩回顧

講座當日，長洲居民踴躍參加，會場座無虛席。從專家的專業講解，到居民認真聆聽的神情，再到互動問答的熱烈場面，每一個瞬間都體現了社區對健康的重視。讓我們一起回顧這些溫馨而有意義的時刻：

<div id="image-gallery" class="mt-8 space-y-6">
    <img src="/images/cheung-chau-health-seminar-2025/IMG-20250624-WA0037.jpg" alt="健康講座現場" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/cheung-chau-health-seminar-2025/IMG-20250624-WA0039.jpg" alt="專家講解健康知識" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/cheung-chau-health-seminar-2025/IMG-20250624-WA0041.jpg" alt="居民認真聆聽" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/cheung-chau-health-seminar-2025/IMG-20250625-WA0023.jpg" alt="互動問答環節" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/cheung-chau-health-seminar-2025/IMG-20250625-WA0025.jpg" alt="長洲居民積極參與" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/cheung-chau-health-seminar-2025/IMG-20250625-WA0027.jpg" alt="健康檢查示範" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/cheung-chau-health-seminar-2025/IMG-20250625-WA0029.jpg" alt="專業醫護人員指導" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/cheung-chau-health-seminar-2025/IMG-20250625-WA0030.jpg" alt="社區健康關懷" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/cheung-chau-health-seminar-2025/IMG-20250625-WA0031.jpg" alt="長者健康諮詢" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/cheung-chau-health-seminar-2025/IMG-20250625-WA0033.jpg" alt="健康資料派發" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/cheung-chau-health-seminar-2025/IMG-20250625-WA0035.jpg" alt="講座圓滿結束" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/cheung-chau-health-seminar-2025/IMG-20250625-WA0037.jpg" alt="團隊合照留念" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    const gallery = document.getElementById('image-gallery');
    const images = Array.from(gallery.querySelectorAll('img'));

    Promise.all(images.map(img => {
        if (img.complete) return Promise.resolve();
        return new Promise(resolve => {
            img.onload = resolve;
            img.onerror = resolve;
        });
    })).then(() => {
        if (window.innerWidth >= 768) {
            groupImagesByHeight();
        }
    });

    let resizeTimer;
    window.addEventListener('resize', function() {
        clearTimeout(resizeTimer);
        resizeTimer = setTimeout(() => {
            if (window.innerWidth >= 768) {
                groupImagesByHeight();
            } else {
                gallery.className = 'mt-8 space-y-6';
                images.forEach(img => {
                    img.style.width = '100%';
                });
            }
        }, 250);
    });

    function groupImagesByHeight() {
        const imageData = images.map(img => ({
            element: img,
            height: img.naturalHeight,
            width: img.naturalWidth
        }));

        const groups = [];
        const tolerance = 0.05;

        imageData.forEach(data => {
            let foundGroup = false;
            for (let group of groups) {
                const refHeight = group[0].height;
                if (Math.abs(data.height - refHeight) / refHeight <= tolerance) {
                    group.push(data);
                    foundGroup = true;
                    break;
                }
            }
            if (!foundGroup) {
                groups.push([data]);
            }
        });

        gallery.innerHTML = '';
        gallery.className = 'mt-8 space-y-6';

        groups.forEach(group => {
            if (group.length === 1) {
                const img = group[0].element.cloneNode(true);
                img.style.width = '100%';
                gallery.appendChild(img);
            } else {
                const row = document.createElement('div');
                row.className = 'flex gap-6';

                group.forEach(data => {
                    const img = data.element.cloneNode(true);
                    img.style.flex = '1';
                    img.style.width = '0';
                    img.style.minWidth = '0';
                    row.appendChild(img);
                });

                gallery.appendChild(row);
            }
        });
    }
});
</script>

### 持續的健康服務

長洲健康講座是忠信基金會健康服務項目的重要組成部分。我們將繼續深入各個社區，定期舉辦各類健康講座和義診活動，讓專業的醫護知識走進千家萬戶，幫助更多居民建立正確的健康觀念，預防疾病，提升生活質量。

### 參與我們

如果您希望在您的社區舉辦健康講座，或者想了解更多關於我們健康服務項目的信息，歡迎隨時聯繫我們。讓我們攜手努力，共同守護社區健康！

**聯繫方式：**
- 電話：+852 5274 5160
- 電郵：info@loyalty-foundation.org

健康從了解開始，關愛從行動開始！
