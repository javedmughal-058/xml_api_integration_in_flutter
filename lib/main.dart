import 'package:flutter/material.dart';
import 'package:xml_api_integration_in_flutter/view/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'XML Integration',
      theme: ThemeData(
        primaryColor: Colors.teal.shade300,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal.shade300,
          centerTitle: true,
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700)
        ),
        textTheme: const TextTheme(
          bodySmall: TextStyle(fontSize: 12,color: Colors.white, fontWeight: FontWeight.normal),
          bodyMedium: TextStyle(fontSize: 14,color: Colors.white, fontWeight: FontWeight.w600),
          bodyLarge: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.w700),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'XML API Integration'),
    );
  }
}

