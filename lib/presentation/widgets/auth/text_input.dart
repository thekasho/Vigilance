part of '../widgets.dart';

class AuthTextForm extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) valid;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  final String hintText;
  final Widget? suffixIcon;
  final Color? suffixIconColor;
  final bool isPassword;
  final Color? fillColor;
  final Function(String)? onChanged;

  const AuthTextForm({super.key,
    required this.controller,
    required this.valid,
    this.focusNode,
    this.onFieldSubmitted,
    required this.hintText,
    this.suffixIcon, this.suffixIconColor, required this.isPassword, this.fillColor, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      child: TextFormField(
        controller: controller,
        validator: valid,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        autofocus: false,
        style: TextStyle(
          fontSize: 18.sp,
          color: black,
        ),
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 17.sp,
            color: Colors.grey,
            fontFamily: 'Cairo'
          ),
          suffixIcon: suffixIcon,
          suffixIconColor: Colors.grey,
          errorStyle: TextStyle(
            color: Colors.red,
            fontSize: 15.sp,
            fontFamily: 'Cairo'
          ),
          filled: true,
          fillColor: fillColor ?? white,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 0, color: black
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0.5,
              color: black
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0.5, color: red),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0.5, color: red),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
