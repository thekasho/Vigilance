part of '../screens.dart';

class StdMeditateChooseType extends StatefulWidget {
  const StdMeditateChooseType({super.key});

  @override
  State<StdMeditateChooseType> createState() => _StdMeditateChooseTypeState();
}

class _StdMeditateChooseTypeState extends State<StdMeditateChooseType> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: yellowBck,
          padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "meditate".tr,
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo',
                      fontSize: 25.sp
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Get.toNamed(screenStudyHome);
                    },
                    child: Container(
                      width: 85.w,
                      height: 38.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                            spreadRadius: 2,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              vertical: 6,
                            ),
                            width: 50.w,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle
                            ),
                            child: Image.asset("assets/images/calming_music.jpg")
                          ),
                          Text(
                            "calming_music".tr,
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      // Get.toNamed(screenStudyHome);
                    },
                    child: Container(
                      width: 85.w,
                      height: 38.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4,
                            color: Color(0x33000000),
                            offset: Offset(0, 2),
                            spreadRadius: 2,
                          )
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 6,
                              ),
                              width: 50.w,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle
                              ),
                              child: Image.asset("assets/images/breathing_exercises.png")
                          ),
                          Text(
                            "breathing_exercises".tr,
                            style: TextStyle(
                              fontFamily: 'Cairo',
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
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
