# -statistics_coverage
给定一个url列表，统计这些url的域名或者前缀在hbase库中是否存在，输出为一个在库的url列表文件和一个不在的列表文件。

调用格式
sh start.sh urlList文件名
inputHdfs 为hdfs路径，用来查找urlList中url在其中的数量情况

文件说明：
fgrep.sh
返回包含给定列表文件的所有库中url
getHost.py
获取url的host
getPrefix.py
获取url的前缀
isHostInTheResult.sh
统计覆盖情况。
