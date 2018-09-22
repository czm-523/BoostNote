#!/bin/bash
cd /home/czming/Boostnote
git config --global user.name "czm-523"
git config --global user.email "1034946691@qq.com"
git init
git add .
echo '开始提交至本地版本库......'
git commit --date="月 日 时间 年 +0800" -am "提交"
echo '[1]开始同步服务器更新内容......'
git pull origin master --allow-unrelated-histories 
echo '[2]删除远程服务器版本号......'
git remote rm origin
echo '[3]更新远程服务器版本号为本地版本......'
git remote add origin https://czm-523:cao966308@github.com/czm-523/BoostNote.git
echo '[4]开始提交更新......'
git push -u origin master

