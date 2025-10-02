import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_validator/form_validator.dart';

import '../../../lib.dart';

@RoutePage()
class RegisterBuyerView extends StatefulWidget {
  String? isRole;
  RegisterBuyerView({super.key, this.isRole});

  @override
  _RegisterBuyerViewState createState() => _RegisterBuyerViewState();
}

class _RegisterBuyerViewState extends State<RegisterBuyerView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  late final AuthCubit cubit = context.read();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;
  bool _isTermsAccepted = false;

  @override
  void initState() {
    super.initState();
    debugPrint('RegisterBuyerRoute Dibuka');
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    debugPrint('RegisterBuyerRoute Ditutup');
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _obscureConfirmPassword = !_obscureConfirmPassword;
    });
  }

  void _handleRegister() {
    if (_formKey.currentState!.validate() && _isTermsAccepted) {
      cubit.register(
        _emailController.text,
        _passwordController.text,
        widget.isRole!, // Role sebagai buyer/client
      );
    } else if (!_isTermsAccepted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Anda harus menyetujui syarat dan ketentuan'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600;

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        // Handle state changes if needed
      },
      child: Scaffold(
        body: Stack(
          children: [
            // Background gradient
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffFF6739), Colors.indigo.shade900],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),

            // Back button
            Positioned(
              top: MediaQuery.of(context).padding.top + 16,
              left: 16,
              child: IconButton(
                onPressed: () => context.router.maybePop(),
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.2),
                ),
              ),
            ),

            // Glass container
            Positioned(
              top: MediaQuery.of(context).padding.top + 80,
              left: isSmallScreen ? 16 : (size.width - 400) / 2,
              right: isSmallScreen ? 16 : (size.width - 400) / 2,
              child: Center(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        width: isSmallScreen ? size.width * 0.9 : 400,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(30),
                          border:
                              Border.all(color: Colors.white.withOpacity(0.3)),
                        ),
                        child: SingleChildScrollView(
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                // Logo
                                CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.white,
                                  backgroundImage: AssetImage(
                                      'assets/logo_text_transparent.png'),
                                ),
                                const SizedBox(height: 20),

                                // Welcome text
                                Text(
                                  "Daftar Sebagai ${widget.isRole ?? 'Client'}",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Buat akun BigBox Anda sebagai client',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white70,
                                  ),
                                ),
                                const SizedBox(height: 20),

                                // Email field
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Email Address',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                TextFormField(
                                  controller: _emailController,
                                  validator: ValidationBuilder()
                                      .email('Email tidak valid')
                                      .required('Email wajib diisi')
                                      .build(),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.3),
                                    hintText: 'Masukan alamat email',
                                    hintStyle:
                                        const TextStyle(color: Colors.white70),
                                    prefixIcon: const Icon(Icons.email,
                                        color: Colors.white),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    errorStyle:
                                        const TextStyle(color: Colors.yellow),
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 16),

                                // Password field
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Password',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                TextFormField(
                                  controller: _passwordController,
                                  obscureText: _obscurePassword,
                                  // validator: ValidationBuilder()
                                  //     .minLength(
                                  //         6, 'Password minimal 6 karakter')
                                  //     .required('Password wajib diisi')
                                  //     .build(),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.3),
                                    hintText: 'Masukan password',
                                    hintStyle:
                                        const TextStyle(color: Colors.white70),
                                    prefixIcon: const Icon(Icons.lock,
                                        color: Colors.white),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _obscurePassword
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Colors.white,
                                      ),
                                      onPressed: _togglePasswordVisibility,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    errorStyle:
                                        const TextStyle(color: Colors.yellow),
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 16),

                                // Confirm Password field
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Konfirmasi Password',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                TextFormField(
                                  controller: _confirmPasswordController,
                                  obscureText: _obscureConfirmPassword,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Konfirmasi password wajib diisi';
                                    }
                                    if (value != _passwordController.text) {
                                      return 'Password tidak sama';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white.withOpacity(0.3),
                                    hintText: 'Konfirmasi password',
                                    hintStyle:
                                        const TextStyle(color: Colors.white70),
                                    prefixIcon: const Icon(Icons.lock_outline,
                                        color: Colors.white),
                                    suffixIcon: IconButton(
                                      icon: Icon(
                                        _obscureConfirmPassword
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Colors.white,
                                      ),
                                      onPressed:
                                          _toggleConfirmPasswordVisibility,
                                    ),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    errorStyle:
                                        const TextStyle(color: Colors.yellow),
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const SizedBox(height: 20),

                                // Terms and conditions checkbox
                                Row(
                                  children: [
                                    Checkbox(
                                      value: _isTermsAccepted,
                                      onChanged: (value) {
                                        setState(() {
                                          _isTermsAccepted = value ?? false;
                                        });
                                      },
                                      activeColor: Colors.orangeAccent,
                                      checkColor: Colors.white,
                                      side:
                                          const BorderSide(color: Colors.white),
                                    ),
                                    Expanded(
                                      child: RichText(
                                        text: TextSpan(
                                          style: const TextStyle(
                                            color: Colors.white70,
                                            fontSize: 12,
                                          ),
                                          children: [
                                            const TextSpan(
                                                text: 'Saya setuju dengan '),
                                            TextSpan(
                                              text: 'Syarat dan Ketentuan',
                                              style: const TextStyle(
                                                color: Colors.orangeAccent,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  // Handle terms and conditions tap
                                                },
                                            ),
                                            const TextSpan(text: ' dan '),
                                            TextSpan(
                                              text: 'Kebijakan Privasi',
                                              style: const TextStyle(
                                                color: Colors.orangeAccent,
                                                decoration:
                                                    TextDecoration.underline,
                                              ),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  // Handle privacy policy tap
                                                },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 20),

                                // Register button
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    onPressed: _handleRegister,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.orangeAccent,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 14, horizontal: 16),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: Text(
                                      "Daftar Sebagai ${widget.isRole ?? 'Client'}",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 20),

                                // Login link
                                RichText(
                                  text: TextSpan(
                                    style: const TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                    children: [
                                      const TextSpan(
                                          text: 'Sudah punya akun? '),
                                      TextSpan(
                                        text: 'Masuk di sini',
                                        style: const TextStyle(
                                          color: Colors.orangeAccent,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            context.router.maybePop();
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),

                                const Text(
                                  '© 2025 BigBox Asia. All rights reserved.',
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
