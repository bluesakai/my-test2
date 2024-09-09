while read -r host; do ssh-copy-id user@${host}; done < remote_hosts.txt




	• 获取用户名 排序 
bash-4.2$  git2 log --pretty='%aN'| sort | uniq -c | sort -k1 -n -r

	• 按照以上用户名 获得代码行修改量统计
while read -r name; do git log --author="${name}" --pretty=tformat:--numstat | awk -v name="$name" '{ add += $1; subs += $2; loc += $1 - $2 } END { printf "%s added lines: %s, removed lines: %s, total lines: %s\n", name, add, subs, loc }' -; done < ~/ws/us.txt > ~/ws/output.txt
	• 排序
