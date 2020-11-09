# bill-daily
execl账单模板

## cost.xlsx

账单execl,里面有写好的sum公式，汇总的时候需要修改一下sum统计的列即可

## webdav-shell.sh

webdav方式上传下载文件脚本

坚果云支持webdav ，此处以坚果云为例

* 注册坚果云，在根目录下创建一个bill目录（也可以是其他名字）

https://dav.jianguoyun.com/dav/bill/ 最后的/bill 就是创建的目录名字，如果创建的是其他名字可以修改为其他的名字

* 修改webdav-shell.sh脚本
{id} 替换为webdav协议云盘的账户（坚果云账户）
{passwd} 替换为webdav协议云盘的密码 （坚果云生成的第三方应用鉴权密码）

下载
```
./webdav-shell.sh down cost.xlsx

```

上传
```
./webdav-shell.sh up cost.xlsx
```

## 截图

![截图](./screenshot.png)