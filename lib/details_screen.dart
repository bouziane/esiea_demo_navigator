import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  String itemID;

  DetailsScreen({super.key, required this.itemID});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecran de details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ItemID -> $itemID"),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context, "Resultat depuis DetailScreen");
                },
                label: Text("Back"))
          ],
        ),
      ),
    );
  }
}
