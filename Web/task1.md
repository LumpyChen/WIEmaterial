# 第一周任务：富文本

记住：截止日期：__10.21__

## 富文本与文本的区别

__富文本__`Rich Text Format`不仅仅是文本，是__具有各种结构与样式的文本__

### 文本

__文本__`Text`本身不具有样式和结构：

![文本](http://static.zybuluo.com/Lumpychen/46g52h7okifyctxip042xz0u/image_1av665tbh1f9m126ss841jaulv89.png
)

每个字符字号，大小，字体，背景全部是系统默认，并未保存到系统内部，只有文本内容本身保存到了系统内部：

证明：例如将`.txt`文件在不同系统/编辑器上打开，会发现他们的字体/大小等仅仅和编辑器的设置有关

### 富文本

__富文本__`Rich Text Format`不仅仅是文本，是__具有各种结构与样式的文本__

![富文本](http://static.zybuluo.com/Lumpychen/c6fdl2683a857ywcwykyfqe3/image_1av67lhb733b1c1b1fihotj1va513.png)

>当然，你看到的这篇文章就是富文本。

不仅仅文本的内容，每个文本的字体、字号、颜色等被保存至电脑内部

## 逻辑关系

>电脑只能以文本方式对任何东西进行保存。

比如我们想保存`19`这个数字到电脑中，它会被保存为二进制`10011`到电脑中

如果这是一个蓝色，微软雅黑，有下划线，字符大小`10px`的富文本`19`呢？`10011`恐怕不能代表这么多内容了

为了保存和显示富文本，我们约定好一个文本的`特定规则`，规则中包含文本的结构和样式，我们写出这种规则的文本去代表富文本，被保存到电脑中

显示富文本时，我们用特定的程序，遵循那个规则，将文本解析为富文本

我们的网页就如同这样的逻辑模型：文本语法规则 + 解析程序 = 富文本

* `.html`(超文本标记语言，我们编写网页文件的文件格式)：就是一种文本的`特定规则`
* 浏览器：根据`html`的标准将文本解析为富文本
* 我们所看到多彩的页面内容就是富文本了

>HTML的标准由国际联盟W3C制定

富文本究竟能有多丰富？ [点击查看](http://www.creativeedgeparties.com/)

## Markdown

当然`Markdown`也算是一种特定规则，相对于`HTML`，它更简单且易于书写

我推荐使用`Markdowncmd`作为其解析程序：

![markdowncmd](http://static.zybuluo.com/Lumpychen/2w1x6flag645kbeanuxivcks/image_1av6aq5rn1ha81hirkqviehepc9.png)

这款强大的软件允许你：

* 在左侧输入文本，右侧试试预览富文本
* 比起传统的`markdown`，额外继承了数学公式等元素
* 文档云同步，你的文本会被保存到云端，多台电脑上同步编辑
* 导出`pdf`,`html`格式文件

等等等等

编辑器第一篇文档就是`markdown`语法的实例，左边是文本，右边就是相应的各种元素

## 基础要求

2. 下载`Markdowncmd`，[点击下载](https://www.zybuluo.com/cmd/)，注册作业部落账户
3. 学习`Markdown`语法，[教程](http://www.jianshu.com/p/1e402922ee32/)，从`二，Markdown 语法的简要规则`开始看
1. 仔细学习`小白变怪兽`网站的第一章和第二章：[http://bianguaishou.com](http://bianguaishou.com)
4. 在`markdowncmd`上，使用`markdown`语言写出第一章和第二章的笔记

>要求：提交你的笔记，我会对你记笔记和你使用`Markdown`的方式提出建议

>注意，不要在`Markdowncmd`附赠的第一篇实例日志上浪费太多时间，从头到尾扫一遍即可，因为太过复杂，下载`window64位`的客户端后记得注册用户，完成其云同步功能

## 拓展要求

1. 如果你想要在`markdowncmd`上编辑数学公式，比如微积分和线性代数笔记，推荐`Latex语言`（被集成在`Markdowncmd`中），[文档点击这里](http://wenku.baidu.com/link?url=4XxZOOktbySLl0MZWrEISuZ8mQbawfaEDz_vdxBmtCFu3qVwC0bOQPBabm37FOEuFttBFC74X7bKu6h2vWB4cj0j5VbSYpQVeTqthl85W4e)
2. 如果你想使用`Markdown`来写`ppt`，推荐`cleaver.js`，[介绍点击这里](https://lumpychen.github.io/2016/zh-cn/Cleaverjs简介/)
2. 如果你有更多时间，可以看`小白变怪兽`的第四章，第五章

