import 'package:demo_navigator/details_screen.dart';
import 'package:demo_navigator/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      home: Scaffold(body: HomeScreen()),
      onGenerateRoute: (settings) {
        if (settings.name == "/") {
          return MaterialPageRoute(
            builder: (context) => HomeScreen(),
          );
        } else if (settings.name == "details") {
          return PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) =>
                DetailsScreen(
              itemID: settings.name as String,
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              //Animation
              var begin = Offset(0.0, 1.0);
              var end = Offset.zero;
              var curve = Curves.easeInOut;

              var tween =
                  Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);

              return RotationTransition(
                turns: animation,
                child: child,
              );

              // return FadeTransition(
              //   opacity: animation,
              //   child: child,
              // );

              // return SlideTransition(
              //   position: offsetAnimation,
              //   child: child,
              // );
            },
          );

          // return MaterialPageRoute(
          //   builder: (context) =>
          //       DetailsScreen(itemID: settings.arguments as String),
          // );
        }
        return null;
      },
    );
  }
}
