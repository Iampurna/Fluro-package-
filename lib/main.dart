import 'package:fluro_package/router.dart';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    RouterFluro.initRoues();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Screen1(),
      initialRoute: '/',
      onGenerateRoute: RouterFluro.fluroRouter.generator,
    );
  }
}
