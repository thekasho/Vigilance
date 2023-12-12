part of '../../screens.dart';

class PromodoroHomeScreen extends StatefulWidget {
  const PromodoroHomeScreen({super.key});

  @override
  State<PromodoroHomeScreen> createState() => _PromodoroHomeScreenState();
}

class _PromodoroHomeScreenState extends State<PromodoroHomeScreen> {
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
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Master your minutes to\n master your life",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: black,
                          fontFamily: 'Cairo',
                          fontSize: 22.sp,
                        height: 1.2
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.h),
                SizedBox(
                    height: 45.h,
                    child: Image.asset("assets/images/promodoro.png")
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 60.w,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(orangeBtn),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: Text(
                          "البدء",
                          style: TextStyle(
                            fontSize: 22.sp,
                            color: black,
                            fontFamily: 'Cairo'
                          ),
                        ),
                        onPressed: () {
                          Get.toNamed(screenPromodoroTimer);
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
