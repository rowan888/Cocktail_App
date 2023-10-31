import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiHandler {
  static const _baseUrl = 'https://www.thecocktaildb.com/api/json/v1/1';

  static Future<Map<String, dynamic>> getRandomCocktail() async {
    final response = await http.get(Uri.parse('$_baseUrl/random.php'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load cocktail');
    }
  }
}
