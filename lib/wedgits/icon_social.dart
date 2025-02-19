import 'package:flutter/material.dart';
import 'package:task_login/coreOfP/color.dart';

class IconSocial extends StatelessWidget {
  const IconSocial({
    super.key,
    required this.iconSocial
  });
  final Widget iconSocial;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 60,
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(color: AppColor.bColor),
            borderRadius: BorderRadius.circular(10)),
        child: IconButton(
          onPressed: () {},
          icon: iconSocial
        ),
      ),
    );
  }
}
