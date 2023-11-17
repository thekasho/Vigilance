part of '../screens.dart';

class SupportTeacherEmailScreen extends StatefulWidget {
  const SupportTeacherEmailScreen({super.key});

  @override
  State<SupportTeacherEmailScreen> createState() => _SupportTeacherEmailScreenState();
}

class _SupportTeacherEmailScreenState extends State<SupportTeacherEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: white,
            child: Column(
              children: [
                SizedBox(height: 5.h),
                SizedBox(
                    height: 45.h,
                    child: Image.asset("assets/images/support_teacher_email.png")
                ),
                SizedBox(height: 3.h),
                Container(
                  alignment: Alignment.center,
                  width: 100.w,
                  child: Text(
                    "Add Your Support\n Teacher Email",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo',
                      height: 1.4
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Container(
                  alignment: Alignment.center,
                  width: 100.w,
                  height: 7.h,
                  child: Form(
                    child: AuthTextForm(
                      controller: TextEditingController(),
                      hintText: "Support Teacher Email",
                      isPassword: false,
                      fillColor: lighterOrange,
                      valid: (val) {
                        if (val!.isEmpty) {
                          return 'Title Required!';
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 60.w,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(orange),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.symmetric(
                                vertical: 1.h
                            ),
                          ),
                        ),
                        child: Text(
                          "Go To Chatbox",
                          style: TextStyle(
                            fontSize: 19.sp,
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo'
                          ),
                        ),
                        onPressed: () {

                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
