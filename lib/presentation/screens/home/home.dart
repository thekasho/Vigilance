part of '../screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Future<bool> showExitPopup() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
          style: TextStyle(fontFamily: 'Cairo', color: red, fontWeight: FontWeight.bold, fontSize: 20.sp),
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
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Image.asset("assets/images/landing_img.png"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to our app!",
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                        fontSize: 22.sp
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "support teacher, parent, student ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.5,
                          color: black,
                          fontFamily: 'Cairo',
                          fontSize: 18.sp
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "interaction, ToDo list, pomodoro timer,",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.5,
                          color: black,
                          fontFamily: 'Cairo',
                          fontSize: 18.sp
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "meditation, tests, messages",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.5,
                          color: black,
                          fontFamily: 'Cairo',
                          fontSize: 18.sp
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't wait more and let's try our app",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.5,
                          color: black,
                          fontFamily: 'Cairo',
                          fontSize: 18.sp
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "choose your teacher and begin now ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.5,
                        color: black,
                        fontFamily: 'Cairo',
                        fontSize: 18.sp
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(orange),
                        shape: MaterialStateProperty.all<
                          RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(
                            horizontal: 20.w,
                          vertical: 1.h
                        )),
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Get Started",
                            style: TextStyle(
                              fontSize: 19.sp,
                              color: white,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo'
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Get.offAllNamed(screenChooseType);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
