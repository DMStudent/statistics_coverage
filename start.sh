#调用格式
#sh start.sh urlList文件名
#inputHdfs 为hdfs路径，用来查找urlList中url在其中的数量情况
input=$1
time=`date +"%Y%m%d"`
grepOutput=result/result.$time
inputHdfs=/user/antispam/wangyuan/dailyScanner

#cat $input | xargs -n1 python getHost.py > inputHost.txt
cat $input | xargs -n1 python getPrefix.py > inputHost.txt
sh fgrep.sh inputHost.txt $inputHdfs
sh isInTheHbase.sh inputHost.txt $grepOutput

