import 'package:flutter/material.dart';

abstract class BaseStep extends StatelessWidget {
  const BaseStep({super.key});

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  Widget buildTextField({
    required String label,
    String? hintText,
    TextEditingController? controller,
    int maxLines = 1,
    Function(String)? onChanged,
    String? initialValue,
  }) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        hintText: hintText,
        border: const OutlineInputBorder(),
      ),
      onChanged: onChanged,
    );
  }
}
