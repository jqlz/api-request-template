const url = 'https://api.example.com/data';
const headers = {
    'Authorization': 'Bearer YOUR_TOKEN',
    'Content-Type': 'application/json'
};

fetch(url, { method: 'GET', headers: headers })
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error('Error:', error));
