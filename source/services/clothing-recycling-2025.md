---
title: 黃大仙中信綠光二手衣物回收環保活動
tags:
  - services
layout: service-page
date: 2025-06-05
description: 忠信基金會與中信綠光合作，在黃大仙區舉辦二手衣物回收環保活動，推動社區環保意識，實踐循環經濟理念，讓愛心衣物重獲新生。
---

### 環保與愛心的完美結合

在這個講求可持續發展的時代，每一件衣物都承載著它的故事與價值。忠信基金會與中信綠光攜手合作，在黃大仙區舉辦二手衣物回收環保活動，號召社區居民將家中閒置的衣物捐贈出來，讓這些衣物得以延續生命，發揮更大的社會價值。

這不僅是一次環保行動，更是一次愛心傳遞。通過回收再利用，我們減少了資源浪費，保護了地球環境；同時，這些衣物經過清洗整理後，會送到有需要的家庭手中，溫暖更多人的心。

### 活動意義

**推動環保意識**
透過實際行動，讓社區居民認識到衣物回收的重要性，培養環保習慣，共同為保護地球出一份力。

**循環經濟實踐**
將「棄置」轉化為「循環利用」，實現資源的最大化利用，減少紡織品對環境的負擔。

**關懷弱勢群體**
回收的衣物經過整理後，會捐贈給有需要的低收入家庭和獨居長者，讓愛心得以延續。

**社區凝聚力**
活動吸引了眾多居民參與，大家齊心協力，共同為環保和慈善事業貢獻力量，增進了鄰里間的情誼。

### 活動精彩回顧

這次活動得到了社區居民的熱烈響應，大家紛紛帶著整理好的衣物前來捐贈。現場氣氛熱烈溫馨，志願者們忙碌而有序地進行分類整理工作。看看這些令人感動的瞬間：

<div id="image-gallery" class="mt-8 space-y-6">
    <img src="/images/huangdaxian-clothing-recycling-2025/IMG-20250602-WA0080.jpg" alt="二手衣物回收活動現場" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/huangdaxian-clothing-recycling-2025/IMG-20250605-WA0080.jpg" alt="志願者整理捐贈衣物" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/huangdaxian-clothing-recycling-2025/IMG-20250605-WA0095.jpg" alt="居民踴躍捐贈衣物" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/huangdaxian-clothing-recycling-2025/IMG-20250605-WA0096.jpg" alt="衣物分類整理工作" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/huangdaxian-clothing-recycling-2025/IMG-20250605-WA0220.jpg" alt="社區環保宣傳活動" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/huangdaxian-clothing-recycling-2025/IMG-20250605-WA0222.jpg" alt="愛心衣物等待新主人" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
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

### 持續的環保行動

這次活動只是一個開始。忠信基金會將繼續與社區合作伙伴攜手，定期舉辦各類環保活動，從衣物回收到其他資源再利用項目，我們致力於將環保理念融入日常生活，讓每一個人都能參與到保護地球的行動中來。

### 參與我們

如果您也想參與我們的環保活動，或者希望了解更多關於衣物回收和社區服務的信息，歡迎聯繫我們。讓我們一起，用愛心和行動，創造一個更美好、更綠色的未來！

**聯繫方式：**
- 電話：+852 5274 5160
- 電郵：info@loyalty-foundation.org

讓環保成為生活的一部分，讓愛心在社區中傳遞！
