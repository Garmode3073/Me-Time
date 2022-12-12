import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sigmagg/firebase_options.dart';
import 'package:sigmagg/globals.dart';
import 'package:sigmagg/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(
            options: DefaultFirebaseOptions.currentPlatform),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return MaterialApp(
              home: Scaffold(
                backgroundColor: secPrimary,
                body: Center(
                    child: CircularProgressIndicator(
                  color: primary,
                )),
              ),
            );
          } else if (!snapshot.hasData) {
            return MaterialApp(
              home: Scaffold(
                backgroundColor: secPrimary,
                body: Center(
                    child: CircularProgressIndicator(
                  color: primary,
                )),
              ),
            );
          }
          return MaterialApp(
            title: 'Sigma GG',
            theme: ThemeData(
              primarySwatch: primary,
            ),
            home: const MyHomePage(title: 'Sigma GG'),
          );
        });
  }
}
