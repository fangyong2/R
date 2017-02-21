library("XML")
library("methods")
result <- xmlParse(file="input.xml")
result
print(result)
rootnode <- xmlRoot(result)
rootsize <- xmlSize(rootnode)
rootsize
rootnode[1]
#change xml to dataframe
xmldataframe <- xmlToDataFrame("input.xml")
xmldataframe
