import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({super.key, required this.text, required this.val});
  final String text;
  final String val;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
          validator: (value) {
            if (value?.isEmpty == true) {
              return val;
            }
          },
          decoration: InputDecoration(
            hintText: text,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red)),
          )),
    );
  }
}
