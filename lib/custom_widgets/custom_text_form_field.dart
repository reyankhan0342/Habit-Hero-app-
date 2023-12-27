import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final String hintText;
  final TextStyle? hintstyle;
  final TextEditingController? controller;
  final bool obscureText;
  final bool readOnly;

  final BorderRadius? borderRadius;
  final InputDecoration? decoration;
  final TextInputAction? textInputAction;
  final TextInputType? keyBoardType;
  final IconButton? suffixIcon;
  final FocusNode? focusNode;

  final TextStyle? textStyle;
  final Function(String)? onFieldSubmitted;

  CustomTextField({

    this.onChanged,
    this.hintstyle,
    this.decoration,
    this.borderRadius,
    this.textStyle,
    this.validator,
    required this.hintText,
    this.controller,
    this.obscureText = false,
    this.readOnly = false,
    this.textInputAction,
    this.keyBoardType,
    this.suffixIcon,
    this.focusNode,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return TextFormField(

      key: Key(hintText),
      textInputAction: textInputAction,
      keyboardType: keyBoardType,
      readOnly: readOnly,
      onChanged: onChanged,
      validator: validator,
      controller: controller,
      obscureText: obscureText,
       style: textStyle,
      onFieldSubmitted: onFieldSubmitted,
      focusNode: focusNode,
      
      obscuringCharacter: "*",
      decoration: InputDecoration(
        hintStyle: hintstyle,
        focusedBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Color(0xffBDBDBD),width: 1)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color(0xffBDBDBD),width: 1)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red,width: 1)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red,width: 1)
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding:  EdgeInsets.symmetric(vertical:size.height* 0.02,
            horizontal:20),
        hintText: hintText,
        border: InputBorder.none,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
