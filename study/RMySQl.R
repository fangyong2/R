#RMysaql
install.packages("RMySQL")
library(RMySQL)
mysqlconnection = dbConnect(MySQL(),user='root',password='',dbname='wiki',host='localhost')
dbListTables(mysqlconnection)
#search table
result = dbSendQuery(mysqlconnection,"select * from urls")
data.frame = fetch(result,n=5)
print(data.frame)
result = NULL
#search table and filter
result = dbSendQuery(mysqlconnection,"select * from urls where urlname='js常用技巧总结(1)'")
