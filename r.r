library(httr)

url <- "https://api.example.com/data"
response <- GET(url, add_headers(Authorization = "Bearer YOUR_TOKEN", `Content-Type` = "application/json"))

data <- content(response, "text")
print(data)
