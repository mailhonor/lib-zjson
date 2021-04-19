<A name="readme_md" id="readme_md"></A>

# lib-zjson

C++版 json 库

本 JSON 库是从 [https://gitee.com/linuxmail/lib-zc](https://gitee.com/linuxmail/lib-zc) 抽出来的,
可单独使用

建议先对照着类(zcc_json.h)看例子

帮助文档 https://gitee.com/linuxmail/lib-zc/blob/master/doc/json_cpp.md

## 介绍

* 借用了vector和map, 学习成本非常低

* 结构简单,只有一个类

* 解析/深度复制使用非递归的方式处理,支持无限深度

* 一个 zcc\_json.cpp, 一个 zcc\_json.h


## 例子

### unserialize_test.cpp

从一个文件读取内容, 并 反序列化为 json

用法 ./unserialize_test somejson.js
 
### create\_test.cpp

根据目标生成一个 json

### object_test.cpp

对象操作例子

### array_test.cpp

数组操作例子

