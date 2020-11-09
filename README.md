# bill-daily
execl账单模板

## Q&A

* 为什么记账？

    当初记账的初衷时为了想节约开支,最后发现作用不大。在尝试记账的过程中,一直不停的试图寻找一款适合自己的记账软件,不停的更换,最终都没有坚持下来,最后尝试了execl,并坚持了一年。回顾过往的每一笔开销，觉得详细的数据对自己很有意义。

* 为什么选择exec1？

    出于对数据的敏感,exec1能最直观的把数据展示出来。保存最直观、最原始的数据,方便未来对历史数据的回顾。

* 会每天都去记录吗?

    不会。手机端使用wps,通过webdav协议远程接入到云端数据,偶尔周末会在电脑上回顾一周的花销汇总一下。起初能够每天都记录并保存,自动上传,后来2~3天会回顾记录一次,或者一周汇总记录一次每天的花销。目前资金的出口一直保持在支付宝或者微信两端输出,周末花几分钟回顾一下账单,能很清晰的知道每笔钱的去出,然后计入execl。

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
