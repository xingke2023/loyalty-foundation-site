---
title: 忠信送暖到山區2026
date: 2025-11-20 10:00:00
description: 忠信基金會舉辦「忠信送暖到山區2026」活動，深入山區為有需要人士送上溫暖與物資，傳遞關愛。
tags:
  - services
layout: service-page
---

### 傳遞愛心，溫暖山區

忠信基金會於 2025 年 11 月舉辦了「忠信送暖到山區2026」慈善活動。我們深入山區，為當地的居民和有需要的家庭送上生活必需品和溫暖的問候。

此次活動旨在推廣關愛文化，實踐我們「愛•無窮」的信念。透過實際行動，我們希望讓山區的朋友們感受到來自社會的關懷與支持，與他們攜手共度寒冬。

### 活動花絮

*(以下圖片為活動精彩瞬間，更多照片整理中)*

<div id="image-gallery" class="mt-8 space-y-6">
    <img src="/images/mountains-2026/IMG-20251120-WA0060.jpg" alt="送暖到山區花絮 1" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0061.jpg" alt="送暖到山區花絮 2" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0062.jpg" alt="送暖到山區花絮 3" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0063.jpg" alt="送暖到山區花絮 4" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0064.jpg" alt="送暖到山區花絮 5" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0065.jpg" alt="送暖到山區花絮 6" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0066.jpg" alt="送暖到山區花絮 7" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0069.jpg" alt="送暖到山區花絮 8" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0070.jpg" alt="送暖到山區花絮 9" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0071.jpg" alt="送暖到山區花絮 10" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0072.jpg" alt="送暖到山區花絮 11" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0073.jpg" alt="送暖到山區花絮 12" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0074.jpg" alt="送暖到山區花絮 13" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0075.jpg" alt="送暖到山區花絮 14" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/mountains-2026/IMG-20251120-WA0080.jpg" alt="送暖到山區花絮 15" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    const gallery = document.getElementById('image-gallery');
    const images = Array.from(gallery.querySelectorAll('img'));

    // Wait for all images to load
    Promise.all(images.map(img => {
        if (img.complete) return Promise.resolve();
        return new Promise(resolve => {
            img.onload = resolve;
            img.onerror = resolve;
        });
    })).then(() => {
        // Only apply grouping on desktop (md breakpoint and above)
        if (window.innerWidth >= 768) {
            groupImagesByHeight();
        }
    });

    // Re-group on window resize
    let resizeTimer;
    window.addEventListener('resize', function() {
        clearTimeout(resizeTimer);
        resizeTimer = setTimeout(() => {
            if (window.innerWidth >= 768) {
                groupImagesByHeight();
            } else {
                // Reset to single column on mobile
                gallery.className = 'mt-8 space-y-6';
                images.forEach(img => {
                    img.style.width = '100%';
                });
            }
        }, 250);
    });

    function groupImagesByHeight() {
        // Get natural heights of all images
        const imageData = images.map(img => ({
            element: img,
            height: img.naturalHeight,
            width: img.naturalWidth
        }));

        // Group images by height (with 5% tolerance)
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

        // Clear gallery and rebuild with grouped layout
        gallery.innerHTML = '';
        gallery.className = 'mt-8 space-y-6';

        groups.forEach(group => {
            if (group.length === 1) {
                // Single image - full width
                const img = group[0].element.cloneNode(true);
                img.style.width = '100%';
                gallery.appendChild(img);
            } else {
                // Multiple images of same height - create a row
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

### 參與我們

如果您希望支持我們的山區送暖行動，或想了解更多詳情，歡迎聯繫我們。讓我們一起將愛心傳遞到更遠的地方！
