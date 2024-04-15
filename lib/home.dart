import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/ui/pages/signup_page.dart';

import 'providers/auth/auth_providers.dart';
import 'providers/navigation/navigation_providers.dart';
import 'ui/pages/dashboard_page.dart';
import 'ui/pages/forgot_password_page.dart';
import 'ui/pages/login_page.dart';

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);
    final navigator = ref.watch(navigationProvider);

    return MaterialApp(
      navigatorKey: navigator.navigatorKey,
      routes: {
        '/home': (context) => authState.when(
              data: (user) {
                return user != null ? const DashboardPage() : const LoginPage();
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
        '/login': (context) => const LoginPage(),
        '/signup': (context) => const SignupPage(),
        '/forgot-password': (context) => const ForgotPasswordPage(),
      },
      home: authState.when(
        data: (user) {
          return user != null ? const DashboardPage() : const LoginPage();
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),
      ),
    );
  }
}
