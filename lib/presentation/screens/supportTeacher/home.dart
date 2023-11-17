part of '../screens.dart';

class SupportTeacherHomeScreen extends StatefulWidget {
  const SupportTeacherHomeScreen({super.key});

  @override
  State<SupportTeacherHomeScreen> createState() => _SupportTeacherHomeScreenState();
}

class _SupportTeacherHomeScreenState extends State<SupportTeacherHomeScreen> {
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
            color: yellowBck,
            child: Column(
              children: [
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Let`s Play!",
                      style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo',
                          fontSize: 25.sp
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    height: 45.h,
                    child: Image.asset("assets/images/support_teacher_home.png")
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
                          "Your Tests",
                          style: TextStyle(
                              fontSize: 19.sp,
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo'
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed(screenShopLevels);
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
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
                          "Chat Your Teacher",
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
                SizedBox(height: 2.h),
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
                          "Email Your Teacher",
                          style: TextStyle(
                            fontSize: 19.sp,
                            color: white,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo'
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed(screenTeacherEmail);
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
