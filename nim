import httpclient, json

const
  url = "https://api.example.com/data"

var client = httpclient.newHttpClient()
client.headers.add("Authorization", "Bearer YOUR_TOKEN")
client.headers.add("Content-Type", "application/json")

let response = client.get(url)
echo response.body
