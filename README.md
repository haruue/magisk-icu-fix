# ICU zh-hans Digital Unit Fix for Android 8.1+

## Overview

Since Android 8.1 (android-8.1.0\_r1), [`android.text.formatter.Formatter.formatFileSize()`](https://developer.android.com/reference/android/text/format/Formatter.html#formatFileSize%28android.content.Context%2C%20long%29) starts to use the strings from [ICU](http://site.icu-project.org/) library to format the file size, which contains many some [unnessary Chinese tranlation](https://android.googlesource.com/platform/external/icu/+/android-8.1.0_r1/icu4c/source/data/unit/zh.txt#131). It make us get file size or storage space in `3.12吉字节` instead of `3.12 GB` in Android 8.1+ with zh-hans. 

![](https://pbs.twimg.com/media/DQblQ3hVwAAqOdg.jpg:large)

Picture via [@sumimakito](https://twitter.com/sumimakito): https://twitter.com/sumimakito/status/938689794204246016

This module replaces the icu data file to fix this problem. 

## 概览

从 Android 8.1 (android-8.1.0\_r1) 开始， [`android.text.formatter.Formatter.formatFileSize()`](https://developer.android.com/reference/android/text/format/Formatter.html#formatFileSize%28android.content.Context%2C%20long%29) 开始使用来自 [ICU](http://site.icu-project.org/) 库的字符串来格式化文件大小， 这个库包含有一些 [不必要的翻译](https://android.googlesource.com/platform/external/icu/+/android-8.1.0_r1/icu4c/source/data/unit/zh.txt#131)， 这使我们在简体中文的 Android 8.1+ 上看到的文件大小、剩余空间之类的东西是 `3.12吉字节` 而不是 `3.12 GB`. 

这个模块更换了 ICU 数据文件来解决这个问题。

## Dowload
[Release](https://github.com/haruue/magisk-icu-fix/releases)

