import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NavigationHandler {
  final GlobalKey<NavigatorState> navigatorKey;

  NavigationHandler(this.navigatorKey);

  Future<void> push(String routeName) {
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  void pop() {
    navigatorKey.currentState!.pop();
  }
}

final navigationProvider = Provider<NavigationHandler>((ref) {
  return NavigationHandler(GlobalKey<NavigatorState>());
});
