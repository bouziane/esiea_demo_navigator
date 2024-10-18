import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ecran d'acceuil"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            _showBottomSheet(context);
            // _showSimpleDialog(context);

            // _showAlertDialog(context);

            // var result = await Navigator.pushNamed(context, "details",
            //     arguments: "Hulk");
            // print(result);

            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => DetailsScreen(
            //       itemID: "Zorro",
            //     ),
            //   ),
            // );
          },
          child: Text("Aller aux details"),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 300,
          child: Column(
            children: [
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Partager"),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Supprimer"),
              )
            ],
          ),
        );
      },
    );
  }

  // void _showAlertDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         title: Text("Titre du dialog"),
  //         content: Text('Contenu du dialog'),
  //         actions: [
  //           TextButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //               },
  //               child: Text("Annuler")),
  //           TextButton(
  //               onPressed: () {
  //                 Navigator.pop(context);
  //               },
  //               child: Text("OK")),
  //         ],
  //       );
  //     },
  //   );
  // }

  void _showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text('Choississez une opération'),
          children: [
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Option 1"),
            ),
            SimpleDialogOption(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Option 2"),
            )
          ],
        );
      },
    );
  }
}
