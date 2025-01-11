import 'package:http/http.dart' as http;

void main() async {
  var url = Uri.parse('https://api.example.com/data');
  var response = await http.get(
    url,
    headers: {
      'Authorization': 'Bearer YOUR_TOKEN',
      'Content-Type': 'application/json',
    },
  );

  if (response.statusCode == 200) {
    print(response.body);
  } else {
    print('Error: ${response.statusCode}');
  }
}
