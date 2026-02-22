---
title: 五星級大廚教授製作復活蛋
date: 2025-11-26 10:05:00
description: 忠信基金會邀請五星級酒店大廚教授製作復活蛋，提供烹飪培訓和食物派發服務，讓社區家庭感受節日氣氛，促進親子互動和社區共融。
tags:
  - services
layout: service-page
---

### 節日特別活動：傳遞愛與歡樂

復活節是一個充滿希望與重生的節日。為了讓社區內的家庭感受節日氣氛，我們特別邀請了五星級酒店的大廚，親臨指導大家製作精美的復活蛋。

這不僅是一次烹飪教學，更是一次親子互動和社區共融的機會。在製作過程中，大家互相合作，分享創意，臉上都洋溢著燦爛的笑容。

### 活動精彩回顧

看看大家專注製作和展示成品的快樂時刻：

<div id="image-gallery" class="mt-8 space-y-6">
    <img src="/images/old-site-images/bdd35b_da784c9491804a53be76eb9758c6ed8d~mv2.jpg" alt="製作復活蛋花絮 1" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_815687d38d6e4c778bc836df691d0e25~mv2.jpg" alt="製作復活蛋花絮 2" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_3bed048a96aa491883b73b4fae555f63~mv2.jpg" alt="製作復活蛋花絮 3" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_57bb037d4fc6490d839c9fbfa19749b5~mv2.jpg" alt="製作復活蛋花絮 4" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_c4cd7a35eb264225979bae33d6a6e177~mv2.jpg" alt="製作復活蛋花絮 5" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
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

### 關於五星級大廚項目

除了節日特別活動，我們的「五星級大廚」項目還定期舉辦各類烹飪課程，致力於提升社區成員的烹飪技能，並透過食物分享愛與關懷。
