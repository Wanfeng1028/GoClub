---
title: "Redis-基础"
weight: 23
type: docs
bookToC: false
aliases:
  - "/s/9csd/"
shortlink: "9csd"
---

# Redis-基础

<div class="onenote-note">本页由同名 OneNote 笔记转换而来，可直接在线阅读；原始笔记文件见「<a href="/docs/blog/onenotes/">Go语言相关笔记</a>」页的原始链接。</div>

<div class="onenote-body">


<div class="title" data-onenote-x="0" data-onenote-y="0"><div class="container-outline" style="max-width: 649px"><div class="outline-element" style="margin-left: 0px"></div>
</div><div class="container-outline" style="max-width: 649px"><div class="outline-element" style="margin-left: 0px"></div>
<div class="outline-element" style="margin-left: 0px"></div>
</div></div><div data-onenote-x="0" data-onenote-y="0" data-onenote-w="0" data-onenote-h="0"><svg style="height: 918px; overflow: visible; width: 70px" viewBox="35863 149069 1854 24284"><path d="M 35933 149151 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 61 -12 0 0 0 0 0 0 79 22 0 0 0 0 80 12 0 0 62 20 0 0 0 0 76 12 0 0 0 0 56 35 0 0 0 0 47 36 0 0 0 0 49 39 0 0 0 0 49 42 0 0 0 0 39 47 0 0 0 0 51 54 0 0 37 58 0 0 24 49 0 0 0 0 27 71 0 0 20 62 0 0 10 66 0 0 10 66 0 0 0 0 14 95 0 0 8 74 0 0 2 78 0 0 0 0 3 89 0 0 0 75 0 0 7 84 0 0 0 0 0 103 0 0 -10 71 0 0 0 0 -7 127 0 0 0 0 -3 88 0 0 0 76 0 0 0 81 0 0 -5 96 0 0 -2 100 0 0 0 88 0 0 0 106 0 0 -3 85 0 0 3 79 0 0 7 93 0 0 3 81 0 0 7 83 0 0 3 81 0 0 -3 81 0 0 -24 63 0 0 14 86 0 0 8 88 0 0 2 81 0 0 -2 105 0 0 0 103 0 0 -5 91 0 0 5 113 0 0 2 105 0 0 10 91 0 0 7 88 0 0 8 103 0 0 17 88 29 42 0 0 0 85 0 0 10 81 0 0 15 83 0 0 14 74 0 0 22 61 0 0 13 61 0 0 0 0 24 71 0 0 0 0 34 49 0 0 0 0 40 40 0 0 0 0 63 41 0 0 0 0 69 22 0 0 0 0 0 0 68 13 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -34 53 0 0 -44 42 0 0 -34 44 0 0 -35 47 0 0 -39 41 0 0 -34 45 0 0 0 0 -47 66 0 0 -31 46 0 0 -22 49 0 0 0 0 -25 66 0 0 0 0 0 0 0 0 0 0 -15 76 0 0 0 0 0 79 0 0 0 0 -2 71 0 0 0 0 2 78 0 0 -2 76 0 0 0 0 0 88 0 0 7 71 0 0 0 0 8 98 0 0 5 81 0 0 0 0 7 93 0 0 0 0 0 103 0 0 24 78 0 0 -14 86 0 0 -13 86 0 0 -7 81 0 0 -7 88 0 0 5 76 0 0 2 86 0 0 0 95 0 0 3 115 0 0 9 96 0 0 5 108 0 0 0 107 0 0 3 111 0 0 5 120 0 0 12 112 0 0 10 130 0 0 17 128 0 0 14 117 -24 66 20 67 14 63 13 66 0 0 14 128 0 0 12 137 8 69 2 78 12 71 0 0 5 132 8 74 10 71 9 66 0 0 13 135 0 0 12 110 0 0 15 120 0 0 9 147 0 0 5 118 0 0 0 134 0 0 12 133 0 0 -7 125 0 0 0 127 0 0 0 117 0 0 0 128 22 61 0 0 -5 120 0 0 -5 110 0 0 0 116 0 0 0 102 0 0 5 103 0 0 10 96 0 0 7 95 0 0 3 103 0 0 7 120 0 0 10 106 0 0 7 127 0 0 3 115 0 0 2 113 0 0 5 103 0 0 3 95 0 0 17 106 0 0 2 90 0 0 5 86 0 0 0 86 0 0 7 71 0 0 0 98 0 0 3 100 0 0 0 91 0 0 10 93 0 0 2 91 0 0 8 105 0 0 14 78 0 0 12 89 0 0 8 90 0 0 7 88 0 0 10 106 0 0 10 95 0 0 7 88 0 0 7 89 0 0 13 85 0 0 2 89 0 0 0 0 5 105 0 0 7 93 0 0 0 93 0 0 5 103 0 0 15 93 0 0 10 86 0 0 12 78 0 0 15 81 0 0 12 78 0 0 12 96 0 0 5 88 0 0 5 83 0 0 3 96 0 0 2 88 0 0 0 0 5 108 0 0 10 83 0 0 9 79 0 0 10 95 0 0 15 84 0 0 0 110 0 0 7 100 0 0 0 96 0 0 10 88 0 0 3 86 0 0 9 98 0 0 8 83 0 0 2 78 0 0 7 86 0 0 3 93 0 0 7 83 0 0 8 86 0 0 12 76 0 0 15 96 0 0 -3 88 0 0 12 88 0 0 5 101 0 0 3 102 0 0 2 113 0 0 0 78 0 0 5 86 0 0 10 74 0 0 0 90 0 0 0 81 0 0 7 69 0 0 0 0 -7 90 0 0 12 84 0 0 0 81 0 0 0 78 0 0 5 88 0 0 2 88 0 0 15 86 0 0 0 105 -39 49 0 0 17 103 0 0 7 108 0 0 8 113 0 0 22 108 0 0 -5 93 0 0 0 149 0 0 2 76 0 0 3 98 0 0 -37 83 0 0 34 93 0 0 0 103 0 0 -9 96 0 0 -3 100 0 0 15 101 0 0 -22 108 0 0 -8 110 0 0 -2 95 0 0 0 98 0 0 2 108 0 0 0 108 0 0 -2 78 0 0 2 96 0 0 -2 98 0 0 0 0 -7 83 0 0 2 76 0 0 -5 86 0 0 -5 88 0 0 0 83 0 0 -7 88 0 0 0 0 0 103 0 0 0 0 -5 66 0 0 0 0 -10 98 0 0 0 0 -12 96 0 0 0 0 -5 108 0 0 -5 88 0 0 -7 96 0 0 -5 80 0 0 0 93 0 0 -7 81 0 0 0 0 -3 93 0 0 3 86 0 0 9 83 0 0 -2 79 0 0 -5 81 0 0 0 0 -5 98 0 0 -12 66 0 0 0 0 -12 86 0 0 0 0 0 0 0 0 0 0 0 0 -17 63 0 0 0 0 0 0 0 0 0 0 -27 57 0 0 0 0 0 0 -27 73 0 0 0 0 -25 52 0 0 0 0 -29 58 0 0 0 0 -35 42 0 0 0 0 0 0 0 0 0 0 -36 46 0 0 0 0 0 0 0 0 0 0 -30 54 0 0 0 0 -32 42 0 0 0 0 -44 59 0 0 -36 41 0 0 -62 52 0 0 0 0 -17 61 0 0 0 0 0 0 -10 76 0 0 0 0 0 0 -31 69 0 0 0 0 0 0 0 0 0 0 -35 41 0 0 0 0 0 0 0 0 0 0 0 0 -63 25 0 0 0 0 0 0 0 0 -52 27 0 0 0 0 0 0 -46 24 0 0 0 0 0 0 -59 32 0 0 0 0 0 0 -71 15 0 0 0 0 0 0 -71 0 0 0 0 0 0 0 -66 5 0 0 0 0 0 0 -76 -10 0 0 0 0 0 0 0 0 -74 0 0 0 0 0 0 0 0 0 -66 5 0 0 0 0 0 0 0 0 0 0 -61 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -37 49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -24 -71 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 34 -47 0 0 61 -90 56 -54 64 -25" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></div><div data-onenote-x="31.151180267333984" data-onenote-y="1.103937029838562" data-onenote-w="4.0307087898254395" data-onenote-h="0.6000000238418579"><div class="container-outline" style="max-width: 193px"><div class="outline-element" style="margin-left: 0px"><p><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 54px; overflow: visible; width: 34px" viewBox="39493 1333 896 1421"><path d="M 40166 1403 l 0 0 0 0 0 0 23 23 0 0 14 36 0 0 15 51 9 32 0 0 12 60 9 36 3 41 7 42 8 46 1 48 4 52 1 52 0 55 0 61 1 58 3 55 -4 55 0 52 0 47 -6 46 2 41 0 43 0 0 4 65 0 0 4 54 0 0 0 0 1 41 0 0 0 0 0 0 -18 31 0 0 0 0 9 32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 14 -32 0 0 0 0 11 -48 M 39563 1527 l 0 0 0 0 0 0 0 0 0 0 15 -22 0 0 0 0 0 0 0 0 22 34 0 0 20 57 14 29 13 34 13 40 14 45 8 52 29 49 0 55 3 59 2 60 3 67 0 57 0 61 -3 56 0 52 -1 49 -4 38 0 0 0 57 0 0 -5 36 0 0 0 0 -9 32 0 0 0 0 0 0 0 0 0 0 0 0 -15 -40 0 0 -2 -58 M 39808 2007 l 0 0 35 -27 0 0 36 -28 0 0 34 -32 20 -18 19 -17 0 0 42 -34 19 -18 19 -18 0 0 31 -25 0 0 30 -21 0 0 0 0 28 -18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -19 33 0 0 0 0" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 33px; overflow: visible; width: 33px" viewBox="1069 463 879 885"><path d="M 1572 586 l 0 0 0 0 0 0 0 0 -27 -18 0 0 -31 -8 0 0 0 0 0 0 -33 -19 0 0 0 0 -41 -8 0 0 0 0 -40 4 0 0 -29 9 0 0 -30 21 0 0 -36 19 -15 24 -18 21 -14 24 -15 29 -16 25 -14 28 -14 28 -11 34 -12 34 -9 32 -6 55 0 0 -12 51 0 0 -6 53 0 0 -4 55 0 0 3 41 0 0 10 44 0 0 14 34 0 0 20 24 0 0 27 20 0 0 34 10 0 0 39 -1 0 0 44 -17 0 0 41 -31 20 -21 21 -29 20 -29 23 -34 20 -36 19 -40 18 -41 14 -40 14 -43 12 -42 8 -42 11 -41 9 -33 5 -38 0 0 6 -56 0 0 5 -53 0 0 0 0 3 -49 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -14 26 0 0 0 40 0 0 -2 48 0 0 0 60 0 0 2 60 0 0 5 66 0 0 11 59 0 0 12 54 0 0 13 46 0 0 15 33 0 0 18 26 0 0 0 0 22 15 0 0 0 0 0 0 38 -5 0 0 28 -19 0 0 22 -26 0 0 33 -26 0 0 25 -22 0 0 25 -15" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 36px; overflow: visible; width: 20px" viewBox="2056 296 535 955"><path d="M 2361 381 l 0 0 -21 -15 0 0 0 0 0 0 -38 8 0 0 -21 23 0 0 -21 31 0 0 -22 36 0 0 -17 34 0 0 -10 28 0 0 0 0 -4 36 0 0 8 33 0 0 0 0 15 28 0 0 0 0 32 24 0 0 0 0 33 15 0 0 0 0 44 13 0 0 0 0 40 10 0 0 27 11 0 0 25 14 0 0 0 0 34 20 0 0 16 41 0 0 12 49 0 0 2 53 0 0 -2 36 0 0 -8 32 0 0 -19 44 0 0 -23 39 0 0 -31 30 0 0 -32 25 0 0 -40 21 0 0 -39 20 0 0 -40 35 0 0 -36 -2 0 0 -35 -1 0 0 -29 -8 0 0 0 0 -29 -22 0 0 -6 -33 0 0 6 -44 0 0 28 -45" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 52px; overflow: visible; width: 28px" viewBox="2779 -37 742 1379"><path d="M 2818 19 l 31 14 0 0 19 30 0 0 18 45 0 0 17 71 0 0 11 66 8 42 5 45 5 46 4 50 -23 50 9 53 5 57 0 59 0 59 -3 55 -1 62 -5 57 -4 48 -5 45 -5 41 -5 36 0 0 -10 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 19 -31 9 -33 10 -41 14 -45 15 -49 17 -50 19 -48 19 -67 21 -40 24 -34 22 -40 23 -39 21 -34 20 -32 23 -30 21 -28 21 -28 20 -20 0 0 33 -28 0 0 0 0 38 -8 0 0 0 0 32 21 0 0 25 34 0 0 19 45 9 45 0 0 13 49 0 0 10 59 0 0 9 58 0 0 5 63 0 0 0 67 0 0 4 66 0 0 1 68 0 0 -1 64 0 0 1 60 0 0 -4 48 0 0 0 47 0 0 -6 44 0 0 0 0 -5 35 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -14 -35 0 0 -18 -35 0 0 -20 -33" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span></p></div>
</div></div><div data-onenote-x="54.09763717651367" data-onenote-y="1.5937007665634155" data-onenote-w="4.788188934326172" data-onenote-h="0.6000000238418579"><div class="container-outline" style="max-width: 230px"><div class="outline-element" style="margin-left: 0px"><p><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 45px; overflow: visible; width: 16px" viewBox="68635 1955 421 1200"><path d="M 68766 2064 l 0 0 6 -39 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 56 0 0 -2 51 -1 47 0 0 -11 53 0 0 -5 66 -1 38 -5 35 -7 43 -5 36 -2 40 -8 36 -5 40 -3 42 0 0 -9 70 -6 47 0 0 0 64 0 0 3 51 0 0 7 43 0 0 10 44 0 0 8 32 0 0 0 0 9 40 0 0 0 0 19 32 0 0 0 0 26 21 0 0 0 0 32 7 0 0 0 0 42 -8 0 0 0 0 40 -14 0 0 26 -11 0 0 0 0 33 -29 0 0 0 0 0 0 0 0 0 0 0 0" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 34px; overflow: visible; width: 10px" viewBox="403 102 254 911"><path d="M 473 657 l 0 0 0 0 36 8 0 0 0 0 9 34 0 0 8 41 0 0 8 45 0 0 2 40 0 0 0 0 0 53 0 0 0 0 0 0 -1 39 0 0 0 0 0 0 0 0 0 0 0 0 -10 -29 0 0 -16 -39 0 0 -6 -43 M 536 212 l 0 0 0 0 0 0 0 0 0 0 0 -40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 25 15 0 0 0 0 0 0" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 31px; overflow: visible; width: 20px" viewBox="733 283 519 826"><path d="M 1016 353 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -11 34 0 0 -19 26 0 0 -21 32 0 0 -9 38 0 0 -20 35 0 0 -22 34 0 0 -11 24 0 0 0 0 0 0 0 0 6 40 0 0 19 18 0 0 0 0 47 23 0 0 33 -3 0 0 39 -4 0 0 35 -3 0 0 28 10 0 0 0 0 27 18 0 0 0 0 0 0 14 26 0 0 0 0 5 35 0 0 -19 32 0 0 0 0 0 0 -8 45 0 0 0 0 -23 33 0 0 -23 25 0 0 -23 18 0 0 -27 15 0 0 -25 19 0 0 -35 11 0 0 -41 41 0 0 -45 14 0 0 -45 15 0 0 -39 9 0 0 0 0 0 0 0 0" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 37px; overflow: visible; width: 25px" viewBox="1137 149 663 977"><path d="M 1207 522 l 0 0 28 -10 0 0 0 0 42 -14 0 0 39 -6 0 0 42 -19 0 0 45 -21 0 0 43 -22 0 0 38 -12 0 0 0 0 31 -7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -26 17 0 0 0 0 M 1353 219 l 0 0 0 0 0 0 31 7 0 0 0 0 15 30 0 0 0 0 14 41 0 0 7 37 0 0 0 43 0 0 1 46 0 0 -2 58 0 0 -8 64 0 0 -5 57 0 0 -3 55 0 0 -4 61 0 0 -1 57 0 0 1 50 0 0 4 40 0 0 7 45 16 20 0 0 0 0 -2 39 0 0 6 33 0 0 0 0 0 0 18 18 0 0 0 0 0 0 32 10 0 0 32 -6 0 0 36 -10 0 0 40 -10 0 0 43 -7 0 0 41 -8 0 0 32 -4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -27 -12 0 0 -41 -4 0 0" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 43px; overflow: visible; width: 34px" viewBox="2140 124 909 1148"><path d="M 2478 428 l 0 0 0 0 22 -16 0 0 0 0 39 -10 0 0 41 -10 0 0 50 -15 32 -9 29 -7 31 -12 30 -6 31 -9 0 0 52 -15 0 0 50 -11 0 0 40 -10 0 0 0 0 28 -10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -46 -4 0 0 -46 7 0 0 M 2483 646 l 0 0 -5 40 0 0 0 0 0 40 0 0 0 0 0 0 10 29 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 32 -5 0 0 13 -26 0 0 9 -39 0 0 M 2772 402 l 0 0 0 0 0 0 26 19 0 0 0 0 14 39 0 0 10 45 0 0 9 55 0 0 5 69 4 38 1 39 0 40 6 40 -2 44 -4 43 -3 44 -6 40 -5 40 -5 38 -6 34 0 0 -13 53 0 0 -12 34 0 0 0 0 -19 20 0 0 0 0 -31 -9 0 0 -28 -36 -19 -30 -15 -37 -16 -41 -15 -45 -18 -50 -8 -50 -7 -50 -2 -47 -3 -50 7 -45 5 -39 M 2635 561 l 0 0 0 0 21 25 0 0 0 0 0 0 10 36 0 0 0 0 0 0 11 25 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 14 -31 0 0 -3 -45 0 0 M 2370 194 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -19 20 0 0 -17 25 0 0 -19 27 0 0 -18 31 0 0 -18 35 0 0 -19 35 0 0 -9 41 0 0 -14 45 0 0 -10 42 0 0 -7 50 0 0 -5 55 0 0 -5 55 0 0 1 58 0 0 0 55 0 0 8 47 0 0 12 43 0 0 16 39 0 0 25 33 0 0 28 27 0 0 19 18 0 0 0 0 25 13 0 0 0 0 0 0 0 0 0 0 22 -20 0 0 0 0 4 -40" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 54px; overflow: visible; width: 53px" viewBox="2816 -66 1414 1432"><path d="M 3309 80 l -10 28 0 0 -18 30 0 0 0 0 -22 29 0 0 -9 31 0 0 -26 39 -15 30 0 0 -28 39 -18 23 -22 22 -20 24 -21 23 -23 25 -26 27 -20 25 -21 23 M 2936 597 l 0 0 21 29 0 0 37 -2 0 0 43 -17 29 -15 30 -16 30 -19 34 -17 31 -18 35 -20 30 -21 32 -18 30 -16 24 -14 0 0 41 -20 0 0 35 -13 0 0 0 0 0 0 27 -10 0 0 0 0 0 0 0 0 0 0 -31 -9 0 0 0 0 -40 -4 0 0 -32 -11 0 0 -33 -17 0 0 M 3278 326 l -24 -18 0 0 0 0 0 0 0 0 0 0 0 0 -16 29 0 0 3 45 0 0 4 58 0 0 5 72 1 43 5 44 8 47 4 45 5 45 5 50 3 52 2 45 3 42 4 39 1 39 0 0 5 64 0 0 3 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -34 -16 0 0 -22 -50 -12 -31 -13 -32 -14 -33 -14 -37 -17 -32 -18 -29 -19 -29 -17 -24 -18 -18 0 0 -30 -28 0 0 -22 -14 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 17 -30 0 0 0 0 19 -36 0 0 9 -34 M 3178 571 l 23 -14 0 0 39 -12 0 0 29 -9 0 0 0 0 40 -6 0 0 0 0 25 10 0 0 0 0 0 0 23 15 0 0 0 0 8 31 0 0 0 0 3 38 0 0 0 0 -13 36 0 0 -12 25 0 0 -19 20 0 0 -20 18 0 0 0 0 -39 11 0 0 -30 5 0 0 -39 -10 0 0 M 3183 657 l 0 0 26 -10 0 0 0 0 36 -13 0 0 0 0 29 -12 0 0 0 0 0 0 32 -7 0 0 0 0 0 0 0 0 0 0 -15 29 0 0 -23 17 0 0 -23 18 M 3110 826 l 16 30 0 0 0 0 37 8 0 0 0 0 36 -13 0 0 0 0 39 -11 0 0 0 0 0 0 30 -12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -19 36 0 0 -21 28 0 0 -24 31 0 0 -25 29 0 0 -25 28 0 0 -24 29 0 0 -23 24 0 0 -20 19 0 0 0 0 0 0 -20 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 38 -8 0 0 0 0 26 -9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -19 21 0 0 -27 25 0 0 -34 28 0 0 -29 25 0 0 -28 18 0 0 -28 19 0 0 -25 18 0 0 -29 14 0 0 0 0 -26 16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 31 11 0 0 41 -9 0 0 47 -11 26 -10 31 -9 34 -12 35 -12 38 -12 39 -13 42 -10 43 -13 49 -13 48 -11 47 -14 45 -10 44 -5 38 -6 38 -6 35 -7 0 0 61 -3 0 0 50 -7 0 0 0 0 35 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -27 27 0 0 -30 13 0 0 -30 13 0 0 -40 12 0 0 -42 19 0 0 -45 15 0 0 -50 11 0 0 M 3546 4 l 0 0 13 29 0 0 0 0 9 39 0 0 1 42 0 0 2 50 0 0 -3 52 0 0 -12 47 0 0 -13 38 0 0 -10 26 0 0 0 0 0 0 -27 12 0 0 M 3821 140 l 40 -13 34 -9 0 0 49 -10 0 0 0 0 41 -4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -33 18 M 3657 381 l 0 0 -5 61 0 0 0 53 0 0 4 47 0 0 10 42 0 0 9 32 0 0 0 0 15 25 0 0 0 0 0 0 0 0 0 0 17 -21 0 0 10 -51 0 0 6 -54 0 0 M 3912 329 l 0 0 27 17 0 0 20 17 0 0 0 0 17 27 0 0 9 33 0 0 -9 38 0 0 13 36 0 0 0 0 -4 48 0 0 0 0 -14 34 0 0 0 0 -24 28 0 0 0 0 -38 0 0 0 -33 -16 0 0 -36 -24 M 3773 428 l 30 4 0 0 0 0 0 0 32 13 0 0 0 0 0 0 12 31 0 0 0 0 -3 40 0 0 -11 38 0 0 -16 35 0 0 -24 35 0 0 -18 33 0 0 -22 27 0 0 0 0 -15 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 22 -30 0 0 0 0 0 0 0 0 0 0 0 0 0 0 28 9 0 0 0 0 0 0 -3 50 0 0 -12 29 0 0 -12 40 0 0 -16 46 0 0 -17 46 0 0 -18 35 0 0 0 0 -17 28 0 0 0 0 0 0 0 0 0 0 0 0 24 -28 0 0 35 -42 24 -23 21 -16 23 -16 24 -17 0 0 36 -22 0 0 36 -13 0 0 0 0 40 -6 0 0 0 0 29 11 0 0 0 0 12 32 0 0 0 0 -8 50 0 0 -14 39 0 0 -26 41 -14 24 -18 25 -18 26 -23 22 -20 27 -25 25 -25 24 -26 25 -29 23 -28 20 -33 18 -33 18 -31 13 -30 15 -34 12 -29 5 0 0 -54 -5 0 0 M 3766 985 l 46 3 39 7 35 9 29 13 29 18 26 19 25 20 25 19 25 24 21 19 18 20 0 0 30 32 0 0 20 23 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -14 -32 0 0 -26 -48 -14 -28 -12 -29" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 36px; overflow: visible; width: 21px" viewBox="3937 317 546 953"><path d="M 4263 349 l 27 38 24 35 21 31 18 35 14 35 10 38 5 38 5 40 0 40 -1 39 -5 43 -9 42 -9 41 -14 38 -14 36 -18 36 -22 36 -22 34 -28 34 -28 31 -33 20 -34 19 -30 16 -39 12 -36 11 -38 7" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span></p></div>
</div></div><div data-onenote-x="66.5842514038086" data-onenote-y="1.6748031377792358" data-onenote-w="5.665354251861572" data-onenote-h="0.6000000238418579"><div class="container-outline" style="max-width: 272px"><div class="outline-element" style="margin-left: 0px"><p><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 47px; overflow: visible; width: 22px" viewBox="-69 78 583 1230"><path d="M 418 158 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -27 -10 0 0 0 0 0 0 -36 5 0 0 0 0 -27 10 0 0 0 0 -24 13 0 0 -18 19 0 0 -21 31 0 0 -24 37 0 0 -17 34 0 0 -10 40 0 0 -9 33 0 0 0 0 -4 45 0 0 0 0 0 42 0 0 0 0 0 0 5 42 0 0 0 0 0 0 9 29 0 0 0 0 0 0 7 34 0 0 0 0 0 0 14 27 0 0 0 0 0 0 18 23 0 0 0 0 0 0 20 21 0 0 0 0 22 15 0 0 0 0 0 0 32 20 0 0 0 0 18 32 0 0 0 0 0 0 10 41 0 0 0 0 14 24 0 0 0 0 4 41 0 0 0 0 0 0 0 45 0 0 0 0 0 0 -6 43 0 0 0 0 -9 43 0 0 -13 29 0 0 0 0 -15 45 0 0 -13 29 0 0 -22 24 0 0 -17 21 0 0 -20 23 0 0 0 0 -32 20 0 0 -26 14 0 0 -27 13 0 0 -32 17 0 0 -35 11 0 0 -31 11 0 0 -28 10 0 0 0 0 -30 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -17 -24 0 0 0 0 0 0 0 0 17 -26 0 0 0 0" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 29px; overflow: visible; width: 18px" viewBox="432 647 480 771"><path d="M 537 976 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 32 4 0 0 0 0 40 -4 0 0 0 0 39 -5 0 0 28 -16 0 0 26 -18 0 0 24 -16 0 0 26 -17 0 0 19 -19 0 0 19 -23 0 0 0 0 0 0 13 -27 0 0 0 0 13 -25 0 0 0 0 0 0 0 0 -1 -40 0 0 0 0 -18 -22 0 0 0 0 0 0 -26 -21 0 0 0 0 0 0 0 0 0 0 -33 -10 0 0 0 0 0 0 -24 18 0 0 -25 21 0 0 -27 26 0 0 -25 29 0 0 -27 28 0 0 -26 26 0 0 -22 25 0 0 -19 19 0 0 -18 23 0 0 0 0 -13 34 0 0 0 0 -10 43 0 0 0 0 3 40 0 0 0 0 0 46 0 0 0 0 0 53 0 0 0 0 4 46 0 0 10 30 0 0 0 0 5 34 0 0 0 0 15 24 0 0 0 0 26 21 0 0 0 0 0 0 30 15 0 0 0 0 38 4 0 0 0 0 36 0 0 0 0 0 45 -4 0 0 0 0 29 -7 0 0 0 0 0 0 24 -18 0 0 0 0 11 -30 0 0 0 0 6 -44 0 0 9 -31 0 0" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 38px; overflow: visible; width: 25px" viewBox="856 333 670 1001"><path d="M 926 762 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 36 -6 0 0 0 0 64 -8 0 0 35 -11 0 0 46 -27 32 -7 27 -10 30 -5 29 -8 0 0 53 -12 0 0 41 -11 0 0 40 -9 0 0 0 0 38 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -25 -26 0 0 -37 -4 0 0 -44 -4 0 0 -45 10 M 1148 403 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 13 25 0 0 0 0 0 45 0 0 5 43 0 0 5 48 0 0 0 57 0 0 -2 61 0 0 -14 71 0 0 -2 74 -4 35 0 0 -8 62 0 0 -1 61 0 0 -1 48 0 0 5 46 0 0 15 38 0 0 17 28 0 0 20 27 0 0 23 25 0 0 27 22 0 0 32 13 0 0 32 6 0 0 0 0 49 0 0 0 0 0 40 -9 0 0 0 0 31 -12 0 0 0 0 0 0 0 0 0 0 0 0 0 0" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 31px; overflow: visible; width: 14px" viewBox="2009 148 367 819"><path d="M 2241 202 l -41 16 0 0 -25 17 0 0 0 0 -26 23 0 0 0 0 -15 25 0 0 0 0 -17 41 0 0 -13 33 0 0 -12 43 0 0 -7 46 0 0 0 58 0 0 -5 59 0 0 -1 58 0 0 6 59 0 0 10 55 0 0 20 43 21 17 0 0 20 34 0 0 22 34 0 0 30 6 0 0 0 0 45 2 0 0 0 0 27 -20" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 37px; overflow: visible; width: 28px" viewBox="2439 185 740 987"><path d="M 2485 471 l 24 -24 0 0 44 -27 21 -15 32 -16 32 -17 43 -20 37 -19 42 -23 37 -18 33 -28 26 -9 0 0 46 0 0 0 0 0 0 0 0 0 27 15 0 0 0 0 -13 55 0 0 -22 48 -14 29 -15 28 -13 32 -13 32 -16 33 -16 32 -19 37 -18 40 -18 36 -19 41 -18 42 -23 41 -19 41 -22 40 -23 39 -19 35 -18 32 -19 28 0 0 -26 42 0 0 0 0 -19 23 0 0 0 0 0 0 12 -41 7 -34 15 -22 M 2852 702 l 0 0 13 49 0 0 6 55 0 0 -6 56 0 0 0 47 0 0 -4 47 0 0 0 0 0 48 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -11 -53 0 0 M 3029 559 l 12 29 0 0 10 38 0 0 9 32 0 0 10 28 0 0 0 0 13 37 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -9 -45" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 40px; overflow: visible; width: 25px" viewBox="3068 194 650 1055"><path d="M 3108 441 l 57 -8 38 -13 36 -8 41 -13 42 -17 37 -17 43 -16 39 -16 38 -20 34 -14 33 -12 0 0 45 -13 0 0 31 -10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -31 31 0 0 -36 25 -25 10 0 0 -51 17 M 3138 620 l 0 45 0 0 0 0 0 0 11 37 0 0 0 0 23 15 0 0 0 0 0 0 31 3 0 0 0 0 0 0 0 0 26 -17 0 0 0 0 25 -31 0 0 14 -34 0 0 12 -39 M 3402 517 l 0 0 0 0 0 0 0 0 32 10 0 0 0 0 0 0 0 0 0 0 12 25 0 0 0 0 0 0 -3 41 0 0 0 0 -12 38 0 0 -15 29 0 0 0 0 -20 31 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -22 -15 0 0 0 0 0 0 0 0 0 0 30 -14 0 0 0 0 0 0 0 0 33 -7 0 0 0 0 0 0 31 -12 0 0 0 0 0 0 0 0 0 0 14 -30 0 0 M 3543 413 l 0 0 12 31 0 0 7 32 0 0 11 36 0 0 8 40 0 0 6 47 0 0 4 58 0 0 5 65 0 0 4 60 0 0 7 57 0 0 0 70 0 0 -4 67 0 0 -3 55 0 0 -5 52 0 0 -8 36 0 0 0 0 0 0 -10 34 0 0 0 0 0 0 0 0 0 0 0 0 -26 -8 0 0 -21 -23 0 0 -21 -43 -15 -28 -15 -33 -20 -35 -18 -41 -25 -41 -30 -40 -29 -39 -32 -37 -32 -39 -28 -34 -22 -30" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 55px; overflow: visible; width: 37px" viewBox="3676 -69 969 1452"><path d="M 4093 1 l 0 0 44 6 0 0 0 0 0 0 0 0 22 14 0 0 0 0 0 0 -12 50 0 0 -32 44 -20 29 -25 27 -28 32 -27 31 -26 31 -30 32 -26 32 -23 29 -26 30 -21 27 -23 26 -23 27 -18 24 -17 21 0 0 -28 34 0 0 0 0 -8 29 0 0 0 0 0 0 30 10 0 0 34 -12 0 0 53 -23 28 -15 34 -17 34 -20 37 -18 38 -20 39 -19 36 -17 34 -16 30 -12 29 -12 0 0 41 -20 0 0 0 0 35 -8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -36 11 0 0 -39 -8 0 0 -34 -10 M 3846 1279 l 0 0 35 8 33 -10 31 -14 33 -10 37 -14 42 -11 38 -14 42 -11 38 -10 42 -10 39 -10 37 -6 36 -5 35 -4 31 -8 0 0 58 -2 0 0 53 -5 0 0 0 0 43 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -42 3 0 0 -31 -6 0 0 -33 -24 M 3895 660 l 0 0 0 0 0 0 -7 42 0 0 0 0 0 0 10 39 0 0 0 0 0 0 0 0 0 0 16 21 0 0 0 0 0 0 0 0 11 -29 0 0 M 3993 904 l 55 -3 0 0 50 -14 26 -10 26 -15 25 -11 0 0 46 -24 0 0 37 -16 0 0 31 -11 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -22 41 0 0 -38 29 -18 17 M 4060 1080 l 27 -9 27 -12 25 -14 23 -12 22 -14 27 -13 0 0 37 -21 0 0 33 -14 0 0 0 0 30 -8 0 0 0 0 0 0 0 0 0 0 -14 27 0 0 -26 26 0 0 -42 25 0 0 M 4073 287 l -9 28 0 0 6 34 0 0 5 39 0 0 14 56 9 34 11 34 8 37 13 37 13 42 7 47 9 50 6 54 8 51 6 50 5 52 4 51 0 48 4 43 0 0 2 68 0 0 -2 48 0 0 0 0 0 0 -4 38 0 0 0 0 0 0 -19 -35 0 0 -19 -55 -11 -34 -15 -35 -15 -39 -20 -44 -16 -45 M 4095 741 l 25 -14 30 -10 0 0 42 -19 0 0 37 -16 0 0 29 -10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 M 4237 528 l 0 0 37 -2 0 0 0 0 38 0 0 0 0 0 0 0 0 0 32 7 0 0 0 0 0 0 0 0 0 0 0 45 0 0 -6 32 0 0 -9 33 0 0 -13 33 0 0 -19 37 0 0 -23 38 0 0 -30 31 0 0 -30 29 0 0 -39 21 0 0 -41 12 0 0" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 49px; overflow: visible; width: 32px" viewBox="4377 30 856 1294"><path d="M 4590 100 l 0 0 10 39 0 0 0 40 0 0 -9 47 0 0 -16 56 0 0 -23 55 -16 27 -10 30 -15 21 -16 24 -19 22 0 0 -29 25 0 0 0 0 M 4680 313 l 45 -26 33 -19 31 -20 20 -15 0 0 37 -20 0 0 0 0 32 -10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -29 -18 0 0 M 4597 489 l 0 0 7 55 0 0 5 37 0 0 7 31 0 0 6 33 0 0 0 0 8 38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -14 -46 M 4818 363 l 0 0 0 0 37 0 0 0 0 0 0 0 30 17 0 0 0 0 15 22 0 0 13 31 0 0 0 0 6 49 0 0 4 41 19 21 0 0 -12 39 0 0 -11 34 0 0 0 0 -11 35 0 0 0 0 -14 24 0 0 0 0 0 0 -28 7 0 0 0 0 -35 -13 0 0 -21 -19 M 4725 528 l 0 0 0 0 0 0 0 0 29 -9 0 0 0 0 0 0 0 0 19 24 0 0 0 0 0 0 0 0 -13 43 0 0 -16 21 M 4700 667 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 39 -16 0 0 0 0 27 -15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 33 2 0 0 0 0 0 0 0 38 0 0 -10 31 0 0 -16 36 0 0 -19 42 0 0 -15 46 0 0 -20 41 0 0 -19 39 0 0 -14 30 0 0 0 0 -19 32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -18 -18 0 0 M 4874 737 l 0 0 43 -17 0 0 0 0 35 -20 0 0 0 0 35 -9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 10 29 0 0 0 0 -15 33 0 0 -18 36 0 0 -22 42 0 0 -24 46 -18 24 -12 24 -15 26 0 0 -33 47 -22 30 -19 28 -23 29 -18 25 -23 22 -22 23 -19 24 -27 18 -22 15 0 0 -48 15 0 0 -45 1 0 0 -30 -23 0 0 -16 -40 M 4728 839 l 41 2 0 0 40 14 0 0 37 11 0 0 44 16 0 0 40 22 0 0 47 23 0 0 42 27 0 0 35 21 0 0 25 36 0 0 23 19 0 0 0 0 20 19 0 0 0 0 15 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -19 -22 0 0 -19 -24 -12 -24 0 0 -21 -45" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 30px; overflow: visible; width: 18px" viewBox="5112 176 485 797"><path d="M 5271 244 l 52 2 0 0 34 8 0 0 37 20 0 0 27 25 0 0 19 30 0 0 26 36 0 0 16 47 0 0 15 40 0 0 4 42 0 0 -2 49 0 0 -5 45 0 0 -15 48 0 0 -23 47 0 0 -31 50 0 0 -29 46 -20 17 -21 19 -20 16 -23 15 -25 13 0 0 -54 13 0 0 -51 5" fill="none" opacity="1.00" stroke="rgb(255, 242, 0)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span></p></div>
</div></div><div data-onenote-x="1" data-onenote-y="2.4000000953674316" data-onenote-w="13.208333015441895" data-onenote-h="6.416666507720947"><img src="/pictures/onenote-notes/onenote-redis-basics-01.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="29.5" data-onenote-y="2.9000000953674316" data-onenote-w="19.83333396911621" data-onenote-h="8.666666984558105"><img src="/pictures/onenote-notes/onenote-redis-basics-02.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="54" data-onenote-y="2.9000000953674316" data-onenote-w="10.5" data-onenote-h="7.875"><img src="/pictures/onenote-notes/onenote-redis-basics-03.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="2.9000000953674316" data-onenote-w="8" data-onenote-h="7.166666507720947"><img src="/pictures/onenote-notes/onenote-redis-basics-04.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="74.5" data-onenote-y="2.9000000953674316" data-onenote-w="1" data-onenote-h="1"><a class="onenote-file" href="/files/onenote-notes/onenote-redis-basics-redis_.html">附件：redis_.html（点击下载）</a></div><div data-onenote-x="1" data-onenote-y="8.899999618530273" data-onenote-w="12.75" data-onenote-h="9.041666984558105"><img src="/pictures/onenote-notes/onenote-redis-basics-06.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="10.399999618530273" data-onenote-w="9.666666984558105" data-onenote-h="5.541666507720947"><img src="/pictures/onenote-notes/onenote-redis-basics-07.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="54" data-onenote-y="10.899999618530273" data-onenote-w="11.166666984558105" data-onenote-h="5.125"><img src="/pictures/onenote-notes/onenote-redis-basics-08.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="29.5" data-onenote-y="11.899999618530273" data-onenote-w="21.11111068725586" data-onenote-h="9.541666984558105"><img src="/pictures/onenote-notes/onenote-redis-basics-09.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="54" data-onenote-y="16.399999618530273" data-onenote-w="9.541666984558105" data-onenote-h="6"><img src="/pictures/onenote-notes/onenote-redis-basics-10.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="16.399999618530273" data-onenote-w="10.25" data-onenote-h="5.708333492279053"><img src="/pictures/onenote-notes/onenote-redis-basics-11.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="1" data-onenote-y="18.399999618530273" data-onenote-w="22.70833396911621" data-onenote-h="10.416666984558105"><img src="/pictures/onenote-notes/onenote-redis-basics-12.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="29.5" data-onenote-y="21.899999618530273" data-onenote-w="15.125" data-onenote-h="12.833333015441895"><img src="/pictures/onenote-notes/onenote-redis-basics-13.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="22.399999618530273" data-onenote-w="9.666666984558105" data-onenote-h="4.416666507720947"><img src="/pictures/onenote-notes/onenote-redis-basics-14.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="54" data-onenote-y="22.899999618530273" data-onenote-w="13.5" data-onenote-h="60.82429885864258"><div class="container-outline" style="max-width: 648px"><div class="outline-element" style="margin-left: 0px"><img src="/pictures/onenote-notes/onenote-redis-basics-15.webp" alt="笔记图片" loading="lazy" decoding="async"></div>
<div class="outline-element" style="margin-left: 0px"><p style="font-family: Microsoft YaHei,sans-serif; font-size: 11pt"> </p></div>
<div class="outline-element" style="margin-left: 0px"><img src="/pictures/onenote-notes/onenote-redis-basics-16.webp" alt="笔记图片" loading="lazy" decoding="async"></div>
<div class="outline-element" style="margin-left: 0px"><p style="font-family: Calibri,sans-serif; font-size: 11pt">&nbsp;</p></div>
<div class="outline-element" style="margin-left: 0px"><img src="/pictures/onenote-notes/onenote-redis-basics-17.webp" alt="笔记图片" loading="lazy" decoding="async"></div>
<div class="outline-element" style="margin-left: 0px"><p style="font-family: Microsoft YaHei,sans-serif; font-size: 11pt">&nbsp;</p></div>
<div class="outline-element" style="margin-left: 0px"><img src="/pictures/onenote-notes/onenote-redis-basics-18.webp" alt="笔记图片" loading="lazy" decoding="async"></div>
<div class="outline-element" style="margin-left: 0px"><p style="font-family: Calibri,sans-serif; font-size: 11pt">&nbsp;</p></div>
<div class="outline-element" style="margin-left: 0px"><img src="/pictures/onenote-notes/onenote-redis-basics-19.webp" alt="笔记图片" loading="lazy" decoding="async"></div>
<div class="outline-element" style="margin-left: 0px"><p style="font-family: Calibri,sans-serif; font-size: 11pt">&nbsp;</p></div>
<div class="outline-element" style="margin-left: 0px"><img src="/pictures/onenote-notes/onenote-redis-basics-20.webp" alt="笔记图片" loading="lazy" decoding="async"></div>
<div class="outline-element" style="margin-left: 0px"><img src="/pictures/onenote-notes/onenote-redis-basics-21.webp" alt="笔记图片" loading="lazy" decoding="async"></div>
<div class="outline-element" style="margin-left: 0px"><p style="font-family: Calibri,sans-serif; font-size: 11pt">&nbsp;</p></div>
<div class="outline-element" style="margin-left: 0px"><img src="/pictures/onenote-notes/onenote-redis-basics-22.webp" alt="笔记图片" loading="lazy" decoding="async"></div>
<div class="outline-element" style="margin-left: 0px"><p style="font-family: Calibri,sans-serif; font-size: 11pt">&nbsp;</p></div>
<div class="outline-element" style="margin-left: 0px"><img src="/pictures/onenote-notes/onenote-redis-basics-23.webp" alt="笔记图片" loading="lazy" decoding="async"></div>
</div></div><div data-onenote-x="66.5" data-onenote-y="27.399999618530273" data-onenote-w="8.791666984558105" data-onenote-h="5.875"><img src="/pictures/onenote-notes/onenote-redis-basics-24.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="1" data-onenote-y="29.136667251586914" data-onenote-w="16.20833396911621" data-onenote-h="7.875"><img src="/pictures/onenote-notes/onenote-redis-basics-25.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="33.400001525878906" data-onenote-w="9.458333015441895" data-onenote-h="6.361111164093018"><img src="/pictures/onenote-notes/onenote-redis-basics-26.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="29.5" data-onenote-y="35.0533332824707" data-onenote-w="19.16666603088379" data-onenote-h="10.208333015441895"><img src="/pictures/onenote-notes/onenote-redis-basics-27.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="1" data-onenote-y="37.5533332824707" data-onenote-w="18.23611068725586" data-onenote-h="8.48611068725586"><img src="/pictures/onenote-notes/onenote-redis-basics-28.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="39.900001525878906" data-onenote-w="14.791666984558105" data-onenote-h="5.75"><img src="/pictures/onenote-notes/onenote-redis-basics-29.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="29.5" data-onenote-y="45.581668853759766" data-onenote-w="15.208333015441895" data-onenote-h="10.31944465637207"><img src="/pictures/onenote-notes/onenote-redis-basics-30.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="45.900001525878906" data-onenote-w="12.791666984558105" data-onenote-h="5.5"><img src="/pictures/onenote-notes/onenote-redis-basics-31.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="1" data-onenote-y="46.54111099243164" data-onenote-w="24.41666603088379" data-onenote-h="7.75"><img src="/pictures/onenote-notes/onenote-redis-basics-32.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="51.900001525878906" data-onenote-w="13.875" data-onenote-h="8.75"><img src="/pictures/onenote-notes/onenote-redis-basics-33.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="1" data-onenote-y="54.73500061035156" data-onenote-w="19.5" data-onenote-h="15.166666984558105"><img src="/pictures/onenote-notes/onenote-redis-basics-34.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="29.5" data-onenote-y="56.400001525878906" data-onenote-w="14.625" data-onenote-h="9.583333015441895"><img src="/pictures/onenote-notes/onenote-redis-basics-35.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="60.900001525878906" data-onenote-w="9.666666984558105" data-onenote-h="4.041666507720947"><img src="/pictures/onenote-notes/onenote-redis-basics-36.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="65.4000015258789" data-onenote-w="14.25" data-onenote-h="9.81944465637207"><img src="/pictures/onenote-notes/onenote-redis-basics-37.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="29.5" data-onenote-y="66.4000015258789" data-onenote-w="20.54166603088379" data-onenote-h="11.291666984558105"><img src="/pictures/onenote-notes/onenote-redis-basics-38.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="1" data-onenote-y="69.73499298095703" data-onenote-w="19.16666603088379" data-onenote-h="7.041666507720947"><img src="/pictures/onenote-notes/onenote-redis-basics-39.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="75.4000015258789" data-onenote-w="14.208333015441895" data-onenote-h="9.625"><img src="/pictures/onenote-notes/onenote-redis-basics-40.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="67.43306732177734" data-onenote-y="76.22834014892578" data-onenote-w="8.493700981140137" data-onenote-h="0.6000000238418579"><div class="container-outline" style="max-width: 408px"><div class="outline-element" style="margin-left: 0px"><p><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 24px; overflow: visible; width: 21px" viewBox="-69 65 542 633"><path d="M 51 223 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 35 -7 0 0 0 0 0 0 33 -5 0 0 0 0 32 -9 0 0 35 -7 0 0 32 -13 0 0 32 -5 0 0 28 -9 0 0 31 -5 0 0 30 -7 0 0 0 0 27 -9 0 0 0 0 0 0 0 0 31 -7 0 0 0 0 0 0 0 0 30 -5 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -11 31 0 0 0 0 -39 26 0 0 -21 29 0 0 -29 43 -21 26 -20 26 -21 29 -23 34 -24 30 -22 27 -19 28 -21 25 0 0 -30 41 0 0 -25 18 0 0 -23 27 0 0 0 0 -16 20 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 37 7 0 0 0 0 47 0 0 0 37 -7 0 0 35 -6 0 0 42 -5 0 0 37 -5 0 0 0 0 45 -5 0 0 0 0 0 0 38 -4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 29 -12 0 0 0 0 -25 -18 0 0 0 0 0 0" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 35px; overflow: visible; width: 20px" viewBox="494 -69 523 919"><path d="M 575 82 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 18 40 0 0 4 45 0 0 1 54 0 0 4 63 0 0 -3 61 0 0 -1 71 0 0 -4 63 0 0 -2 51 0 0 0 0 -7 41 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -6 -47 0 0 -8 -48 0 0 -2 -57 0 0 -3 -58 0 0 -1 -52 0 0 -1 -52 0 0 2 -41 0 0 4 -39 0 0 9 -35 0 0 9 -30 0 0 0 0 20 -41 0 0 25 -28 0 0 20 -19 0 0 24 -13 0 0 0 0 38 -10 0 0 0 0 28 7 0 0 19 19 0 0 14 26 0 0 13 28 0 0 9 31 0 0 0 0 6 44 0 0 0 0 -2 49 0 0 -8 32 0 0 -10 40 0 0 -18 45 0 0 -22 42 0 0 -22 33 0 0 -24 27 0 0 -18 22 0 0 0 0 0 0 -23 12 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 22 20 0 0 20 15 0 0 30 20 0 0 29 26 0 0 30 26 0 0 29 34 0 0 30 34 0 0 25 37 0 0 21 33 0 0 15 25 0 0 0 0 13 26 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -18 -44 0 0 -15 -38 0 0 -17 -39 0 0 -18 -41 0 0 -6 -34" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 26px; overflow: visible; width: 18px" viewBox="937 135 483 694"><path d="M 1032 479 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 28 16 0 0 0 0 35 -4 0 0 29 -13 0 0 31 -15 0 0 30 -19 0 0 25 -21 0 0 22 -23 0 0 0 0 22 -24 0 0 0 0 10 -26 0 0 0 0 0 0 -4 -39 0 0 0 0 -9 -37 0 0 0 0 -15 -38 0 0 0 0 -21 -23 0 0 0 0 0 0 0 0 -33 -8 0 0 0 0 -27 16 0 0 -25 21 0 0 -21 27 0 0 -23 33 0 0 -24 43 0 0 -22 46 0 0 -17 52 0 0 -10 48 0 0 -6 39 0 0 3 41 0 0 8 38 0 0 18 31 0 0 21 32 0 0 24 27 0 0 26 11 0 0 29 10 0 0 33 8 0 0 0 0 35 5 0 0 0 0 0 0 41 -6 0 0 0 0 28 -32 0 0 15 -33 0 0 16 -42 0 0 10 -35 0 0 10 -37" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 25px; overflow: visible; width: 19px" viewBox="1384 199 514 668"><path d="M 1464 337 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -10 32 0 0 0 0 11 31 0 0 13 36 0 0 12 34 0 0 15 45 0 0 15 43 0 0 12 49 0 0 15 45 0 0 10 36 0 0 0 0 5 42 0 0 20 24 0 0 0 0 0 0 25 17 0 0 0 0 0 0 0 0 32 -22 0 0 18 -40 12 -27 10 -32 10 -35 12 -36 10 -33 8 -33 9 -34 11 -29 9 -29 0 0 14 -54 0 0 0 0 7 -55 0 0 16 -22 0 0 0 0 17 -21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -23 22 0 0" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 34px; overflow: visible; width: 19px" viewBox="1775 -108 511 898"><path d="M 1845 77 l 0 0 0 0 0 0 17 -19 0 0 0 0 0 0 19 19 0 0 0 0 16 35 0 0 0 0 14 44 0 0 10 42 0 0 7 59 5 35 2 38 0 39 1 40 0 41 0 0 0 74 -1 39 0 40 0 0 -5 51 0 0 -2 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -6 -34 0 0 -5 -73 -2 -46 -3 -46 -1 -49 -4 -49 1 -45 -2 -46 -4 -40 -4 -40 0 0 3 -68 0 0 M 1906 63 l 0 0 10 -44 0 0 12 -25 0 0 0 0 17 -22 0 0 0 0 30 -10 0 0 0 0 37 0 0 0 24 12 0 0 23 19 0 0 17 29 0 0 14 34 0 0 7 36 0 0 5 43 0 0 4 45 0 0 -12 46 0 0 -10 48 0 0 -14 45 0 0 -14 38 0 0 -16 35 0 0 -18 34 0 0 -13 37 0 0 -7 32 0 0 0 0 2 46 0 0 11 33 0 0 16 31 0 0 18 25 0 0 18 20 0 0 0 0 28 20 0 0 0 0 26 13 0 0 0 0 0 0 0 0 29 6 0 0 0 0 0 0 23 -25 0 0 0 0 17 -30 0 0" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 22px; overflow: visible; width: 17px" viewBox="2205 235 443 589"><path d="M 2418 316 l 0 0 0 0 0 0 0 0 0 0 -26 -11 0 0 0 0 -24 21 0 0 -18 26 0 0 -18 40 0 0 -24 48 0 0 -18 46 0 0 -12 50 0 0 -3 43 0 0 3 39 0 0 13 26 0 0 0 0 18 26 0 0 0 0 36 3 0 0 27 -15 0 0 27 -33 0 0 33 -44 0 0 17 -55 0 0 15 -55 0 0 14 -47 0 0 8 -37 0 0 10 -32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7 45 0 0 1 39 0 0 4 50 0 0 3 51 0 0 6 52 0 0 2 52 0 0 4 44 0 0 0 0 10 40 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 -40 0 0 13 -51 0 0 1 -58 0 0" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 19px; overflow: visible; width: 18px" viewBox="2602 266 484 503"><path d="M 2646 395 l 26 31 0 0 15 34 0 0 10 38 0 0 13 32 0 0 8 33 0 0 7 32 0 0 0 0 3 42 0 0 0 0 0 0 0 0 0 0 0 0 2 36 0 0 0 0 0 0 0 0 3 -50 0 0 4 -48 0 0 6 -55 0 0 17 -52 0 0 20 -45 0 0 25 -39 0 0 32 -29 0 0 0 0 24 -19 0 0 0 0 0 0 33 9 0 0 0 0 21 21 0 0 9 29 0 0 6 34 0 0 4 42 0 0 0 44 0 0 0 0 5 50 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 26 -19 0 0 25 -38" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 34px; overflow: visible; width: 15px" viewBox="3065 167 390 886"><path d="M 3238 237 l 0 0 0 0 0 0 0 0 0 0 -23 24 0 0 -13 34 0 0 -12 41 0 0 -10 53 0 0 -12 54 0 0 -6 55 0 0 -4 46 0 0 4 45 0 0 6 40 0 0 0 0 21 29 0 0 0 0 31 7 0 0 0 0 33 -18 0 0 21 -29 0 0 19 -37 0 0 28 -42 0 0 -3 -48 0 0 0 -45 0 0 0 -54 0 0 -3 -40 0 0 -3 -41 0 0 0 0 -4 -44 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 48 0 0 5 32 0 0 8 45 0 0 5 48 0 0 -8 44 0 0 16 50 0 0 9 44 0 0 6 55 0 0 5 52 0 0 0 48 0 0 0 48 0 0 0 42 0 0 0 0 -5 49 0 0 0 0 -11 31 0 0 0 0 -17 28 0 0 0 0 -19 17 0 0 0 0 -37 9 0 0 0 0 -36 -11 0 0 -24 -15 0 0 -28 -34 0 0 -19 -39 0 0 -16 -44 0 0 -12 -38" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 25px; overflow: visible; width: 15px" viewBox="3447 152 396 653"><path d="M 3501 481 l 16 27 0 0 0 0 0 0 31 -5 0 0 0 0 43 -8 0 0 32 -11 0 0 32 -14 0 0 24 -17 0 0 21 -22 0 0 17 -24 0 0 14 -26 0 0 10 -31 0 0 0 0 6 -41 0 0 0 0 -1 -38 0 0 0 0 -12 -31 0 0 0 0 -25 -18 0 0 0 0 0 0 -30 8 0 0 -23 17 0 0 -25 27 0 0 -28 38 0 0 -27 43 -14 29 0 0 -20 56 0 0 -20 51 0 0 -1 49 0 0 2 45 0 0 9 44 0 0 14 35 0 0 30 25 0 0 27 16 0 0 33 4 0 0 33 -10 0 0 22 -27 0 0 19 -23 0 0 0 0 14 -36" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 37px; overflow: visible; width: 18px" viewBox="3861 -91 463 973"><path d="M 3986 18 l 0 0 0 0 0 0 0 0 0 0 0 0 -27 9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -26 19 0 0 0 0 0 0 0 0 0 0 0 0 13 35 0 0 0 0 9 44 0 0 0 0 -5 56 0 0 11 41 0 0 13 62 0 0 7 50 5 33 0 0 7 62 0 0 -4 56 0 0 6 61 0 0 0 41 0 0 -4 50 0 0 0 0 -2 46 0 0 0 0 0 0 0 0 0 0 -11 26 0 0 0 0 -22 -34 0 0 -6 -48 0 0 -5 -64 -7 -34 -7 -36 0 0 M 3934 49 l 0 0 0 0 0 0 0 0 17 -27 0 0 0 0 27 -16 0 0 27 -12 0 0 34 -10 0 0 0 0 39 -5 0 0 0 0 0 0 36 9 0 0 0 0 15 24 0 0 0 0 0 0 10 36 0 0 0 0 3 40 0 0 0 0 -8 49 0 0 -11 36 0 0 -18 40 0 0 -21 41 0 0 -22 41 0 0 -23 29 0 0 -20 26 0 0 -26 29 0 0 -23 23 0 0 0 0 -20 19 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 36 -14 0 0 33 -18 0 0 33 -15 0 0 36 -10 0 0 37 -4 0 0 40 1 0 0 0 0 29 13 0 0 17 21 0 0 0 0 13 36 0 0 0 0 4 50 0 0 0 39 0 0 -12 34 0 0 -13 35 0 0 -19 40 0 0 -24 35 0 0 -26 35 0 0 -19 31 0 0 -35 22 0 0 -28 14 0 0 0 0 -37 12 0 0 0 0 -29 8 0 0 0 0 0 0 0 0 0 0 -5 -37 0 0 15 -31 0 0 21 -40 0 0" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 32px; overflow: visible; width: 17px" viewBox="4246 259 457 837"><path d="M 4366 400 l 0 0 0 0 4 43 0 0 0 0 1 38 0 0 10 50 0 0 9 44 0 0 7 40 0 0 6 32 0 0 0 0 18 28 0 0 0 0 0 0 0 0 37 -3 0 0 22 -30 0 0 23 -45 11 -27 11 -30 14 -27 8 -29 8 -30 0 0 9 -54 0 0 7 -39 0 0 0 0 5 -32 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9 38 0 0 0 0 6 52 0 0 3 45 0 0 5 49 0 0 5 55 0 0 1 61 0 0 2 56 0 0 -3 59 0 0 -10 60 0 0 -4 53 0 0 -10 45 0 0 -14 34 0 0 -16 31 0 0 -19 21 0 0 -41 12 0 0 0 0 -42 -2 0 0 -37 -20 -23 -16 -25 -16 -25 -18 -22 -14 0 0" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 32px; overflow: visible; width: 15px" viewBox="4776 -22 386 841"><path d="M 5066 48 l 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -39 1 0 0 0 0 -20 18 0 0 -20 21 0 0 -24 24 0 0 -23 20 0 0 -21 24 0 0 -19 24 0 0 -21 22 0 0 0 0 -14 24 0 0 0 0 0 0 -6 34 0 0 0 0 0 0 10 37 0 0 0 0 21 19 0 0 0 0 38 18 0 0 27 11 0 0 0 0 35 21 0 0 0 0 29 21 0 0 13 26 0 0 11 30 0 0 8 33 0 0 0 0 -4 47 0 0 -10 32 0 0 -14 37 0 0 -19 28 0 0 -25 27 0 0 -29 32 0 0 -27 20 0 0 -26 14 0 0 -28 10 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -23 -26 0 0 19 -37 0 0 27 -45 18 -20" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 20px; overflow: visible; width: 15px" viewBox="5109 287 398 526"><path d="M 5257 357 l 0 0 0 0 -2 35 0 0 0 0 -20 44 0 0 -12 32 0 0 -12 40 0 0 -13 42 0 0 -6 35 0 0 -9 38 0 0 0 0 -4 45 0 0 0 0 13 29 0 0 28 16 0 0 0 0 0 0 32 4 0 0 33 -18 0 0 33 -34 0 0 33 -40 19 -18 17 -20 24 -19" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 19px; overflow: visible; width: 13px" viewBox="5427 309 350 496"><path d="M 5506 453 l 0 0 0 0 -9 38 0 0 0 0 0 45 0 0 4 35 0 0 5 36 0 0 6 32 0 0 13 26 0 0 0 0 18 34 0 0 0 0 0 0 27 10 0 0 0 0 33 -20 0 0 22 -29 0 0 20 -26 0 0 14 -29 0 0 14 -27 0 0 0 0 8 -44 0 0 0 0 -1 -49 0 0 0 0 -12 -46 0 0 0 0 -15 -39 0 0 0 0 -27 -21 0 0 0 0 0 0 -33 0 0 0 0 0 -27 21 0 0 -23 24 0 0 -9 30 0 0 -9 31 0 0 0 0 -8 38 0 0 0 0 0 0 0 0 0 0 4 35 0 0 0 0" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 20px; overflow: visible; width: 12px" viewBox="5733 256 309 523"><path d="M 5803 326 l 0 0 0 0 5 34 0 0 10 29 0 0 7 35 0 0 5 39 0 0 4 38 0 0 0 0 -2 59 0 0 0 39 0 0 0 0 -4 43 0 0 0 0 0 0 0 0 -5 41 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7 -49 0 0 2 -40 0 0 13 -48 0 0 17 -38 0 0 13 -34 0 0 0 0 19 -35 0 0 0 0 20 -24 0 0 0 0 0 0 0 0 32 -8 0 0 0 0 0 0 0 0 0 0 0 0" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 20px; overflow: visible; width: 16px" viewBox="5998 153 412 524"><path d="M 6078 516 l 0 0 0 0 0 0 0 0 14 32 0 0 0 0 0 0 0 0 44 -4 0 0 0 0 31 -25 0 0 24 -28 0 0 20 -37 0 0 23 -44 0 0 13 -41 0 0 12 -40 0 0 6 -39 0 0 0 0 -1 -40 0 0 0 0 0 0 -22 -27 0 0 0 0 0 0 -36 9 0 0 -24 20 0 0 -27 29 0 0 -24 35 0 0 -25 38 0 0 -16 33 0 0 -13 36 0 0 -9 31 0 0 0 0 5 45 0 0 10 31 0 0 18 24 0 0 21 17 0 0 31 8 0 0 34 2 0 0 38 -13 0 0 34 -29 0 0 33 -26 0 0 22 -28" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 29px; overflow: visible; width: 13px" viewBox="6400 17 353 762"><path d="M 6528 87 l 0 0 -13 28 0 0 0 0 -15 35 0 0 -11 30 0 0 -6 36 0 0 -8 34 0 0 -4 45 0 0 -1 50 0 0 0 52 0 0 5 56 0 0 10 55 0 0 15 52 0 0 19 47 0 0 22 42 0 0 21 23 0 0 26 11 0 0 0 0 34 -11 0 0 22 -32 0 0 13 -43 0 0" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 28px; overflow: visible; width: 16px" viewBox="6650 -46 419 734"><path d="M 6779 24 l 0 0 12 43 0 0 11 45 0 0 9 51 0 0 1 67 0 0 0 67 -5 35 -10 35 -8 35 0 0 -13 62 0 0 -19 49 0 0 -16 28 0 0 0 0 0 0 -21 22 0 0 0 0 0 0 0 0 4 -44 0 0 17 -26 M 6781 479 l 50 5 0 0 30 15 0 0 27 20 0 0 20 15 0 0 18 20 0 0 0 0 26 21 0 0 0 0 21 17 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -2 -56" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 30px; overflow: visible; width: 21px" viewBox="6988 57 551 797"><path d="M 7132 88 l 0 39 0 0 4 68 0 0 -4 65 0 0 -2 66 0 0 -9 65 -11 30 0 0 -15 53 0 0 -19 39 0 0 0 0 -18 31 0 0 0 0 0 0 0 0 0 0 0 0 8 -45 M 7209 439 l 50 40 20 26 16 26 18 29 16 27 16 31 18 24 15 22 0 0 27 39 0 0 22 30 0 0 0 0 16 25 0 0 0 0 0 0 0 0 0 0 0 0 -6 -33 0 0 -19 -50 0 0 -27 -57 -12 -33 0 0" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 27px; overflow: visible; width: 25px" viewBox="7303 88 651 703"><path d="M 7373 374 l 0 0 32 -8 0 0 37 -16 27 -14 31 -14 28 -20 40 -18 34 -20 37 -17 34 -19 28 -10 0 0 42 -12 0 0 0 0 35 -8 0 0 0 0 0 0 0 0 0 0 0 0 -34 15 0 0 0 0 -52 -7 M 7569 158 l 0 0 5 58 0 0 1 59 0 0 7 67 5 34 0 0 2 72 -2 38 -4 38 -8 34 0 0 -5 57 0 0 -13 32 0 0 -9 36 0 0 0 0 0 0 -25 12 0 0 -9 -31 0 0 0 -54 M 7624 443 l 49 11 0 0 38 31 0 0 32 30 0 0 33 33 0 0 35 31 0 0 26 24 0 0 0 0 21 22 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -13 -38 -15 -24 0 0 -18 -44" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 38px; overflow: visible; width: 30px" viewBox="7792 -59 805 1006"><path d="M 7893 127 l 0 0 0 0 0 0 42 8 0 0 35 -13 0 0 41 -14 0 0 33 -13 0 0 0 0 31 -15 0 0 0 0 0 0 0 0 0 0 0 0 0 0 5 42 0 0 -9 34 0 0 -14 46 0 0 -23 52 -17 30 -11 27 0 0 -26 53 -13 27 0 0 -22 48 0 0 -23 35 0 0 -19 21 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 36 -4 0 0 27 -23 20 -18 0 0 30 -37 0 0 28 -37 0 0 18 -31 M 8190 260 l 18 24 0 0 0 0 0 0 0 0 11 32 0 0 0 0 9 36 0 0 0 0 2 40 0 0 0 0 -22 39 0 0 0 0 -10 37 0 0 0 0 -27 10 0 0 0 0 -36 -23 M 8066 410 l 0 0 0 0 -14 40 0 0 0 0 -5 36 0 0 5 38 0 0 0 0 5 51 0 0 0 0 5 43 0 0 0 0 4 40 0 0 0 0 0 0 0 0 0 0 0 0 -30 12 0 0 -15 -23 0 0 -19 -29 M 7980 581 l 0 0 0 0 0 0 12 28 0 0 0 0 0 0 29 11 0 0 0 0 0 0 0 0 33 7 0 0 0 0 0 0 0 0 0 0 -23 30 0 0 -25 21 0 0 -35 19 0 0 M 7862 814 l 0 0 0 0 0 0 0 0 9 37 0 0 37 0 0 0 36 -15 0 0 45 -10 0 0 45 -22 23 -12 24 -11 0 0 45 -23 0 0 37 -16 0 0 0 0 31 -9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 M 8263 460 l 17 31 0 0 0 0 7 38 0 0 0 0 7 36 0 0 0 0 5 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -54 0 0 4 -67 M 8344 27 l 0 0 0 0 0 0 0 0 23 -16 0 0 0 0 0 0 0 0 0 0 0 0 0 0 32 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 11 25 0 0 0 0 0 0 14 43 0 0 9 40 0 0 9 58 0 0 10 67 6 38 5 41 5 43 4 44 2 41 0 0 8 76 4 45 2 43 9 36 0 0 4 59 0 0 0 41 0 0 0 0 0 42 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -38 -8 0 0 -25 -16 0 0 -28 -20 0 0 -25 -25 0 0 -26 -25 0 0 -22 -30 0 0 -15 -38 0 0" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 28px; overflow: visible; width: 24px" viewBox="8546 -28 643 751"><path d="M 8625 387 l -9 29 0 0 4 49 0 0 0 0 0 45 0 0 0 0 5 38 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 32 -17 0 0 9 -32 0 0 M 8677 42 l 0 0 0 0 30 6 0 0 0 0 30 18 0 0 0 0 23 31 22 14 0 0 0 0 0 47 0 0 2 50 0 0 5 69 0 0 5 68 0 0 -15 65 8 34 10 34 0 0 8 58 0 0 2 45 0 0 0 0 4 46 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -10 -40 0 0 -17 -48 0 0 -18 -54 0 0 -20 -51 -13 -24 0 0 M 8980 336 l 0 0 44 16 0 0 0 0 39 14 0 0 0 0 30 18 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -12 -30 0 0 -18 -24 0 0" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span><span style="height: 0px; width: 0px" class="ink-text"><svg style="height: 33px; overflow: visible; width: 16px" viewBox="8993 55 425 882"><path d="M 9138 125 l 0 0 24 18 0 0 22 20 0 0 25 22 0 0 26 23 0 0 23 27 0 0 22 29 0 0 19 28 0 0 17 40 0 0 6 49 0 0 -4 50 0 0 4 54 0 0 -13 55 -6 34 -10 31 -13 29 -17 34 -18 34 -20 31 -23 26 -25 23 -24 22 -33 13 -30 14 -27 10" fill="none" opacity="1.00" stroke="rgb(237, 28, 36)" stroke-linecap="round" stroke-linejoin="round" stroke-width="70" /></svg></span></p></div>
</div></div><div data-onenote-x="1" data-onenote-y="77.0966567993164" data-onenote-w="20.33333396911621" data-onenote-h="13.36111068725586"><img src="/pictures/onenote-notes/onenote-redis-basics-41.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="29.5" data-onenote-y="78.01166534423828" data-onenote-w="16.58333396911621" data-onenote-h="12.625"><img src="/pictures/onenote-notes/onenote-redis-basics-42.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="84.9000015258789" data-onenote-w="11.5" data-onenote-h="1.8333333730697632"><img src="/pictures/onenote-notes/onenote-redis-basics-43.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="86.9000015258789" data-onenote-w="15.75" data-onenote-h="9.61111068725586"><img src="/pictures/onenote-notes/onenote-redis-basics-44.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="1" data-onenote-y="90.8894271850586" data-onenote-w="16.54166603088379" data-onenote-h="11.25"><img src="/pictures/onenote-notes/onenote-redis-basics-45.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="29.5" data-onenote-y="90.9566650390625" data-onenote-w="15.027777671813965" data-onenote-h="7.625"><img src="/pictures/onenote-notes/onenote-redis-basics-46.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="96.9000015258789" data-onenote-w="10.916666984558105" data-onenote-h="6.208333492279053"><img src="/pictures/onenote-notes/onenote-redis-basics-47.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="29.5" data-onenote-y="98.9000015258789" data-onenote-w="15.98611068725586" data-onenote-h="8.5"><img src="/pictures/onenote-notes/onenote-redis-basics-48.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="1" data-onenote-y="102.5160903930664" data-onenote-w="11.625" data-onenote-h="5.125"><img src="/pictures/onenote-notes/onenote-redis-basics-49.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="103.4000015258789" data-onenote-w="13.61111068725586" data-onenote-h="6.5"><img src="/pictures/onenote-notes/onenote-redis-basics-50.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="1" data-onenote-y="107.9033203125" data-onenote-w="13" data-onenote-h="0.6000000238418579"><div class="container-outline" style="max-width: 624px"><div class="outline-element" style="margin-left: 0px"><p style="font-family: Calibri,sans-serif; font-size: 11pt">&nbsp;</p></div>
</div></div><div data-onenote-x="29.5" data-onenote-y="107.9000015258789" data-onenote-w="13.5" data-onenote-h="8.375"><img src="/pictures/onenote-notes/onenote-redis-basics-51.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="110.4000015258789" data-onenote-w="11.23611068725586" data-onenote-h="5.666666507720947"><img src="/pictures/onenote-notes/onenote-redis-basics-52.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="66.5" data-onenote-y="116.4000015258789" data-onenote-w="11.083333015441895" data-onenote-h="4.44444465637207"><img src="/pictures/onenote-notes/onenote-redis-basics-53.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="29.5" data-onenote-y="116.9000015258789" data-onenote-w="16.875" data-onenote-h="9.583333015441895"><img src="/pictures/onenote-notes/onenote-redis-basics-54.webp" alt="笔记图片" loading="lazy" decoding="async"></div><div data-onenote-x="15" data-onenote-y="117.9000015258789" data-onenote-w="13" data-onenote-h="0.6000000238418579"><div class="container-outline" style="max-width: 624px"><div class="outline-element" style="margin-left: 0px"><p style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">逐步讲解</p></div><ol class="list-0" style="position: relative"><li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">func view1(c *gin.Context, who string) {</span><ul class="list-1" style="position: relative"><li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">定义了一个函数 view1，接收 gin 的上下文 c 和一个字符串参数 who（看起来用来表示“谁”的前缀，比如用户名或作者 id）。</span></li>
</ul></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">pattern := fmt.Sprintf("%s:*", who)</span><ul class="list-2" style="position: relative"><li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">构建 Redis key 的匹配模式，例如如果 who = "alice"，pattern 就是 "alice:*"。用于后面执行 SCAN 来查找所有以 who: 开头的 key。</span></li>
</ul></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">var works []model.Work</span><ul class="list-3" style="position: relative"><li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">创建一个空的切片，用来收集从 Redis 中读取到的作品数据（model.Work）。</span></li>
</ul></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">iter := Temp.RE.Scan(c, 0, pattern, 0).Iterator()</span><ul class="list-4" style="position: relative"><li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">使用 Redis 的 SCAN 命令按模式遍历 keys：</span><ul class="list-5" style="position: relative"><li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">第一个参数是上下文（这里直接传了 gin.Context），用于超时/取消。</span></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">0 表示从 cursor 0 开始扫描（第一次）。</span></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">pattern 是前面构建的匹配模式。</span></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">最后一个 0 是 count（建议为扫描提供一个合理的 count，0 表示使用默认）。</span></li>
</ul></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">.Iterator() 返回一个迭代器对象（可以使用 iter.Next(ctx) 逐个遍历匹配到的 key，不会一次性把所有 key 拉到内存）。</span></li>
</ul></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">for iter.Next(c) {</span><ul class="list-6" style="position: relative"><li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">迭代器的循环，iter.Next(ctx) 每次移动到下一个匹配的 key，返回 true 则继续。</span></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">注意：SCAN 是增量式的，不会一次性阻塞所有 key。它可能在多次调用中返回相同 key（极少见），并且在遍历过程中如果有并发修改，结果不是强一致的。</span></li>
</ul></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">workData, err := Temp.RE.HMGet(c, iter.Val(), "title", "author", "content", "image").Result()</span><ul class="list-7" style="position: relative"><li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">对当前 key（iter.Val() 返回 key 字符串）执行 HMGET，按顺序获取 hash 的四个字段：title, author, content, image。</span></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">Result() 返回 ([]interface{}, error) —— 每个字段对应一个位置，字段不存在时返回 nil。</span></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">如果发生错误（比如连接失败），代码里选择用 continue 跳过当前 key。</span></li>
</ul></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">if err != nil { continue }</span><ul class="list-8" style="position: relative"><li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">出错就跳过该 key，并继续下一个 key。</span></li>
</ul></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">work := model.Work{<br>Title: workData[0].(string),<br>Author: workData[1].(string),<br>Content: workData[2].(string),<br>Image: workData[3].(string),<br>}</span><ul class="list-9" style="position: relative"><li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">将返回的 interface{} 数组转换为 string 并构造 model.Work。</span></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">这里使用了断言 .(string)。如果某个字段为 nil（字段不存在）或不是 string 类型，会引发 panic —— 这是一个风险点。</span></li>
</ul></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">works = append(works, work)</span><ul class="list-10" style="position: relative"><li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">把构造好的 work 加入列表。</span></li>
</ul></li>
<li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">c.JSON(200, gin.H{"works": works})</span><ul class="list-11" style="position: relative"><li class="outline-element" style="margin-left: 36px"><span style="background-color: rgb(192,192,192); color: rgb(0,0,0); font-family: Roboto,sans-serif; font-size: 10.5pt">用 gin 返回 HTTP 状态 200 和 JSON 对象，包含 works 字段。</span></li>
</ul></li>
</ol>
</div></div><div data-onenote-x="66.5" data-onenote-y="120.9000015258789" data-onenote-w="15.583333015441895" data-onenote-h="5.75"><img src="/pictures/onenote-notes/onenote-redis-basics-55.webp" alt="笔记图片" loading="lazy" decoding="async"></div>


