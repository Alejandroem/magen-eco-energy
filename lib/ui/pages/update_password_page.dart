import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/forgot_password/forgot_password_providers.dart';

class UpdatePasswordPage extends ConsumerWidget {
  const UpdatePasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff299400),
        title: const Text(
          'Type your new password',
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
                  labelText: 'Enter password',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  ref.read(updatePasswordProviders.notifier).setPassword(value);
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Confirm password',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  ref
                      .read(updatePasswordProviders.notifier)
                      .setConfirmPassword(value);
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(
                    0xff299400,
                  ),
                ),
                onPressed: () {
                  ref.read(updatePasswordProviders.notifier).updateAndAccess();
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                  child: Text(
                    'Update and access',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
