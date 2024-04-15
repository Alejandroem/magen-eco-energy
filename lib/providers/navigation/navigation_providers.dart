import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationHandler {
  final GlobalKey<NavigatorState> navigatorKey;

  NavigationHandler(this.navigatorKey);

  Future<void> push(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void replaceRoot(String routeName) {
    navigatorKey.currentState!.pushNamedAndRemoveUntil(routeName, (route) => false);
  }

  void pop() {
    navigatorKey.currentState!.pop();
  }
}

final navigationProvider = Provider<NavigationHandler>((ref) {
  return NavigationHandler(GlobalKey<NavigatorState>());
});
