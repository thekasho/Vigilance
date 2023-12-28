part of '../screens.dart';

class StdMeditateScreen extends StatefulWidget {
  const StdMeditateScreen({super.key});

  @override
  State<StdMeditateScreen> createState() => _StdMeditateScreenState();
}

class _StdMeditateScreenState extends State<StdMeditateScreen> {
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
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "time_to_meditate".tr,
                    style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                        fontSize: 25.sp
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "take a breath, \n and ease your mind",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: black,
                      fontFamily: 'Cairo',
                      fontSize: 20.sp,
                      height: 1.3
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              SizedBox(
                height: 50.h,
                child: Image.asset("assets/images/meditate_home.png")
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 60.w,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(medHomeBtn),
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
                        "start".tr,
                        style: TextStyle(
                          fontSize: 19.sp,
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Cairo'
                        ),
                      ),
                      onPressed: () {
                        Get.toNamed(screenMeditateChooseType);
                      },
                    ),
                  ),
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}
