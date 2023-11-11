part of '../screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
    );
  }
}