</div>

<details class="onenote-details"><summary>附件文档全文：《redis 的知识》（go-redis 函数整理）</summary>
<div class="onenote-body onenote-doc">
<div class='mx-auto max-w-5xl shadow-md prose bg-white px-2 py-4'>
        <h1 class='flex flex-row justify-between items-center my-4 h-8'>
            <span>redis的知识</span>
            <a href="https://chatboxai.app" target="_blank" >
                <img src='https://chatboxai.app/icon.png'>
            </a>
        </h1>
        <hr />
        <div>
<h2>1. 添加缓存服务</h2>
<div>
<p><b>ASSISTANT: </b></p>
<div><p>下面把示例代码里“每一个用到的函数/方法”的函数签名、参数说明、返回值与作用按模块整理，便于你快速查阅。内容基于 github.com/redis/go-redis/v9 与 gin。</p>
<p>一、Redis 客户端初始化与连通性</p>
<ul>
<li>
<p>创建客户端</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>NewClient</span><span>(</span><span>opt </span><span>*</span><span>redis</span><span>.</span><span>Options</span><span>)</span><span> </span><span>*</span><span>redis</span><span>.</span><span>Client
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数：
<ul>
<li>opt：Redis 连接配置。
<ul>
<li>Addr string：地址，如 &quot;redis:6379&quot; 或 &quot;127.0.0.1:6379&quot;</li>
<li>Password string：密码（示例为 &quot;123456&quot;）</li>
<li>DB int：数据库索引，默认 0</li>
<li>PoolSize int：连接池最大连接数</li>
<li>MinIdleConns int：保持的最小空闲连接</li>
</ul>
</li>
</ul>
</li>
<li>返回值：*redis.Client，客户端实例。</li>
<li>作用：构造一个连接 Redis 的客户端。</li>
</ul>
</li>
<li>
<p>Ping 测试连通性</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>c </span><span>*</span><span>Client</span><span>)</span><span> </span><span>Ping</span><span>(</span><span>ctx context</span><span>.</span><span>Context</span><span>)</span><span> </span><span>*</span><span>redis</span><span>.</span><span>StatusCmd
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数：
<ul>
<li>ctx：上下文（可控制超时/取消）。</li>
</ul>
</li>
<li>返回值：*redis.StatusCmd（结果可通过 Err() 或 Result() 读取）。
<ul>
<li>StatusCmd.Err() error：是否有错误</li>
<li>StatusCmd.Result() (string, error)：通常返回 &quot;PONG&quot;</li>
</ul>
</li>
<li>作用：检测与 Redis 的连接是否正常。</li>
</ul>
</li>
<li>
<p>上下文超时（标准库）</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>WithTimeout</span><span>(</span><span>parent context</span><span>.</span><span>Context</span><span>,</span><span> timeout time</span><span>.</span><span>Duration</span><span>)</span><span> </span><span>(</span><span>context</span><span>.</span><span>Context</span><span>,</span><span> context</span><span>.</span><span>CancelFunc</span><span>)</span><span>
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数：
<ul>
<li>parent：父上下文</li>
<li>timeout：超时时间</li>
</ul>
</li>
<li>返回值：
<ul>
<li>Context：带超时的上下文</li>
<li>CancelFunc：取消函数（用完要调用）</li>
</ul>
</li>
<li>作用：限制操作最长执行时间，避免挂死。</li>
</ul>
</li>
</ul>
<p>二、Gin 路由、处理函数与上下文</p>
<ul>
<li>
<p>创建默认引擎</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>Default</span><span>(</span><span>)</span><span> </span><span>*</span><span>gin</span><span>.</span><span>Engine
</span><span>2</span></code></div></div></div></pre>
</li>
<li>返回值：*gin.Engine，包含 Logger、Recovery 中间件。</li>
<li>作用：快捷创建 Web 引擎。</li>
</ul>
</li>
<li>
<p>注册 POST 路由</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>engine </span><span>*</span><span>Engine</span><span>)</span><span> </span><span>POST</span><span>(</span><span>relativePath </span><span>string</span><span>,</span><span> handlers </span><span>...</span><span>gin</span><span>.</span><span>HandlerFunc</span><span>)</span><span>
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数：
<ul>
<li>relativePath：路由路径，如 &quot;/tx-pipeline-demo&quot;</li>
<li>handlers：一个或多个处理函数</li>
</ul>
</li>
<li>作用：绑定处理函数到 POST 路由。</li>
</ul>
</li>
<li>
<p>处理函数类型</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>type</span><span> HandlerFunc </span><span>func</span><span>(</span><span>*</span><span>gin</span><span>.</span><span>Context</span><span>)</span><span>
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数：
<ul>
<li>*gin.Context：请求上下文（含 Request、Response、Params 等）。</li>
</ul>
</li>
<li>作用：处理单个 HTTP 请求。</li>
</ul>
</li>
<li>
<p>从请求获取上下文</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>c </span><span>*</span><span>gin</span><span>.</span><span>Context</span><span>)</span><span> Request</span><span>.</span><span>Context</span><span>(</span><span>)</span><span> context</span><span>.</span><span>Context
</span><span>2</span></code></div></div></div></pre>
</li>
<li>返回值：标准库 Context，用于传递给 Redis 等库。</li>
<li>作用：让后端操作受请求生命周期控制。</li>
</ul>
</li>
<li>
<p>返回 JSON</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>c </span><span>*</span><span>gin</span><span>.</span><span>Context</span><span>)</span><span> </span><span>JSON</span><span>(</span><span>code </span><span>int</span><span>,</span><span> obj any</span><span>)</span><span>
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数：
<ul>
<li>code：HTTP 状态码，如 http.StatusOK</li>
<li>obj：任意可序列化对象，常用 gin.H</li>
</ul>
</li>
<li>作用：返回 JSON 响应。</li>
</ul>
</li>
<li>
<p>gin.H（便捷 Map）</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>type</span><span> H </span><span>map</span><span>[</span><span>string</span><span>]</span><span>any
</span><span>2</span></code></div></div></div></pre>
</li>
<li>作用：构建 JSON 对象。</li>
</ul>
</li>
<li>
<p>启动服务</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>engine </span><span>*</span><span>Engine</span><span>)</span><span> </span><span>Run</span><span>(</span><span>addr </span><span>...</span><span>string</span><span>)</span><span> </span><span>error</span><span>
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数：
<ul>
<li>addr：可选地址，默认 &quot;:8080&quot;</li>
</ul>
</li>
<li>返回值：error</li>
<li>作用：启动 HTTP 服务器。</li>
</ul>
</li>
</ul>
<p>三、Redis 事务（MULTI/EXEC）与乐观锁（WATCH）</p>
<ul>
<li>
<p>使用事务批处理（在客户端维度）</p>
<ul>
<li>签名（客户端方法）：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>c </span><span>*</span><span>Client</span><span>)</span><span> </span><span>TxPipelined</span><span>(</span><span>ctx context</span><span>.</span><span>Context</span><span>,</span><span> fn </span><span>func</span><span>(</span><span>redis</span><span>.</span><span>Pipeliner</span><span>)</span><span> </span><span>error</span><span>)</span><span> </span><span>(</span><span>[</span><span>]</span><span>redis</span><span>.</span><span>Cmder</span><span>,</span><span> </span><span>error</span><span>)</span><span>
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数：
<ul>
<li>ctx：上下文</li>
<li>fn：回调，在其中向事务管道 pipe 排队命令
<ul>
<li>类型：func(redis.Pipeliner) error</li>
</ul>
</li>
</ul>
</li>
<li>返回值：
<ul>
<li>[]redis.Cmder：每条命令的结果对象</li>
<li>error：提交阶段错误；若为 nil 表示 EXEC 成功</li>
</ul>
</li>
<li>作用：封装 MULTI/EXEC，一次性按顺序执行回调中排队的命令，保证原子性并减少往返。</li>
</ul>
</li>
<li>
<p>获取事务管道（如果你需要更细控制）</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>c </span><span>*</span><span>Client</span><span>)</span><span> </span><span>TxPipeline</span><span>(</span><span>)</span><span> redis</span><span>.</span><span>Pipeliner
</span><span>2</span><span></span><span>func</span><span> </span><span>(</span><span>tx </span><span>*</span><span>Tx</span><span>)</span><span> </span><span>TxPipeline</span><span>(</span><span>)</span><span> redis</span><span>.</span><span>Pipeliner
</span><span>3</span></code></div></div></div></pre>
</li>
<li>说明：返回一个事务管道，需手动 Exec/Close；一般直接用 TxPipelined 更简单。</li>
</ul>
</li>
<li>
<p>乐观锁（WATCH）</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>c </span><span>*</span><span>Client</span><span>)</span><span> </span><span>Watch</span><span>(</span><span>ctx context</span><span>.</span><span>Context</span><span>,</span><span> fn </span><span>func</span><span>(</span><span>*</span><span>redis</span><span>.</span><span>Tx</span><span>)</span><span> </span><span>error</span><span>,</span><span> keys </span><span>...</span><span>string</span><span>)</span><span> </span><span>error</span><span>
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数：
<ul>
<li>ctx：上下文</li>
<li>fn：回调，在监视的键不被修改的前提下执行；类型：func(*redis.Tx) error</li>
<li>keys：要监视的键列表</li>
</ul>
</li>
<li>返回值：
<ul>
<li>error：
<ul>
<li>nil：提交成功</li>
<li>redis.TxFailedErr：表示监视的键在执行前被其他客户端修改，事务未执行（需重试）</li>
<li>其他 error：连接/命令错误等</li>
</ul>
</li>
</ul>
</li>
<li>作用：基于乐观锁的事务控制。READ → 计算 → MULTI/EXEC 提交；若被改动，EXEC 不执行。</li>
</ul>
</li>
<li>
<p>在 WATCH 回调里读取与提交</p>
<ul>
<li>
<p>读取键值：</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>tx </span><span>*</span><span>Tx</span><span>)</span><span> </span><span>Get</span><span>(</span><span>ctx context</span><span>.</span><span>Context</span><span>,</span><span> key </span><span>string</span><span>)</span><span> </span><span>*</span><span>redis</span><span>.</span><span>StringCmd
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数：
<ul>
<li>ctx：上下文</li>
<li>key：键名</li>
</ul>
</li>
<li>返回值：*redis.StringCmd
<ul>
<li>常用读取：
<ul>
<li>StringCmd.Result() (string, error)</li>
<li>StringCmd.Int() (int, error)         // 便捷转换为整数（示例中使用）</li>
<li>StringCmd.Int64() (int64, error)     // 另一个整数转换</li>
</ul>
</li>
<li>错误：
<ul>
<li>redis.Nil：键不存在（不是连接错误）</li>
</ul>
</li>
</ul>
</li>
<li>作用：读取当前值用于判断。</li>
</ul>
</li>
<li>
<p>在事务中排队命令并提交：</p>
<ul>
<li>签名（在 tx 上）：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>tx </span><span>*</span><span>Tx</span><span>)</span><span> </span><span>TxPipelined</span><span>(</span><span>ctx context</span><span>.</span><span>Context</span><span>,</span><span> fn </span><span>func</span><span>(</span><span>redis</span><span>.</span><span>Pipeliner</span><span>)</span><span> </span><span>error</span><span>)</span><span> </span><span>(</span><span>[</span><span>]</span><span>redis</span><span>.</span><span>Cmder</span><span>,</span><span> </span><span>error</span><span>)</span><span>
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数与返回值：同 Client.TxPipelined</li>
<li>作用：在 WATCH 的安全窗口内，将多条写操作作为一个事务提交。</li>
</ul>
</li>
</ul>
</li>
<li>
<p>事务相关错误</p>
<ul>
<li>redis.TxFailedErr（变量）
<ul>
<li>含义：监视的键在 EXEC 前被改动导致事务未执行，通常需要重试。</li>
</ul>
</li>
<li>redis.Nil（变量）
<ul>
<li>含义：值不存在（非致命错误，表示键不存在）。</li>
</ul>
</li>
</ul>
</li>
</ul>
<p>四、Pipeliner 常用命令（在事务中或普通管道中都可用）</p>
<ul>
<li>
<p>HSET（设置哈希字段）</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>p Pipeliner</span><span>)</span><span> </span><span>HSet</span><span>(</span><span>ctx context</span><span>.</span><span>Context</span><span>,</span><span> key </span><span>string</span><span>,</span><span> values </span><span>...</span><span>interface</span><span>{</span><span>}</span><span>)</span><span> </span><span>*</span><span>redis</span><span>.</span><span>IntCmd
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数：
<ul>
<li>ctx：上下文</li>
<li>key：哈希键名</li>
<li>values：可为成对的 field, value 序列，或单个 map[string]interface{}
<ul>
<li>示例：HSet(ctx, &quot;user:1001&quot;, &quot;name&quot;, &quot;Alice&quot;, &quot;balance&quot;, &quot;100&quot;)</li>
<li>或：HSet(ctx, &quot;user:1001&quot;, map[string]interface{}{&quot;name&quot;:&quot;Alice&quot;,&quot;balance&quot;:&quot;100&quot;})</li>
</ul>
</li>
</ul>
</li>
<li>返回值：*redis.IntCmd（新添加的字段数量）
<ul>
<li>读取：IntCmd.Result() (int64, error)，IntCmd.Val() int64</li>
</ul>
</li>
<li>作用：批量设置哈希字段。</li>
</ul>
</li>
<li>
<p>INCR（自增）</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>p Pipeliner</span><span>)</span><span> </span><span>Incr</span><span>(</span><span>ctx context</span><span>.</span><span>Context</span><span>,</span><span> key </span><span>string</span><span>)</span><span> </span><span>*</span><span>redis</span><span>.</span><span>IntCmd
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数：
<ul>
<li>ctx：上下文</li>
<li>key：键名（不存在时按 0 起始）</li>
</ul>
</li>
<li>返回值：*redis.IntCmd（自增后的值）</li>
<li>作用：计数器 +1。</li>
</ul>
</li>
<li>
<p>DECR（自减）</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>p Pipeliner</span><span>)</span><span> </span><span>Decr</span><span>(</span><span>ctx context</span><span>.</span><span>Context</span><span>,</span><span> key </span><span>string</span><span>)</span><span> </span><span>*</span><span>redis</span><span>.</span><span>IntCmd
</span><span>2</span></code></div></div></div></pre>
</li>
<li>参数/返回值：同 Incr</li>
<li>作用：计数器 -1（常用于扣库存）。</li>
</ul>
</li>
<li>
<p>命令结果公共接口</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>type</span><span> Cmder </span><span>interface</span><span> </span><span>{</span><span>
</span><span>2</span><span>    </span><span>Name</span><span>(</span><span>)</span><span> </span><span>string</span><span>
</span><span>3</span><span>    </span><span>FullName</span><span>(</span><span>)</span><span> </span><span>string</span><span>
</span><span>4</span><span>    </span><span>Args</span><span>(</span><span>)</span><span> </span><span>[</span><span>]</span><span>interface</span><span>{</span><span>}</span><span>
</span><span>5</span><span>    </span><span>Err</span><span>(</span><span>)</span><span> </span><span>error</span><span>
</span><span>6</span><span>    </span><span>String</span><span>(</span><span>)</span><span> </span><span>string</span><span>
</span><span>7</span><span></span><span>}</span><span>
</span><span>8</span></code></div></div></div></pre>
</li>
<li>说明：TxPipelined 返回的每条命令结果都实现 Cmder，可用于统一检查错误。</li>
</ul>
</li>
</ul>
<p>五、HTTP 常量与用法（标准库）</p>
<ul>
<li>HTTP 状态码（net/http）
<ul>
<li>常用：
<ul>
<li>http.StatusOK（200）</li>
<li>http.StatusInternalServerError（500）</li>
<li>http.StatusConflict（409）</li>
</ul>
</li>
<li>用途：表达请求成功、服务器错误、资源冲突（事务重试失败）。</li>
</ul>
</li>
</ul>
<p>六、其他标准库函数（示例中用到）</p>
<ul>
<li>
<p>字符串格式化</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>Sprintf</span><span>(</span><span>format </span><span>string</span><span>,</span><span> a </span><span>...</span><span>any</span><span>)</span><span> </span><span>string</span><span>
</span><span>2</span></code></div></div></div></pre>
</li>
<li>作用：构造错误信息或日志字符串。</li>
</ul>
</li>
<li>
<p>环境变量</p>
<ul>
<li>签名：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>Getenv</span><span>(</span><span>key </span><span>string</span><span>)</span><span> </span><span>string</span><span>
</span><span>2</span></code></div></div></div></pre>
</li>
<li>作用：读取 REDIS_ADDR、REDIS_PASSWORD 等。</li>
</ul>
</li>
<li>
<p>时间</p>
<ul>
<li>当前时间：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>Now</span><span>(</span><span>)</span><span> time</span><span>.</span><span>Time
</span><span>2</span></code></div></div></div></pre>
</li>
<li>格式化：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>(</span><span>t Time</span><span>)</span><span> </span><span>Format</span><span>(</span><span>layout </span><span>string</span><span>)</span><span> </span><span>string</span><span>
</span><span>2</span></code></div></div></div></pre>
<ul>
<li>常用 layout：time.RFC3339</li>
</ul>
</li>
<li>休眠：
<pre><div><div><div><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="var(--chatbox-tint-tertiary)" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M15.695 14.305c1.061 1.06 2.953 .888 4.226 -.384c1.272 -1.273 1.444 -3.165 .384 -4.226c-1.061 -1.06 -2.953 -.888 -4.226 .384c-1.272 1.273 -1.444 3.165 -.384 4.226z"></path><path d="M12.68 9.233c-1.084 -.497 -2.545 -.191 -3.591 .846c-1.284 1.273 -1.457 3.165 -.388 4.226c1.07 1.06 2.978 .888 4.261 -.384a3.669 3.669 0 0 0 1.038 -1.921h-2.427"></path><path d="M5.5 15h-1.5"></path><path d="M6 9h-2"></path><path d="M5 12h-3"></path></svg><span>GO</span></div><div></div></div><div><div><code><span>1</span><span>func</span><span> </span><span>Sleep</span><span>(</span><span>d time</span><span>.</span><span>Duration</span><span>)</span><span>
</span><span>2</span></code></div></div></div></pre>
</li>
</ul>
</li>
</ul>
<p>七、用法串起来的流程提示（简化版）</p>
<ul>
<li>创建客户端：redis.NewClient(&amp;redis.Options{Addr, Password, ...})</li>
<li>Ping 连通性：rdb.Ping(ctx)</li>
<li>路由与处理函数：engine.POST(..., func(c *gin.Context){ ... })</li>
<li>在处理函数中拿到 ctx：ctx := c.Request.Context()</li>
<li>原子事务批处理：rdb.TxPipelined(ctx, func(pipe redis.Pipeliner){ pipe.HSet(...); pipe.Incr(...); return nil })</li>
<li>乐观锁事务：rdb.Watch(ctx, func(tx *redis.Tx){ v, _ := tx.Get(ctx, key).Int(); tx.TxPipelined(ctx, func(p redis.Pipeliner){ p.Decr(...); p.Incr(...); return nil }); return nil }, key)</li>
<li>错误分支：
<ul>
<li>errors.Is(err, redis.TxFailedErr)：重试</li>
<li>err == redis.Nil：键不存在</li>
<li>其他 err：返回 500</li>
</ul>
</li>
</ul>
<p>如果你还想看某个具体方法的更多字段、可选参数或返回类型细节（例如 IntCmd、StringCmd 的所有方法），告诉我方法名，我再进一步展开。</p></div></div>
<hr />
</div>

        <hr />
        <a href="https://chatboxai.app" target="_blank">
            <img src='https://chatboxai.app/icon.png'>
            <b style='font-size:30px'>Chatbox AI</b>
        </a>
        <p><a a href="https://chatboxai.app" target="_blank">https://chatboxai.app</a></p>
    </div>
</div>
</details>
