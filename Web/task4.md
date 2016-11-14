# 第四周任务： 浮动清除和绝对定位

截止日期：__11.21

这次任务量稍微有点大，所以截止日期靠后一点

上一次大家任务完成的都很好，继续保持

交警因为考试和和课题研究所以这次任务出的有点晚，在这里表示很惭愧

当然车速有点跟不上的司机也要趁机提一下速

话不多说

## 关于上一周的任务

上一周的内容主要是：

* 浮动效果
* 三栏的自适应布局

大家可以回忆一下：

* `float`的特性
* `margin`负值法实现三栏布局
* `float`左右法实现三栏布局

我想我给每个司机都当面讲过一边了，希望大家能够完善下笔记

值得一提的是__清楚浮动__，大家应该听`peter`讲过一遍了

这个破东西学起来十分枯燥乏味，所以我就把写法和原因直接和大家讲述一下吧：

```HTML
<div class="normal-father">
  <p class="float-child"></p>
<div>
```

```CSS
normal-father {
  border: 3px solid black;
  background: red;
}
.float-child {
  float: left;
  height: 300px;
  width: 300px;
  border: 3px solid blue;
}
```

在这种情况下，大家认为`normal-father`的高是多少呢？

因当一个元素浮动之后，不会影响到__块级__框的布局而只会影响__行内__框（包括文本，图片）的排列

所以我们会发现`normal-father`的高为`0`，即使它们存在父子关系

这样所谓的高度塌陷不是我们所期望的结果，我们希望父元素包裹子元素，这样才能让父元素的边框，背景之类的属性生效

在上面的情况我们确实可以给`normal-father`一个`306px`的高度来解决问题，但是如果子元素的高度不确定呢？比如说子元素是一篇你也不知道多少字文章，我相信你们做自适应布局的时候有过这种感受

我们采用`清楚浮动`的方式来解决问题，下面是一个`清楚浮动`的定宽三栏布局例子：

```html
<div class="normal-father clearfix">
  <div class="child c1"></div>
  <div class="child c2"></div>
  <div class="child c3"></div>
</div>
```
```css
.normal-father {
  width: 900px;
  border: 3px solid black;
}
// 我可没设置父元素高度
.child {
  width: 300px;
  float: left;
}
.c1{
  background: red;
}
.c2 {
  background: green;
}
.c3 {
  background: blue;
}

// 清楚浮动开始
.clearfix:after {
  content:"200B";
  display:block;
  height:0;
  clear:both;
}
.clearfix {
  *zoom:1;
}
// 清楚浮动结束
```

之后你可以发现父元素有`300px`的高度

这一段__清楚浮动__的`css`代码需要你记录在笔记中，之后你需要实现`float`多栏的时候，只需要给父元素加上`clearfix`的类名

如果你想深究其原因，也不是不可以，请看[那些年我们清楚过的浮动](http://www.cnblogs.com/lhb25/p/story-of-clear-float.html)


## 绝对定位

上一次我说过，`CSS`布局共有三种布局规则，他们互相不影响：

* 常规规则——常规流
* 浮动规则
* 绝对定位规则

常规规则就是，__块级元素__，__行内元素__所遵循的规则（我们已经掌握了）

__浮动规则__我们也刚刚学习完毕

最后一个就是绝对布局：

`CSS`中，`position`有以下几种值`static`,`absolute`,`fixed`,`relative`

其中，如果你没有给一个元素设置`position`那它的`position`值就是`static`，属于常规规则

`relative`同样属于常规规则（配合`left`,`top`,`bottom`,`right`使用可以相对元素常规规则位置进行布局）

`absolute`和`fixed`则属于绝对定位规则，与其他两种不相干（你会发现它周围的普通元素都会当它不存在）

* `absolute`相对于离自己最近的一个`position`非`static`的祖先元素进行定位（配合`left`,`top`,`bottom`,`right`）,如果不存在，就相对`<html>`元素进行定位
* `fixed`相对浏览器窗口进行定位（配合`left`,`top`,`bottom`,`right`）

多读几遍然后动手试一试，你就掌握了`CSS`的所有主流的布局方案

大家想一下，我们是不是可以用`absolute`配合`relative`就可以实现一个__绝对定位元素__相对一个任意一个__常规流元素__进行布局？

## 基本要求

2. 复习[小白变怪兽](http://bianguaishou.com)的第四章，动手尝试我在上面提出的清楚浮动代码（和`peter`的效果一样）
3. 学习[小白变怪兽](http://bianguaishou.com)的第五章，动手尝试
1. 再深入学习[CSS中的absolute](http://www.imooc.com/learn/192)（同样有毒），动手跟做，要求：
  1. 以科普学习的态度去看就好，不需要深入，了解下就好
  1. 别慌，要求不高 : )
1. 顺便看下[CSS中的relative](http://www.imooc.com/learn/565)
1. 完成任务[三栏式布局](http://ife.baidu.com/task/detail?taskId=6)，需要将文件提交给我，要求：

* 这回宽高固定，不使用自适应布局
* 使用__清楚浮动__
* __绝对__和__相对__定位
* 内容可以放任何你想放的东西
3. 更新你的笔记


## 拓展任务

* 喜欢`PhotoShop`的同学可以来看[设计图与网页的实现](http://www.imooc.com/learn/506)

