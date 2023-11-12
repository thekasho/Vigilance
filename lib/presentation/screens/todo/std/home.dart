part of '../../screens.dart';

class StdToDoHomeScreen extends StatefulWidget {
  const StdToDoHomeScreen({super.key});

  @override
  State<StdToDoHomeScreen> createState() => _StdToDoHomeScreenState();
}

class _StdToDoHomeScreenState extends State<StdToDoHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                    "Studying",
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
                        const Icon(FontAwesomeIcons.listCheck, color: Colors.black),
                        SizedBox(width: 3.w),
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
                              horizontal: 8.w,
                              vertical: 1.h
                          )),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.alarm_on, color: Colors.black, size: 25.sp),
                        SizedBox(width: 3.w),
                        Text(
                          "Pomodoro Timer",
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

                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
