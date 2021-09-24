#/bin/bash batch-exec-sql.sh
cat table.txt | while read line
do
    echo mysql -h127.0.0.1 -P3306 -uroot -proot db_name -e"select * from $line"
done
