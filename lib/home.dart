import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/ui/pages/signup_page.dart';

import 'providers/auth/auth_providers.dart';
import 'providers/navigation/navigation_providers.dart';
import 'ui/pages/dashboard_page.dart';
import 'ui/pages/forgot_password_page.dart';
import 'ui/pages/login_page.dart';
import 'ui/pages/update_password_page.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navigator = ref.watch(navigationProvider);

    ref.listen(authStateProvider, (oldState, newState) {
      //Loged out to logued in
      if (!(oldState?.isLoggedIn ?? false) && (newState.isLoggedIn)) {
        navigator.replaceRoot("/");
      }
      //loged in to loggued out
      if ((oldState?.isLoggedIn ?? false) && (!newState.isLoggedIn)) {
        navigator.replaceRoot("/");
      }
    });

    return MaterialApp(
      navigatorKey: navigator.navigatorKey,
      routes: {
        '/': (context) {
          final authState = ref.watch(authStateProvider);
          if (authState.isLoading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (authState.needsToUpdatePassword) {
            return const UpdatePasswordPage();
          } else if (authState.isLoggedIn) {
            return const DashboardPage();
          } else {
            return const LoginPage();
          }
        },
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/forgot-password': (context) => const ForgotPasswordPage(),
        '/update-password': (context) => const UpdatePasswordPage(),
      },
    );
  }
}
