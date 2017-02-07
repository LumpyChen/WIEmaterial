# 假期任务： 初识JavaScript

截止日期：_2.7_

司机们放假爽不爽？

红包拿了多少？

胖了几斤？

假期还剩两周左右

我们来开一波车

## JavaScript

上完`python`课程后

你们肯定不是很想多学一门语言……

但是我还是要安利，原因如下：

* `JavaScript` 可以做所有其它语言都不能做到的事情 --- 在浏览器中运行
* `JavaScript` 可以做 `Python` 做的事情 --- 爬虫，服务器，文件操作等等
* `JavaScript` 和 `C` 更加相似 --- 更低的入门难度
* `JavaScript` 是目前世界上讨论最火热的语言 --- 更多的学习资源

如果你想要精通一门语言，`JavaScript`是很好的一个选择

顺便说一句，`JavaScript` 和 `Java` 之间没啥关系……仅仅是名字相似的两种语言而已

## JavaScript的介绍

每个语言有自己的执行环境和编译器 --- 所以你们必须要安装 `python` 环境才能执行 `python` 语句

`JavaScript`情况特殊，它可以由系统的解析器解析执行，也可以由浏览器内部的内核解析执行

不同公司的浏览器的种类不一，内核也存在偏差，可能会出现写了一段代码在不同浏览器上效果不同的状况

而为了防止这样的情况，[ECMA国际](http://baike.baidu.com/view/3986646.htm)制定了其语法的标准 --- 因此我们的 `JavaScript` 代码在不同浏览器里面都可以发挥几乎相同的效果

[W3C联盟](http://baike.baidu.com/item/万维网联盟?fromtitle=w3c&fromid=216888&type=syn)制定了其操作`HTML`页面的库函数标准 --- 被称为 `DOM` 标准，当然我们 `HTML`，`CSS` 的国际标准也由他们制定

我们学习 `JavaScript` 要接触四大部分：

* `JavaScript` 的语法  --- `ECMAScript`
* `JavaScript` 操作 `HTML` 的库 --- `DOM`
* `JavaScript` 操作 浏览器 的库 --- `BOM`（这部分兼容性较差）
* `JavaScript` 操作 操作系统和网络 的运行环境和库 --- `Node.js` （运行环境唯一，无兼容问题）

## 任务

1. 学习 `JavaScript` 基本语法，学习并实践《JavaScript DOM 编程艺术》第二章
  * 学会使用`script`标签，并学会使用全局的 `alert` 函数将计算结果弹出
  * `Javascript` 是**弱类型**的编程语言，变量声明时不需要指定类型
  * 回想 `Peter` 的 `Chrome dev tool` 教程，在开发工具的 `Console` 里面输入执行语句进行测试
  * 知识点：
    1. 6个基本类型：`number`, `string`, `boolean`, `object`, `undefined`, `null`
    2. 关键的 `object` --- `array` 和 `function`
    3. 操作符，条件语句，循环语句等
2. 学习 `JavaScript` 的 `DOM` 操作，学习并实践《JavaScript DOM 编程艺术》第三章
  * 学习 `DOM` 全局对象 `document` 的种种函数
    * 获取元素
    * 修改属性
3. 继续看下一章节，实现一个文中的 `JavaScript` 图片库
  * [交警的实例](https://lumpychen.github.io/gitutor/)
  * 记得使用审查元素看上面的源码和注释
