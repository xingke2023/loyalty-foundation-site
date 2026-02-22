---
title: 派飯送暖給露宿者
date: 2025-11-26 10:20:00
description: 忠信基金會為露宿者提供熱食派發服務，義工團隊定期走訪各區，送上熱騰騰的飯菜和關懷，讓街頭上的弱勢群體感受到人間溫暖。
tags:
  - services
layout: service-page
---

### 寒冬送暖,為露宿者送上溫飽

在香港這個繁華的都市，依然有許多露宿者在街頭掙扎求存。我們的「派飯送暖」行動，旨在為這些被社會遺忘的群體提供最基本的生活所需——一份熱騰騰的飯菜和一份來自社區的關懷。

我們的義工團隊定期走訪各區，將精心準備的食物送到露宿者手中，並與他們交流，傾聽他們的故事，讓他們感受到人間的溫暖。

### 活動剪影

每一次派飯，都是一次愛的傳遞：

<div id="image-gallery" class="mt-8 space-y-6">
    <img src="/images/old-site-images/bdd35b_7cfd4f8434e14ce9acc3b619050460b8~mv2.jpg" alt="派飯活動花絮 1" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_c0c128f43f774c38becc9223b8c1ba81~mv2.jpg" alt="派飯活動花絮 2" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
    <img src="/images/old-site-images/bdd35b_b9c4718ef5cd4d6f92c905c2ccfa7278~mv2.jpg" alt="派飯活動花絮 3" class="rounded-lg shadow-md hover:shadow-xl transition duration-300" loading="lazy">
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

### 您的支持，讓愛延續

我們深信，每個人都值得擁有尊嚴和關懷。您的捐款或參與義工服務，都能為露宿者帶來一線希望。
