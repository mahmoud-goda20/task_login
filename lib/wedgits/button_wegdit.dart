import 'package:flutter/material.dart';
import 'package:task_login/coreOfP/color.dart';

class ButtonWegdit extends StatelessWidget {
  const ButtonWegdit({super.key, required this.text, required this.onPressed});
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.buttonColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(
            text,
            style: TextStyle(color: AppColor.wColor),
          )),
    );
  }
}
