part of '../widgets.dart';

class TestsTextInput extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) valid;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  final String hintText;
  final Color? fillColor;
  final Function(String)? onChanged;

  const TestsTextInput({super.key,
    required this.controller,
    required this.valid,
    this.focusNode,
    this.onFieldSubmitted,
    required this.hintText,
    this.fillColor, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75.w,
      height: 7.h,
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
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 17.sp,
              color: black,
              fontFamily: 'Cairo'
          ),
          errorStyle: TextStyle(
              color: red,
              fontSize: 15.sp,
              fontFamily: 'Cairo'
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1,
                color: black
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 1,
                color: black
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: red
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1,
              color: red
            ),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}


class TestsTextOption extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) valid;
  final FocusNode? focusNode;
  final Function(String)? onFieldSubmitted;
  final String hintText;
  final Function(String)? onChanged;

  const TestsTextOption({super.key,
    required this.controller,
    required this.valid,
    this.focusNode,
    this.onFieldSubmitted,
    required this.hintText,
    this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.w,
      height: 6.h,
      child: TextFormField(
        controller: controller,
        validator: valid,
        onFieldSubmitted: onFieldSubmitted,
        onChanged: onChanged,
        autofocus: false,
        style: TextStyle(
          fontSize: 16.sp,
          color: black,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              fontSize: 16.sp,
              color: black.withOpacity(.6),
              fontFamily: 'Cairo'
          ),
          errorStyle: TextStyle(
              color: red,
              fontSize: 15.sp,
              fontFamily: 'Cairo'
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 5.w,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 0.5,
                color: checkBoxColor
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                width: 0.5,
                color: checkBoxColor
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
