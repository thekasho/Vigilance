part of '../screens.dart';

class StdMeditateMusic extends StatefulWidget {
  const StdMeditateMusic({Key? key, required this.level}) : super(key: key);
  final dynamic level;

  @override
  State<StdMeditateMusic> createState() => _StdMeditateMusicState();
}

class _StdMeditateMusicState extends State<StdMeditateMusic> {
  StdMeditationContImp stdMeditationContImp = Get.put(StdMeditationContImp());

  Future<void> updateLevel() async {
    stdMeditationContImp.clevel = widget.level;
  }

  @override
  void initState() {
    updateLevel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(StdMeditationContImp());
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 100.w,
                      height: 96.h,
                      child: SizedBox(
                          child: Image.asset("assets/images/med_levels_bck.jpg")
                      ),
                    ),
                    SizedBox(
                      height: 96.h,
                      child: SingleChildScrollView(
                        child: GetBuilder<StdMeditationContImp>(builder: (cont) {
                          if(cont.statusRequest == StatusRequest.loading){
                            return Container(
                              color: white,
                              height: 95.h,
                              width: 100.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 20.h),
                                  const CircularProgressIndicator(
                                    color: black,
                                  ),
                                ],
                              ),
                            );
                          } else if(cont.statusRequest == StatusRequest.success){
                            if(widget.level == 1){
                              return Column(
                                children: [
                                  SizedBox(height: 5.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 95.w,
                                        alignment: Alignment.center,
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
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5
                                        ),
                                        child: Text(
                                          "${"level".tr} 1",
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Cairo'
                                          ),
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
                                          cont.playMusic("ocean.mp3", 1);
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 20.h,
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
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Text(
                                                "Ocean",
                                                style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                child: Icon(
                                                  cont.isPlaying1 == false ? Icons.play_circle : Icons.pause_circle, size: 40.sp,
                                                ),
                                              ),
                                            ],
                                          ),
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
                                          cont.playMusic("art.mp3", 2);
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 20.h,
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
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Text(
                                                "Art",
                                                style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                child: Icon(
                                                  cont.isPlaying2 == false ? Icons.play_circle : Icons.pause_circle, size: 40.sp,
                                                ),
                                              ),
                                            ],
                                          ),
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
                                          cont.playMusic("wild_dreams.mp3", 3);
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 20.h,
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
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Text(
                                                "Wild Dreams",
                                                style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                child: Icon(
                                                  cont.isPlaying3 == false ? Icons.play_circle : Icons.pause_circle, size: 40.sp,
                                                ),
                                              ),
                                            ],
                                          ),
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
                                          cont.playMusic("calm_cafe.mp3", 4);
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 20.h,
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
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Text(
                                                "Calm Cafe",
                                                style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                child: Icon(
                                                  cont.isPlaying4 == false ? Icons.play_circle : Icons.pause_circle, size: 40.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                ],
                              );
                            } else if(widget.level == 2){
                              return Column(
                                children: [
                                  SizedBox(height: 5.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 95.w,
                                        alignment: Alignment.center,
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
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5
                                        ),
                                        child: Text(
                                          "${"level".tr} 2",
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Cairo'
                                          ),
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
                                          cont.playMusic("misty_morning.mp3", 5);
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 20.h,
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
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Text(
                                                "Misty Morning melody",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontFamily: 'Cairo',
                                                    fontSize: 20.sp,
                                                    fontWeight: FontWeight.bold,
                                                    height: 1
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                child: Icon(
                                                  cont.isPlaying5 == false ? Icons.play_circle : Icons.pause_circle, size: 36.sp,
                                                ),
                                              ),
                                            ],
                                          ),
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
                                          cont.playMusic("jJazzed_up.mp3", 6);
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 20.h,
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
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Jazzed up",
                                                style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                child: Icon(
                                                  cont.isPlaying6 == false ? Icons.play_circle : Icons.pause_circle, size: 40.sp,
                                                ),
                                              ),
                                            ],
                                          ),
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
                                          cont.playMusic("deep_breathing.mp3", 7);
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 20.h,
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
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Text(
                                                "Deep breathing",
                                                style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                child: Icon(
                                                  cont.isPlaying7 == false ? Icons.play_circle : Icons.pause_circle, size: 40.sp,
                                                ),
                                              ),
                                            ],
                                          ),
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
                                          cont.playMusic("rain.mp3", 8);
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 20.h,
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
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Rain",
                                                style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                child: Icon(
                                                  cont.isPlaying8 == false ? Icons.play_circle : Icons.pause_circle, size: 40.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                ],
                              );
                            } else if(widget.level == 3){
                              return Column(
                                children: [
                                  SizedBox(height: 5.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 95.w,
                                        alignment: Alignment.center,
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
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 5
                                        ),
                                        child: Text(
                                          "${"level".tr} 3",
                                          style: TextStyle(
                                              fontSize: 18.sp,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Cairo'
                                          ),
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
                                          cont.playMusic("piano_moment.mp3", 9);
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 20.h,
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
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Piano Moment",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                  height: 1
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                child: Icon(
                                                  cont.isPlaying9 == false ? Icons.play_circle : Icons.pause_circle, size: 36.sp,
                                                ),
                                              ),
                                            ],
                                          ),
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
                                          cont.playMusic("jJazzed_up.mp3", 10);
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 20.h,
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
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Reflected Light",
                                                style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                child: Icon(
                                                  cont.isPlaying6 == false ? Icons.play_circle : Icons.pause_circle, size: 40.sp,
                                                ),
                                              ),
                                            ],
                                          ),
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
                                          cont.playMusic("deep_breathing.mp3", 7);
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 20.h,
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
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment
                                                .center,
                                            children: [
                                              Text(
                                                "Deep breathing",
                                                style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                child: Icon(
                                                  cont.isPlaying7 == false ? Icons.play_circle : Icons.pause_circle, size: 40.sp,
                                                ),
                                              ),
                                            ],
                                          ),
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
                                          cont.playMusic("rain.mp3", 8);
                                        },
                                        child: Container(
                                          width: 50.w,
                                          height: 20.h,
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
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Rain",
                                                style: TextStyle(
                                                  fontFamily: 'Cairo',
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              SizedBox(
                                                child: Icon(
                                                  cont.isPlaying8 == false ? Icons.play_circle : Icons.pause_circle, size: 40.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 5.h),
                                ],
                              );
                            }
                          }
                          return Container(
                            color: white,
                            height: 95.h,
                            width: 100.w,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 20.h),
                                const CircularProgressIndicator(
                                  color: black,
                                ),
                              ],
                            ),
                          );
                        }),
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
