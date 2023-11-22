part of '../widgets.dart';

class PromodoroInputs extends StatelessWidget {
  final TextEditingController controller;
  final String? Function(String?) valid;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final double? width;

  const PromodoroInputs({super.key, required this.controller, required this.valid, this.focusNode, this.onChanged, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 5.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
        color: lightGrey
      ),
      margin: const EdgeInsets.only(top: 2),
      child: TextFormField(
        controller: controller,
        validator: valid,
        onChanged: onChanged,
        focusNode: focusNode,
        style: TextStyle(
          fontSize: 16.sp,
          color: grayDark,
        ),
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
        ],
        maxLength: 4,
        cursorColor: grayDark,
        decoration: InputDecoration(
          hintText: " ",
          counterText: "",
          hintStyle: TextStyle(
            fontSize: 16.sp,
            color: Colors.grey,
            fontFamily: 'Cairo'
          ),
          border: InputBorder.none,
          errorStyle: TextStyle(
              color: Colors.red,
              fontSize: 14.sp,
              fontFamily: 'Cairo'
          ),
          contentPadding: EdgeInsets
              .symmetric(
              horizontal: 2.w,
              vertical: 8
          ),
        ),
      ),
    );
  }
}
