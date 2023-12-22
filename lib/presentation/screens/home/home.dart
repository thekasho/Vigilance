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
            actionsAlignment: MainAxisAlignment.start,
            title: Text(
              'غلق التطبيق؟',
              textAlign: TextAlign.end,
              style: TextStyle(fontFamily: 'Cairo',
                color: red,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp
              ),
            ),
            content: Text(
              "هل انت متأكد ؟",
              textAlign: TextAlign.end,
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
                  'لا',
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
                  'نعم',
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
    Get.put(LandingContImp());
    return WillPopScope(
      onWillPop: () async {
        return showExitPopup();
      },
      child: SafeArea(
        child: Scaffold(
          body: GetBuilder<LandingContImp>(builder: (controller) {
            if(controller.statusRequest == StatusRequest.loading){
              return Container(
                color: white,
                height: double.infinity,
                width: double.infinity,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    CircularProgressIndicator(
                      color: black,
                    ),
                  ],
                ),
              );
            }
            return Container(
              width: double.infinity,
              height: double.infinity,
              color: yellowBck,
              child: Column(
                children: [
                  SizedBox(
                    height: 55.h,
                    child: Image.asset("assets/images/landing_img.png")
                  ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "app_welcom".tr,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: black,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo',
                          fontSize: 22.sp
                        ),
                      ),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       "support teacher, parent, student ",
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //           height: 1.5,
                  //           color: black,
                  //           fontFamily: 'Cairo',
                  //           fontSize: 18.sp
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       "interaction, ToDo list, pomodoro timer,",
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //           height: 1.5,
                  //           color: black,
                  //           fontFamily: 'Cairo',
                  //           fontSize: 18.sp
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       "meditation, tests, messages",
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //           height: 1.5,
                  //           color: black,
                  //           fontFamily: 'Cairo',
                  //           fontSize: 18.sp
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       "Don't wait more and let's try our app",
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //           height: 1.5,
                  //           color: black,
                  //           fontFamily: 'Cairo',
                  //           fontSize: 18.sp
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Text(
                  //       "choose your teacher and begin now ",
                  //       textAlign: TextAlign.center,
                  //       style: TextStyle(
                  //           height: 1.5,
                  //           color: black,
                  //           fontFamily: 'Cairo',
                  //           fontSize: 18.sp
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(height: 8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              orange),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(
                                  horizontal: 20.w,
                                  vertical: 1.h
                              )),
                        ),
                        child: Row(
                          children: [
                            Text(
                              "get_started".tr,
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
                          controller.checkAuth();
                        },
                      ),
                    ],
                  )
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
