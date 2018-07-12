---
title: "讲义编写说明"
slug: "organize"
toc: "true"
---

讲义的文件结构：

```
└── content
    ├── course
    |   ├── 1-Timothy.md   // <- 课程文件
    |   ├── 2-Timothy.md
    |   ├── ...
    |   └── Bible101.md  // <- 课程文件
   └── note
         ├── 1-timothy    // <- 讲义文件夹
          |      └── 0.md   // <- 讲义文件
          |      ├── 1.md   // <- 讲义文件
         └── bible101   
          |      └── 0.md   // <- 讲义文件
          |      ├── 1.md   // <- 讲义文件 
         └── ...
```
1. 课程文件统一放在 course 文件夹中，每个课程一个单独文件。
2. 文件名为课程的英文名。文件名中不能有空格、中文。单词之间用 - 连接。
3. 课程文件内头部为课程的定义，包含课程中英文名称，时间，教师，类别，图片，链接地址等等信息。比如提摩太后书的头部信息为：
  
    > ```---```
    > 
    > title: "2-Timothy"
    > 
    > cn: "提摩太后书"
    > 
    > date: "2016-02-08"
    > 
    > teacher: "Pastor James Witt"
    > 
    > series: "Diploma"
    > 
    > imag: "/images/course/default-course.png"
    > 
    > slug: "2-Timothy"
    > 
    > ```---```

4. 课程定义的内容可以不分顺序，比如 title 和 teacher 可以任意调换位置。
5. 课程定义分为**必需项**和**可选项**。
6. 必需项为：

    title: 课程英文名称

    cn: 课程中文名称

    series: 课程类别，分为 ”Diploma“ （学院课程） 或 ”Independent“ （独立课程）

    slug: 课程链接地址，内容为课程的英文名称。

7. 可选项为：
    
    isfront: 是否出现在首页，如果是则为 "true"。

    weight: 调整首页课程的排序，格式为正整数：（0,1,2,3 ...）
8. 讲义内容放在 note 文件夹内，文件夹名为对应课程的英文名。比如 提摩太后书的讲义放在 note 文件夹下的 2-timothy 文件夹内。并且依次用 0,1,2,3,的正整数命名。
9. 讲义正文的头部同样是讲义内容的定义信息。其内容也容易分为必需项和可选项。
10. 必需项

    ```---```

    slug: 1-timothy-1

    title: "Chapter 1 Combat Error And Treasure God’s Saving Grace" 

    cn: 第一章 抵制错误 珍视神的救恩

    author: Pastor James Witt

    kecheng: "1 Timothy" 

    ```---```

    注意：kecheng的内容必须和课程的英文名称保持一致。

    slug： 为课程英文名加 - 和数字。

11. 可选项

      weight: 1