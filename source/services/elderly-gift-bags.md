---
title: 送暖贈送福袋給獨居老人
date: 2025-11-26 10:15:00
description: 忠信基金會為獨居長者送上愛心福袋，提供日常生活必需品和溫暖問候，義工定期探訪，讓長者感受到社區關懷，不再孤單。
tags:
  - services
layout: service-page
---

### 關愛長者，傳遞社區溫情

隨著人口老化問題日益嚴重，許多獨居長者面臨生活上的困難和心靈上的孤獨。我們的「送暖贈送福袋」行動，旨在為這些長者提供實質的物質援助，同時送上最真摯的問候。

我們的義工團隊會定期探訪區內的獨居老人，親手送上滿載愛心的福袋。每一次的探訪，都是一次心靈的交流，讓長者們感受到社會並沒有遺忘他們。

### 福袋裡的愛心

福袋內包含了長者日常生活所需的物品，例如米、油、麵條等乾糧，以及按季節準備的保暖用品或日用品。

<div id="image-gallery" class="mt-8 space-y-6">
    <img src="/images/old-site-images/bdd35b_07e559de8d6d4793a587f3669eccb6dc~mv2.jpg" alt="送暖活動花絮 1" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_800d37117fd64e5f8002a1d01c166f65~mv2.jpg" alt="送暖活動花絮 2" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_9c1b9ee71bac4fd090917f50a512222f~mv2.jpg" alt="送暖活動花絮 3" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_873f518042d94b55877255bd4ca68ad3~mv2.jpg" alt="送暖活動花絮 4" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
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

### 一同參與

我們歡迎大家捐贈物資或加入我們的義工行列，一同為獨居長者送上溫暖。
