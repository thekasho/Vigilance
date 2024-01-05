part of '../screens.dart';

class StdMeditateLevels extends StatefulWidget {
  const StdMeditateLevels({super.key});

  @override
  State<StdMeditateLevels> createState() => _StdMeditateLevelsState();
}

class _StdMeditateLevelsState extends State<StdMeditateLevels> {
  @override
  Widget build(BuildContext context) {
    Get.put(StdMeditationContImp());
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: GetBuilder<StdMeditationContImp>(builder: (cont) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 100.w,
                        height: 94.h,
                        child: SizedBox(
                          child: Image.asset(
                            "assets/images/med_levels_bck.jpg",
                          )
                        ),
                      ),
                      SizedBox(
                        height: 94.h,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Get.to(() =>
                                    const StdMeditateMusic(level: 1));
                                  },
                                  child: Container(
                                    width: 50.w,
                                    height: 25.h,
                                    decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 2),
                                          spreadRadius: 2,
                                        )
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Text(
                                          "${"level".tr} 1",
                                          style: TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        SizedBox(
                                            width: 30,
                                            child: Image.asset(
                                                "assets/images/music.png")
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print(cont.level);
                                    if(cont.level >= 2){
                                      Get.to(() => const StdMeditateMusic(level: 2));
                                    } else {
                                      Get.defaultDialog(
                                        backgroundColor: white,
                                        title: "sorry".tr,
                                        titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
                                        titleStyle: TextStyle(
                                          fontSize: 18.sp,
                                          fontFamily: "Cairo",
                                          color: red,
                                          fontWeight: FontWeight.bold
                                        ),
                                        content: Text(
                                          "must_complete_recent_level".tr,
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            fontFamily: "Cairo",
                                          ),
                                        ),
                                        contentPadding: const EdgeInsets.only(
                                          top: 0,
                                          bottom: 10
                                        ),
                                        onWillPop: () async {
                                          Get.back();
                                          return false;
                                        }
                                      );
                                    }
                                  },
                                  child: Container(
                                    width: 50.w,
                                    height: 25.h,
                                    decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 2),
                                          spreadRadius: 2,
                                        )
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "${"level".tr} 2",
                                          style: TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        SizedBox(
                                            width: 30,
                                            child: Image.asset(
                                                "assets/images/music.png")
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 3.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    if(cont.level >= 3){
                                      Get.to(() => const StdMeditateMusic(level: 3));
                                    } else {
                                      Get.defaultDialog(
                                          backgroundColor: white,
                                          title: "sorry".tr,
                                          titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
                                          titleStyle: TextStyle(
                                              fontSize: 18.sp,
                                              fontFamily: "Cairo",
                                              color: red,
                                              fontWeight: FontWeight.bold
                                          ),
                                          content: Text(
                                            "must_complete_recent_level".tr,
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                              fontFamily: "Cairo",
                                            ),
                                          ),
                                          contentPadding: const EdgeInsets.only(
                                              top: 0,
                                              bottom: 10
                                          ),
                                          onWillPop: () async {
                                            Get.back();
                                            return false;
                                          }
                                      );
                                    }
                                  },
                                  child: Container(
                                    width: 50.w,
                                    height: 25.h,
                                    decoration: BoxDecoration(
                                      color: white,
                                      borderRadius: BorderRadius.circular(5),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x33000000),
                                          offset: Offset(0, 2),
                                          spreadRadius: 2,
                                        )
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      children: [
                                        Text(
                                          "${"level".tr} 3",
                                          style: TextStyle(
                                            fontFamily: 'Cairo',
                                            fontSize: 20.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        SizedBox(
                                            width: 30,
                                            child: Image.asset(
                                                "assets/images/music.png")
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
                    ],
                  ),
                ]
              ),
            );
          }),
        ),
      ),
    );
  }
}
