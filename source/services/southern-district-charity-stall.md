---
title: 南區夜繽紛慈善攤位活動
date: 2025-11-26 10:10:00
description: 忠信基金會參與南區夜繽紛活動，設立慈善攤位義賣禮品及舉辦遊戲，為有需要人士籌集善款，促進社區互動，傳遞關愛文化。
tags:
  - services
layout: service-page
---

### 社區互動與慈善籌款

我們積極參與南區的「夜繽紛」活動，設立慈善攤位。透過義賣各種精美禮品、手工藝品及舉辦趣味小遊戲，我們希望能聚集社區的力量，為有需要的人士籌集善款。

這不僅是一個籌款活動，更是一個與街坊鄰里交流互動的平台，讓大家在歡樂的氛圍中了解我們的慈善理念，共同為社區注入正能量。

### 活動精彩瞬間

攤位上熱鬧非凡，充滿了歡笑與愛心：

<div id="image-gallery" class="mt-8 space-y-6">
    <img src="/images/old-site-images/bdd35b_47df2a13b744453e913cd6efdbe6d7cb~mv2.jpg" alt="慈善攤位花絮 1" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_f05fa6c64d9c42d7a8a38a878eb21c08~mv2.jpg" alt="慈善攤位花絮 2" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_a73766b9b9784f609831d0ee7f9b7350~mv2.jpg" alt="慈善攤位花絮 3" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_409293e78d814ace9b594537a556f45a~mv2.jpg" alt="慈善攤位花絮 4" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_65146b9a521b491c8f82eb197d13a964~mv2.jpg" alt="慈善攤位花絮 5" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_077878b570c94c198a54c89950bf30a0~mv2.jpg" alt="慈善攤位花絮 6" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
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

### 感謝支持

感謝每一位到場支持的朋友和辛勤付出的義工，是因為有你們，我們的社區才變得更加溫暖。
