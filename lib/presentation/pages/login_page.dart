import 'package:flutter/material.dart';
import 'package:tody_app/core/theme/app_colors.dart';
import 'package:tody_app/presentation/widgets/app_action_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.onPrimary,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  enabledBorder: border,
                  focusedBorder: border,
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  enabledBorder: border,
                  focusedBorder: border,
                ),
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                obscuringCharacter: '*',
              ),
              const SizedBox(height: 32),
              AppActionButton(
                title: 'Login',
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
