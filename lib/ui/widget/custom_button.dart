import 'package:flutter/material.dart';
import 'package:fundriser/shared/theme.dart';

class CustomButton extends StatelessWidget {
  final Function()? onPressed;
  final String title;
  final bool isOutline;

  const CustomButton({
    super.key,
    this.onPressed,
    required this.title,
    this.isOutline = false
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: isOutline ? whiteColor : greenColor,
        minimumSize: const Size.fromHeight(46),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: isOutline ? BorderSide(color: greenColor) : BorderSide.none
        )
      ), 
      child: Text(title, style: whiteTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: isOutline ? greenColor : whiteColor
      ),),
    );
  }
}