---
title: 手針講座
date: 2025-11-26 10:00:00
description: 忠信基金會定期舉辦手針講座，推廣傳統治療方法，促進社區健康。專業導師教授手針技巧，幫助參加者緩解身體不適，提升健康水平。
tags:
  - services
layout: service-page
---

### 促進社區健康，傳承傳統智慧

我們定期舉辦手針講座，旨在推廣這一傳統且有效的自我保健方法。透過專業導師的講解與示範，參加者能夠學習到如何運用手針來緩解常見的身體不適，從而提升整體的健康水平。

這些講座不僅傳授知識，更是一個社區互動的平台，讓鄰里之間能夠互相交流保健心得，共同建立一個更健康的社區。

### 活動花絮

以下是我們過往舉辦手針講座的一些精彩瞬間：

<div id="image-gallery" class="mt-8 space-y-6">
    <img src="/images/old-site-images/bdd35b_07c738b0e91941efbfa3db769dfd5e56~mv2.jpg" alt="手針講座花絮 1" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_64876e8b6eb046148edfcc3cffef6108~mv2.jpg" alt="手針講座花絮 2" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_dbdaf5b24cdd4997a91962263520035f~mv2.jpg" alt="手針講座花絮 3" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_068e03b627c54dfa87896c9009809ebc~mv2.jpg" alt="手針講座花絮 4" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_5127436f517746368f310d3744af7c5d~mv2.jpg" alt="手針講座花絮 5" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_b418eb80947143d8a59c68a925f05b25~mv2.jpg" alt="手針講座花絮 6" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
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

如果您對手針療法感興趣，或者希望參加我們下一次的講座，請隨時留意我們的最新公告或直接聯繫我們。我們期待您的參與！
