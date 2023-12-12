part of '../screens.dart';

class StdStudyHomeScreen extends StatefulWidget {
  const StdStudyHomeScreen({super.key});

  @override
  State<StdStudyHomeScreen> createState() => _StdStudyHomeScreenState();
}

class _StdStudyHomeScreenState extends State<StdStudyHomeScreen> {
  StdHomeContImp stdHomeContImp = Get.put(StdHomeContImp());
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await stdHomeContImp.checkAuth();
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
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "مذاكرة",
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                        fontSize: 30.sp
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    height: 55.h,
                    child: Image.asset("assets/images/child_home.png")
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(lightBtn),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.symmetric(
                                horizontal: 15.w,
                                vertical: 1.h
                            )),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "قائمة المهام",
                            style: TextStyle(
                                fontSize: 19.sp,
                                color: black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'
                            ),
                          ),
                          SizedBox(width: 3.w),
                          const Icon(FontAwesomeIcons.listCheck, color: Colors.black),
                        ],
                      ),
                      onPressed: () {
                        Get.toNamed(screenStdToDO);
                      },
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(lightBtn),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.symmetric(
                              horizontal: 17.w,
                              vertical: 1.h
                          )),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "برومودورو",
                            style: TextStyle(
                                fontSize: 19.sp,
                                color: black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'
                            ),
                          ),
                          SizedBox(width: 3.w),
                          Icon(Icons.alarm_on, color: Colors.black, size: 24.sp),
                        ],
                      ),
                      onPressed: () {
                        Get.toNamed(screenPromodoroHome);
                      },
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
