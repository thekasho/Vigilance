part of '../../screens.dart';

class TchrHomeScreen extends StatefulWidget {
  const TchrHomeScreen({super.key});

  @override
  State<TchrHomeScreen> createState() => _TchrHomeScreenState();
}

class _TchrHomeScreenState extends State<TchrHomeScreen> {
  TchrHomeContImp cont = Get.put(TchrHomeContImp());

  Future<bool> showExitPopup() async {
    return await showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            actionsPadding: const EdgeInsets.all(10),
            buttonPadding: const EdgeInsets.all(5),
            titlePadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 20
            ),
            contentPadding: const EdgeInsets.only(
                top: 10,
                bottom: 0,
                left: 20,
                right: 20
            ),
            title: Text(
              'Close App',
              style: TextStyle(fontFamily: 'Cairo',
                  color: red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp),
            ),
            content: Text(
              "Are You Sure ?!",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
            backgroundColor: white,
            actions: [
              MaterialButton(
                focusElevation: 10,
                color: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text(
                  'No',
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                      color: black
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(false),
              ),
              MaterialButton(
                focusElevation: 10,
                color: redLight,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text(
                  'Yes',
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                      color: black
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(true),
              ),
            ],
          ),
    ) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    Get.put(TchrHomeContImp());
    return WillPopScope(
      onWillPop: () async {
        return showExitPopup();
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
                      "Monitor your student's time\n on application",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                        fontSize: 22.sp,
                        height: 1.3
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 44.h,
                  child: Image.asset("assets/images/teacher_home.png")
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(orangeBtn),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(65.w, 6.h),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Tests",
                            style: TextStyle(
                                fontSize: 19.sp,
                                color: black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        // Get.toNamed(screenStdToDO);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(orangeBtn),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(65.w, 6.h),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "To-Do-List",
                            style: TextStyle(
                                fontSize: 19.sp,
                                color: black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        // Get.toNamed(screenStdToDO);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(orangeBtn),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(65.w, 6.h),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Chat your student",
                            style: TextStyle(
                                fontSize: 19.sp,
                                color: black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        // Get.toNamed(screenStdToDO);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(orangeBtn),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(65.w, 6.h),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Chat the parents",
                            style: TextStyle(
                                fontSize: 19.sp,
                                color: black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        // Get.toNamed(screenStdToDO);
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(orangeBtn),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        fixedSize: MaterialStateProperty.all<Size>(
                          Size(65.w, 6.h),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Logout",
                            style: TextStyle(
                              fontSize: 19.sp,
                              color: darkRed,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo'
                            ),
                          ),
                          SizedBox(width: 1.w),
                          Icon(Icons.login_outlined, color: darkRed, size: 20.sp,),
                        ],
                      ),
                      onPressed: () {
                        cont.logOut();
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
