import 'package:flutter/material.dart';
import 'package:qit/ui/screens/login.dart';
import 'core/router.dart';


void main() {
  Routers.defineRoutes();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
        title: 'QIT',
        theme: ThemeData(
          fontFamily: 'Roboto',
        ),
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
        initialRoute: 'login',
        onGenerateRoute: Routers.router.generator);
  }
}

