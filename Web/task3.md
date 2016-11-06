# 第三周任务：浮动和多栏

截止日期：__11.11__

期中考试结束了，司机们肯定都考得很好，我就不细说了

双十一司机们记得

>该过节的过节， 该表白的表白，该剁手的剁手。

## 关于上一周的任务

上一周的内容主要是：

* `chrome`开发工具的使用
* 盒子模型：`margin`,`border`,`padding`
* __行内元素__和__块状元素__

其中，__块状元素__：

1. `p`,`div`,`h1-6`等标签默认是__块状元素__
1. 可指定宽高
1. `margin`/`padding`/`border`可以指定
1. 可以包含任何元素
1. 无论宽度多少，必定占据一行
1. 使用`margin: 0 auto`居中

__行内元素__：

1. `span`,`a`,`img`等标签默认是__行内元素__
1. 宽高不能指定，可使用`line-height`设置高度
1. 垂直上下方向的`margin`/`padding`不能指定
1. 不能包含__块级元素__
1. 一条直线上多个水平排列
1. 在其父元素中使用`text-align: center`以居中

`img`元素是特殊可以设置宽高的行内元素，[具体请看](https://www.zhihu.com/question/25402556/answer/30728140)

写到这里交警感觉自己说的有点抽象，看的不明白记得当面问我

## 编辑器

编辑器的基本功能我相信你们可以轻松掌握

但是你们肯定想问“安装了`Sublime Text`或者`Atom`怎么进阶地使用呢？”

教程提供给你们，要求：

1. 不包含在基础任务中，你想看的时候再去看，不想看的时候千万别看
2. 不要死记硬背，找到可能会使用的快捷键疯狂使用即可掌握

## 整理思路

来看看我们现在有什么：

![](https://raw.githubusercontent.com/LumpyChen/WIEmaterial/master/Web/img/get.png)

图可是交警自己画的

`CSS`布局共有三种布局规则，他们互相不影响：

* 常规规则——常规流
* 浮动规则
* 绝对定位规则

常规规则就是，__块级元素__，__行内元素__所遵循的规则，我们已经掌握了

然而，要实现固定宽度多栏的布局，我们怎么办呢？__块级元素__不能多栏，__行内元素__又不能固定宽度

于是，我们来学习__浮动规则__

利用__浮动规则__我们可以制作出有个性的作品：[交警原创](http://lumpychen.github.io/Lantau/)

网页中的图片摄影也均为原创

是不是等不及要动手了？

## 基本要求

1. 复习一下之前的知识，尝试一下[基础布局](http://ife.baidu.com/task/detail?taskId=2)，如果感觉简单请跳过，不做验收要求
2. 学习[小白变怪兽](http://bianguaishou.com)的第四章，动手跟做
1. 再深入学习[CSS的float属性](http://www.imooc.com/learn/121)1-6章，动手跟做
1. 浏览[CSS教程](http://zh.learnlayout.com/no-layout.html)，9-10页，使用`chrome调试工具`进行研究，动手实现每页的元素效果
1. 完成任务[三栏式布局](http://ife.baidu.com/task/detail?taskId=3)，需要将文件提交给我，内容可以放任何你想放的东西
3. 更新你的笔记

## 拓展任务

1. 掌握你使用编辑器的方法
  * [Windows下Sublime Text教程](http://www.imooc.com/learn/40)
  * [Mac下ATOM教程（一二三五章）](http://www.haoqicat.com/atom-love-js)，用原来的账号


