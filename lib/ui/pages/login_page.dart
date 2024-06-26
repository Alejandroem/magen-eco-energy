import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/login/login_providers.dart';
import '../../providers/navigation/navigation_providers.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginForm = ref.watch(loginFormProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff299400),
        title: const Text(
          'Login Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo.JPG',
                width: 200,
                height: 200,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  ref.read(loginFormProvider.notifier).setEmail(value);
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: loginForm.obscurePassword,
                decoration: InputDecoration(
                  labelText: 'password',
                  border: const OutlineInputBorder(),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      ref.read(loginFormProvider.notifier).togglePassword();
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Icon(
                        loginForm.obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                    ),
                  ),
                ),
                onChanged: (value) {
                  ref.read(loginFormProvider.notifier).setPassword(value);
                },
              ),
              const SizedBox(height: 10),
              if (loginForm.errors.isNotEmpty)
                Column(
                  children:
                      loginForm.errors.map((error) => Text(error)).toList(),
                ),
              TextButton(
                onPressed: () {
                  ref.read(navigationProvider).push('/forgot-password');
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(
                    0xff299400,
                  ),
                ),
                onPressed: () {
                  ref.read(loginFormProvider.notifier).login();
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Scan Bluetooth',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              TextButton(
                onPressed: () =>
                    ref.read(navigationProvider).replaceRoot('/signup'),
                child: const Text(
                  'New User? Create Account',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
