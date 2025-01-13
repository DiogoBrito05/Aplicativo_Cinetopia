import 'package:cinetopia/styles/colors_app.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Function onTap;

  const PrimaryButton(
      {super.key, required this.text, this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 26),
        decoration: BoxDecoration(
          color: AppColor.first,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                color: AppColor.third,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            icon != null
                ? Icon(icon, color: AppColor.third)
                : Container(),
          ],
        ),
      ),
    );
  }
}
