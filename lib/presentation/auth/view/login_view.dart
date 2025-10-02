import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../lib.dart';
import '../../../core/services/whatsapp_service.dart';

@RoutePage()
class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late final TextEditingController usernameController = TextEditingController();
  late final TextEditingController passwordController = TextEditingController();
  late final AuthCubit cubit = context.read();
  bool _obscureText = true;
  bool _isLoadingTalent = false;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  Future<void> _handleTalentRegistration() async {
    setState(() {
      _isLoadingTalent = true;
    });

    try {
      final success = await WhatsAppService.openTalentRegistration();

      if (success) {
        Fluttertoast.showToast(
          msg: 'Mengarahkan ke WhatsApp...',
          toastLength: Toast.LENGTH_SHORT,
          backgroundColor: Colors.green,
          textColor: Colors.white,
        );
      } else {
        if (mounted) {
          WhatsAppService.showWhatsAppNotInstalledDialog(context);
        }
      }
    } catch (e) {
      print('Error opening WhatsApp: $e');
      if (mounted) {
        Fluttertoast.showToast(
          msg: 'Gagal membuka WhatsApp. Silakan hubungi +62851-7985-5642',
          toastLength: Toast.LENGTH_LONG,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoadingTalent = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.width < 600;
    return BlocListener<AuthCubit, AuthState>(
        listenWhen: (previous, current) =>
            previous.isAuthenticated != current.isAuthenticated,
        listener: (context, state) {
          if (state.isAuthenticated) {
            if (router.current.name != RegisterBuyerRoute.name) {
              Future.microtask(() => router.maybePop(true));
            }
          }
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

              // Glass container
              Padding(
                padding: const EdgeInsets.all(16),
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
                          child: Column(
                            children: [
                              // Logo
                              CircleAvatar(
                                radius: 50,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage('assets/BigBox.png'),
                              ),
                              const SizedBox(height: 20),

                              // Welcome text
                              const Text(
                                'Selamat Datang',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 8),
                              const Text(
                                'Masuk ke akun BigBox Anda',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white70,
                                ),
                              ),
                              const SizedBox(height: 20),

                              // Email label
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Email Address',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: usernameController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white.withOpacity(0.3),
                                  hintText: 'Masukan alamat email',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  prefixIcon: const Icon(Icons.email,
                                      color: Colors.white),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),

                              // Password label
                              const Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Password',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ),
                              const SizedBox(height: 8),
                              TextField(
                                controller: passwordController,
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white.withOpacity(0.3),
                                  hintText: 'Masukan Password',
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  prefixIcon: const Icon(Icons.lock,
                                      color: Colors.white),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _obscureText
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
                                ),
                              ),
                              const SizedBox(height: 10),

                              Align(
                                alignment: Alignment.centerRight,
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),

                              // Sign In
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    cubit.login(
                                      usernameController.text,
                                      passwordController.text,
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.orangeAccent,
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 14, horizontal: 16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),
                                  child: const Text(
                                    'Sign In',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),

                              const Divider(color: Colors.white60),
                              const Text(
                                'or continue with',
                                style: TextStyle(
                                    color: Colors.white70, fontSize: 12),
                              ),
                              const SizedBox(height: 16),

                              // Talent - Updated dengan WhatsApp integration
                              SizedBox(
                                width: double.infinity,
                                child: OutlinedButton.icon(
                                  onPressed: _isLoadingTalent
                                      ? null
                                      : _handleTalentRegistration,
                                  icon: _isLoadingTalent
                                      ? const SizedBox(
                                          width: 16,
                                          height: 16,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2,
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                                    Colors.white),
                                          ),
                                        )
                                      : Icon(Icons.call, color: Colors.white),
                                  label: Text(
                                    _isLoadingTalent
                                        ? 'Membuka WhatsApp...'
                                        : 'Bergabung Sebagai Talent',
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                      color: _isLoadingTalent
                                          ? Colors.white.withOpacity(0.5)
                                          : Colors.white,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 14),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),

                              // Client - Tetap sama
                              SizedBox(
                                width: double.infinity,
                                child: OutlinedButton(
                                  onPressed: () {
                                    context.router.push(RegisterBuyerRoute(
                                      isRole: 'client',
                                    ));
                                  },
                                  style: OutlinedButton.styleFrom(
                                    side: const BorderSide(color: Colors.white),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 14),
                                  ),
                                  child: const Text(
                                    'Bergabung Sebagai Klien',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 20),

                              // Info tambahan untuk talent
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: Colors.white.withOpacity(0.3),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.info_outline,
                                      color: Colors.white70,
                                      size: 16,
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        'Pendaftaran Talent melalui WhatsApp untuk proses yang lebih mudah',
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontSize: 11,
                                        ),
                                      ),
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
            ],
          ),
        ));
  }
}
