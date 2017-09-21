library(dplyr)
load("lego_sales.RData")
install.packages("RJSONIO")
install.packages("jsonlite")
library(RJSONIO)
library(jsonlite)
lego_sales_raw <- fromJSON("lego_sales.json")
lego_flat <- flatten(lego_sales_raw)


d=data_frame(
first_name=map_chr(sales,"first_name"),
last_name=map_chr(sales,"last_name"),
gender=map_chr(sales,"gender"),
age=map_dbl(sales,"age")
#phone_number=map_chr(sales,"phone_number")
#hobbies=map_chr(sales,"hobbies")
)

#k=map(sales,"purchases")
k=map(sales[1],"SetID")


for(i in 1:250)
{
  temp=unlist(sales[i])
  nam=temp[names(temp)=="purchases.Number"]
  num_purchases=length(nam)
}