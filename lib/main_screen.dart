import 'package:flutter/material.dart';
import 'package:my_cocktail_app/details_screen.dart';
import 'api_handler.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Random Cocktail Generator")),
      body: Center(
        child: ElevatedButton(
          child: Text("Generate Random Cocktail"),
          onPressed: () async {
            final cocktailData = await ApiHandler.getRandomCocktail();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsScreen(cocktailData),
              ),
            );
          },
        ),
      ),
    );
  }
}
