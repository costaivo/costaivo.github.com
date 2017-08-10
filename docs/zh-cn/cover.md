# 封面

通过设置 `coverpage` 参数，可以开启渲染封面的功能。具体用法见[配置项#coverpage](configuration.md#coverpage)。

## 基本用法

封面的生成同样是从 markdown 文件渲染来的。开启渲染封面功能后在文档根目录创建 `_coverpage.md` 文件。渲染效果如本文档。

*index.html*

```html
<script>
  window.$docsify = {
    coverpage: true
  }
</script>
<script src="//unpkg.com/docsify"></script>
```

*_coverpage.md*

```markdown
![logo](_media/icon.svg)

# docsify

> A magical documentation site generator.

- Simple and lightweight (~12kb gzipped)
- Multiple themes
- Not build static html files


[GitHub](https://github.com/QingWei-Li/docsify/)
[Get Started](#quick-start)
```



!> 一份文档只会在根目录下加载封面，其他页面或者二级目录下都不会加载。

## 自定义背景

目前的背景是随机生成的渐变色，我们自定义背景色或者背景图。在文档末尾用添加图片的 Markdown 语法设置背景。

*_coverpage.md*

```markdown
# docsify

[GitHub](https://github.com/QingWei-Li/docsify/)
[Get Started](#quick-start)

<!-- 背景图片 -->
![](_media/bg.png)
<!-- 背景色 -->
![color](#f0f0f0)
```
