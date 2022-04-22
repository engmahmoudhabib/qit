import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:qit/ui/screens/home.dart';
import 'package:qit/features/login/presentation/screens/login.dart';


class Routers {
  static FluroRouter router = FluroRouter();
  static Handler loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) =>  LoginScreen(),
  );

  static Handler homeViewHandler =
      Handler(handlerFunc: (BuildContext? context, Map<String, List<String>> parameters) => const HomeScreen());
 static void defineRoutes() {
    router.define("login", handler: loginHandler, transitionType: TransitionType.fadeIn);
    router.define("home", handler: homeViewHandler, transitionType: TransitionType.fadeIn);
  }
}
