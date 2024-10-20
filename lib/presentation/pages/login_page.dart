import 'package:flutter/material.dart';
import 'package:tody_app/core/theme/app_colors.dart';
import 'package:tody_app/presentation/widgets/app_action_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColors.onPrimary,
      ),
    );

    final errorBorder = border.copyWith(
      borderSide: const BorderSide(
        color: Colors.redAccent,
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
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                    labelText: 'Email',
                    enabledBorder: border,
                    focusedBorder: border,
                    errorBorder: errorBorder,
                    focusedErrorBorder: errorBorder),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                    labelText: 'Password',
                    enabledBorder: border,
                    focusedBorder: border,
                    errorBorder: errorBorder,
                    focusedErrorBorder: errorBorder,
                    errorMaxLines: 2,
                    suffixIcon: IconButton(
                      icon: _isPasswordVisible
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    )),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required and must be at least 6 characters';
                  }
                  return null;
                },
                keyboardType: TextInputType.visiblePassword,
                obscureText: !_isPasswordVisible,
                obscuringCharacter: '*',
              ),
              const SizedBox(height: 32),
              AppActionButton(
                title: 'Login',
                onPressed: () {
                  _formKey.currentState?.validate();
                },
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
