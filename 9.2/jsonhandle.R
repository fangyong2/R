library("rjson")
result <- fromJSON(file = "input.json")
result
# change json to dataframe
json_data_frame <- as.data.frame(result)
json_data_frame
