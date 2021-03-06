# 第二周任务：人/衣服

截止日期：__10.28__

## 关于上一周的任务

* 规范~~车牌号~~用户名为你的拼音
* 为你的发布内容添加标签 —— 至少给每周任务的文章添加一个`task`或者`任务`标签
* 使用`#`来规范你的文章结构
  * 全文只允许一个一级标题，作为文章标题，必须在第一行
  * 依次使用高低等级的标题，不跨等级使用
  * 规范你得到由标题组成的那张结构图，帮助你快速理解与跳转
* 在反引号间引入 **不超过一行的代码段** 或 **专有名词**
* 在三个反引号之间引入 **超过一行的代码块**，记得注明语言名称以高亮
* 列表元素需要被空行所包围
* 图片引入`![这里面什么都不用填](网址)`，如果想引入本地图片，推荐使用[网易相册](http://photo.163.com)上传生产外链
* 各位向 **@李雨柯** 学习，将每章的提出问题单独列在结尾
* 还有快捷键：`ctrl+z/y` 对应 **撤销/重复**，`ctrl+x/c/v` 对应 **剪贴/复制/粘贴**

>选择自己最高效率，最舒服的方式来进行写作，好的驾驶习惯为您保驾护航！

当然也很推荐大家使用`markdowncmd`来记录课程上的核心知识，不仅提高你对课程的理解，也能让使用`markdown`更加熟练：添加`latex`数学公式的 [字典文档](https://www.zybuluo.com/codeep/note/163962)

有钱人/习惯使用者也可以考虑高级会员，会员99员/年，功能：

* 可以导出样式漂亮的`html`
* 导出`PDF`
* 导出到印象笔记
* 从剪贴板一键上传图片并插入`![](上传图片链接)`
* 离线文件编辑

## 编辑器

* `Sublime Text`快捷易用，占用内存小，但扩展功能配置比较困难
* `Atom`功能强大，易于配置扩展功能，但占用内存大，容易卡顿

>总之，根据你电脑的配置使用适合你的编辑器，`mac`系统推荐`Atom`

## HTML/CSS

>箴言：学习`HTML`和`CSS`最最关键的一点就是 —— 你只需要知道应该怎样去实现目标与这样做和原因，并动手实践，其它的事情你不需要去想

`HTML`超文本标记语言：可以进行多个维度的链接，

我们在浏览器里面看到的每个网页都是`html`文件，当你在浏览器地址输入`www.baidu.com`：

* 你的路由器解析`www.baidu.com`到百度服务器的地理位置
* 你的电脑和百度的服务器建立连接
* 百度返回连接的一些信息和一个`html`文件
* 你的浏览器下载该`html`文件到浏览器缓存
* 你的浏览器将`html`文件按照`html`标准渲染成`富文本`
* 你看到百度的首页

>注意：上面的流程是经过大量简化的结果

`html`由一个个标签组成，每个标签都具有属性，标签的内容和属性的内容需要遵循`html`规范

`<!DOCTYPE html>`告诉浏览器按照最新的`html5`标准来渲染`html`页面

`html`标签在最外层，里面有两层标签`head`和`body`：

* `head`提供关于网页的信息
* `body`提供网页的主题内容

这是一个`html`文件的基础模板

```html
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="UTF-8">
    <!--种种meta标签-->
    <title>Document</title>
  </head>
  <body>
    <!--content-->
  </body>
```
`meta`头标签不是必要的，相关知识[查看这里](http://www.css88.com/archives/6410)，不必细看

在互联网早期，网页的样式由标签的属性决定，产生了问题：

* 标签成分赘余
* 属性难以复用
* 内容与样式混杂难以编辑

于是我们有了`CSS` —— 层叠样式表，在外部以特定规则的形式对页面上的全部标签进行修饰，保证样式的重复使用

## 基本要求

1. 复习小白变怪兽1,2章的笔记
1. 安装好`Atom`/`Sublime Text3`编辑器
1. 学习[chrome调试工具](http://www.haoqicat.com/chrome-devtools)的1-2,6章（我会把账号密码放到群里）
1. 浏览[CSS教程](http://zh.learnlayout.com/no-layout.html)，1-6页，使用`chrome调试工具`进行研究，动手实现每页的元素效果（重点）
2. 学习[小白变怪兽](http://bianguaishou.com)的6章
3. 更新你的笔记，描述你实现`CSS教程`1-6页页面的思考与过程

## 拓展任务（超快速学习）

1. 如果你感到自己学习`CSS`基础的过程中出现困难，推荐超快速学习[慕课网HTML/CSS教程](http://www.imooc.com/learn/9)6到15章
1. 如果你感到自己学习**盒子模型**的过程中出现困难，推荐学习
  * [慕课网paddinng教程](http://www.imooc.com/learn/710)
  * [慕课网margin教程](http://www.imooc.com/learn/680)



