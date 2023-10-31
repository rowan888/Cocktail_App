import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final Map<String, dynamic> cocktailData;

  DetailsScreen(this.cocktailData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(cocktailData['drinks'][0]['strDrink'])),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text("Ingredients:"),
            // Here you can dynamically generate a list of ingredients and measures.
            // ...
            SizedBox(height: 16),
            Text("Instructions:"),
            Text(cocktailData['drinks'][0]['strInstructions']),
          ],
        ),
      ),
    );
  }
}
