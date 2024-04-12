import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

import '../../providers/navigation/navigation_providers.dart';
import '../../providers/signup/signup_providers.dart';

class SignupPage extends ConsumerWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signUpForm = ref.watch(signupFormProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff299400),
        title: const Text(
          'SignUp Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
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
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Full Name',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    ref.read(signupFormProvider.notifier).setFullName(value);
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    ref.read(signupFormProvider.notifier).setUsername(value);
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  obscureText: signUpForm.obscurePassword,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    labelText: 'password',
                    border: const OutlineInputBorder(),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        ref.read(signupFormProvider.notifier).togglePassword();
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          signUpForm.obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    ref.read(signupFormProvider.notifier).setPassword(value);
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    ref.read(signupFormProvider.notifier).setEmail(value);
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.home),
                    labelText: 'Street Address',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    ref
                        .read(signupFormProvider.notifier)
                        .setStreetAddress(value);
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.home),
                    labelText: 'City',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    ref.read(signupFormProvider.notifier).setCity(value);
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.home),
                    labelText: 'State / Province',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    ref
                        .read(signupFormProvider.notifier)
                        .setStateOrProvince(value);
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.home),
                    labelText: 'Country',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    ref.read(signupFormProvider.notifier).setCountry(value);
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: 'Postal / Zip Code',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    ref.read(signupFormProvider.notifier).setPostalCode(value);
                  },
                ),
                const SizedBox(height: 10),
                TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    ref.read(signupFormProvider.notifier).setPhoneNumber(value);
                  },
                ),
                if (signUpForm.errors.isNotEmpty)
                  Column(
                    children:
                        signUpForm.errors.map((error) => Text(error)).toList(),
                  ),
                TextButton(
                  onPressed: () {},
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
                  onPressed: ref.read(signupFormProvider.notifier).isValid()
                      ? () async {
                          ref.read(signupFormProvider.notifier).signup();
                          await doBackendCallForTest(context);
                        }
                      : null,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 10,
                    ),
                    child: Text(
                      'Signp Up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () => ref.read(navigationProvider).push('/login'),
                  child: const Text(
                    'Already have an account? Sign In',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> doBackendCallForTest(BuildContext context) async {
    try {
      http.Response response = await http.get(
        Uri.parse(
          'https://discountsonservices.net/shadowbox/hook/MobileApp/edmigo/8559/get_user_settings',
        ),
      );

      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(responseBody['message']),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('An error occurred'),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('An error occurred'),
        ),
      );
    }
  }
}
