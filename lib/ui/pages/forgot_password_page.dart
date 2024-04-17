import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myapp/providers/forgot_password/forgot_password_providers.dart';

class ForgotPasswordPage extends ConsumerWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final forgotPasswordForm = ref.watch(forgotPasswordProviders);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff299400),
        title: const Text(
          'Forgot password',
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
              if (forgotPasswordForm.verificationInProgress)
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Code',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    ref
                        .read(forgotPasswordProviders.notifier)
                        .setVerificationCode(value);
                  },
                )
              else
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    ref.read(forgotPasswordProviders.notifier).setEmail(value);
                  },
                ),
              if (!forgotPasswordForm.verificationInProgress)
                const SizedBox(height: 20),
              if (!forgotPasswordForm.verificationInProgress)
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Input your email to reset your password. We will send you a code if the email is registered.",
                    textAlign: TextAlign.center,
                  ),
                ),
              const SizedBox(height: 20),
              if (forgotPasswordForm.timeText.isNotEmpty)
                Text(forgotPasswordForm.timeText),
              if (forgotPasswordForm.errors.isNotEmpty)
                ...forgotPasswordForm.errors.map((e) {
                  return Text(e);
                }),
              if (forgotPasswordForm.verificationInProgress)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(
                      0xff299400,
                    ),
                  ),
                  onPressed:
                      ref.read(forgotPasswordProviders.notifier).isCodeValid()
                          ? () {
                              ref
                                  .read(forgotPasswordProviders.notifier)
                                  .validateVerificationCode();
                            }
                          : null,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 10,
                    ),
                    child: Text(
                      'Send code',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              else
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(
                      0xff299400,
                    ),
                  ),
                  onPressed:
                      ref.read(forgotPasswordProviders.notifier).isEmailValid()
                          ? () {
                              ref
                                  .read(forgotPasswordProviders.notifier)
                                  .requestVerificationCode();
                            }
                          : null,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 10,
                    ),
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        color: Colors.white,
                      ),
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
