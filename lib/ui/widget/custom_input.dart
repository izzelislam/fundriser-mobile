import 'package:flutter/material.dart';
import 'package:fundriser/shared/theme.dart';

class CustomInput extends StatelessWidget {
  final String label;
  final bool obscureText;
  final TextEditingController? controller;
  final bool isShowTitle;
  final TextInputType? keyboardType;
  final String? hintText;
  final Function(String)? onFieldSubmitted;

  const CustomInput({
    super.key,
    required this.label,
    this.obscureText = false,
    this.controller,
    this.isShowTitle = true,
    this.keyboardType,
    this.hintText,
    this.onFieldSubmitted
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: darkGrayTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600)),
        const SizedBox(height: 2,),
        TextField(
          obscureText: obscureText,
          controller: controller,
          keyboardType: keyboardType,
          onSubmitted: onFieldSubmitted,
          cursorColor: greenColor,
          style: TextStyle(
            color: darkgrayColor,
            fontSize: 18,
            fontWeight: FontWeight.w400
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: grayTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
            isDense: true,
            contentPadding: const EdgeInsets.all(15),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: thingrayColor)
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: greenColor)
            ),
          ),
        )
      ],
    );
  }
}