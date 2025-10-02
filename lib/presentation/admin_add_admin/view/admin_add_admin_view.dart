import 'package:auto_route/auto_route.dart';
import 'package:bigbox_asia/lib.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddAdminView extends StatefulWidget implements AutoRouteWrapper {
  const AddAdminView({Key? key}) : super(key: key);

  @override
  _AddAdminViewState createState() => _AddAdminViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }
}

class _AddAdminViewState extends State<AddAdminView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Admin Baru"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  height: 200,
                  width: 100,
                  'assets/logo_text_transparent.png',
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    debugPrint('Error loading image: $error');
                    return const Text('Image not found');
                  },
                ),
              ),
              const Text('Email Address', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 5),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'admin@bgbox.com',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: const OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email address';
                  }
                  // Simple email validation
                  if (!RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Password
              const Text('Password', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 5),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '********',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: const OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  if (value.length < 6) {
                    return 'Password must be at least 6 characters';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Confirm Password
              const Text('Konfirmasi Password', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 5),
              TextFormField(
                controller: _confirmPasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Ulangi password',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: const OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please confirm your password';
                  }
                  if (value != _passwordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // Action Buttons
              SizedBox(
                width: context.sizeWidth,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // Logic for creating admin
                      // Implement your create admin action here
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Akun Admin Created!')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(10)),
                    backgroundColor: Color(0xffFF6739), // Background color
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 12),
                  ),
                  child: const Text(
                    "BUAT AKUN ADMIN",
                    style: TextStyle(color: Colors.white),
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
