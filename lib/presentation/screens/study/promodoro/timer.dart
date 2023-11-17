part of '../../screens.dart';

class PromodoroTimerScreen extends StatefulWidget {
  const PromodoroTimerScreen({super.key});

  @override
  State<PromodoroTimerScreen> createState() => _PromodoroTimerScreenState();
}

class _PromodoroTimerScreenState extends State<PromodoroTimerScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: orangeBtn,
            actions: [
              Icon(
                Icons.settings,
                color: black,
                size: 25.sp,
              ),
              SizedBox(width: 3.w),
            ],
            leading: IconButton(
              icon: Icon(
                FontAwesomeIcons.chevronLeft,
                color: Colors.black,
                size: 22.sp,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
            centerTitle: true,
            title: Text(
              "Promodoro Timer",
              style: TextStyle(
                fontSize: 20.sp,
                color: black
              ),
            ),
          ),
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: yellowBck,
            child: Column(
              children: [
                SizedBox(height: 4.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Time to focus!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: black,
                          fontFamily: 'Cairo',
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      alignment: Alignment.center,
                      width: 75.w,
                      height: 38.h,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        color: white,
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                            spreadRadius: 5,
                          )
                        ],
                      ),
                      child: Text(
                        "01:00",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: orange,
                          fontFamily: 'Cairo',
                          fontSize: 35.sp,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
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
                          "Start",
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
