import 'package:auto_route/auto_route.dart';
import 'package:bigbox_asia/data/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../lib.dart';

@RoutePage()
class AddTalentView extends StatefulWidget implements AutoRouteWrapper {
  const AddTalentView({Key? key}) : super(key: key);

  @override
  _AddTalentViewState createState() => _AddTalentViewState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<AdminAddTalentCubit>(
      create: (context) => di(),
      child: this,
    );
  }
}

class _AddTalentViewState extends State<AddTalentView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final steps = [
    'Admin membuat akun dengan email dan password',
    'Sistem auto-generate kode referral (TC001, TC002...)',
    'Talent login dan melengkapi profil di TalentProfilePage'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Talent Baru'),
        centerTitle: true,
      ),
      body: BlocBuilder<AdminAddTalentCubit, AdminAddTalentState>(
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Workflow Instructions
                    const Text(
                      'Workflow Pembuatan Akun Talent',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    for (var i = 0; i < steps.length; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Color(0xffFF6739),
                              child: Text(
                                '${i + 1}',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Expanded(child: Text(steps[i])),
                          ],
                        ),
                      ),
                    const SizedBox(height: 20),

                    // Email Address
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
                        if (!RegExp(r'^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+')
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
                    const Text('Konfirmasi Password',
                        style: TextStyle(fontSize: 16)),
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
                    const SizedBox(height: 16),

                    // Payment Code Dropdown
                    const Text('Payment Code', style: TextStyle(fontSize: 16)),
                    const SizedBox(height: 5),
                    if (state.isLoading)
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: const Center(child: CircularProgressIndicator()),
                      )
                    else
                      DropdownButtonFormField<String>(
                        value: state.selectedPaymentCodeId,
                        decoration: InputDecoration(
                          hintText: 'Pilih Payment Code',
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: const OutlineInputBorder(),
                        ),
                        items: state.paymentCodes.map((paymentCode) {
                          return DropdownMenuItem<String>(
                            value: paymentCode.id,
                            child: Text(
                                '${paymentCode.paymentCode} - ${paymentCode.amount}'),
                          );
                        }).toList(),
                        onChanged: (value) {
                          if (value != null) {
                            context
                                .read<AdminAddTalentCubit>()
                                .selectPaymentCode(value);
                          }
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select a payment code';
                          }
                          return null;
                        },
                      ),
                    const SizedBox(height: 20),

                    // Action Buttons
                    SizedBox(
                      width: context.sizeWidth,
                      child: ElevatedButton(
                        onPressed: state.isAddingTalent
                            ? null
                            : () {
                                if (_formKey.currentState!.validate()) {
                                  context.read<AdminAddTalentCubit>().addTalent(
                                        _emailController.text,
                                        _passwordController.text,
                                      );
                                }
                              },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: const Color(0xffFF6739),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                        ),
                        child: state.isAddingTalent
                            ? const CircularProgressIndicator(
                                color: Colors.white)
                            : const Text(
                                'BUAT AKUN TALENT',
                                style: TextStyle(color: Colors.white),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
