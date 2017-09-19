time=`date +"%H%M%S"`
rm -f result/result.$time
INPUT=`sed -n '1h;1!H;${g;s/\n/ /g;p;}' ${1}`;
echo "input"${INPUT};
inputHdfs=/online/la/norm/norm_index_url_now
hadoop jar fgrep.jar -Dmapreduce.input.fileinputformat.input.dir.recursive=true -Dmapreduce.fileoutputcommitter.algorithm.version=2 -DsaveAs=result/result.$time ${INPUT} ${inputHdfs}
echo "$1:"$1
echo "$2:"$2
#hadoop jar antispam.jar com.sogou.antispam.utilapps.FgrepUTF8 -Dencoding="utf8" -Dmapreduce.input.fileinputformat.input.dir.recursive=true -Dmapreduce.fileoutputcommitter.algorithm.version=2 -DsaveAs=result/result.$time ${INPUT} ${2}
#-DsaveAs=result/result.$time
#-Dmapreduce.job.queuename=test
