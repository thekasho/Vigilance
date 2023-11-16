part of '../../screens.dart';

class SpotGameScreen extends StatefulWidget {
  const SpotGameScreen({Key? key, required this.level}) : super(key: key);
  final dynamic level;

  @override
  State<SpotGameScreen> createState() => _SpotGameScreenState();
}

class _SpotGameScreenState extends State<SpotGameScreen> {
  SpotGameContImp spotGameContImp = Get.put(SpotGameContImp());

  Future<void> openTimer() async {
    spotGameContImp.clevel = widget.level;
    if(widget.level == 1){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController1.start();
      spotGameContImp.update();
    } else if(widget.level == 2){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController2.start();
      spotGameContImp.update();
    } else if(widget.level == 3){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController3.start();
      spotGameContImp.update();
    } else if(widget.level == 4){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController4.start();
      spotGameContImp.update();
    }
  }

  @override
  void initState() {
    openTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(SpotGameContImp());
    return SafeArea(
      child: Scaffold(
        body: GetBuilder<SpotGameContImp>(builder: (cont) {
          if(cont.statusRequest == StatusRequest.loading){
            return Container(
              color: yellowBck,
              height: 85.h,
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
            if(cont.clevel == 1 && cont.level >= widget.level){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: lightGreen,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 2,
                            color: black
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(
                          top: 2.h,
                          bottom: 3.h
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: yellow,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                      spreadRadius: 2,
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: .5.h
                                ),
                                child: Text(
                                  "Level 1",
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                      spreadRadius: 2,
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: 1.h,
                                ),
                                child: Countdown(
                                  controller: cont.countdownController1,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} Seconds Left",
                                  ),
                                  interval: const Duration(seconds: 1),
                                  onFinished: () async {
                                    await spotGameContImp.timesUp();
                                  },
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 9
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/9.png"),
                        ),
                        const Spacer(flex: 1),
                        // 4
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/4.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 7
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/7.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 3
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/3.png"),
                        ),
                        const Spacer(flex: 1),
                        // 6
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/6.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    const Divider(thickness: 2, color: black),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 3
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(3);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/3.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 6
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(6);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/6.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 5
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(5);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/5.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 4
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(4);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/4.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 9
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(9);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/9.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 7
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(7);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/7.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 2 && cont.level >= widget.level){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: lightPink,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 2,
                              color: black
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(
                          top: 2.h,
                          bottom: 3.h
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: yellow,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                      spreadRadius: 2,
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: .5.h
                                ),
                                child: Text(
                                  "Level 2",
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                      spreadRadius: 2,
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: 1.h,
                                ),
                                child: Countdown(
                                  controller: cont.countdownController2,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} Seconds Left",
                                  ),
                                  interval: const Duration(seconds: 1),
                                  onFinished: () async {
                                    await spotGameContImp.timesUp();
                                  },
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 9
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/9.png"),
                        ),
                        const Spacer(flex: 1),
                        // 5
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/5.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 3
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/3.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 4
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/4.png"),
                        ),
                        const Spacer(flex: 1),
                        // 6
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/6.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    const Divider(thickness: 2, color: black),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 3
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(3);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/3.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 9
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(9);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/9.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 4
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(4);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/4.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 7
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(7);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/7.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 5
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(5);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/5.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 6
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(6);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/6.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 3 && cont.level >= widget.level){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: lighterGreen,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 2,
                              color: black
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(
                          top: 2.h,
                          bottom: 3.h
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: yellow,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                      spreadRadius: 2,
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: .5.h
                                ),
                                child: Text(
                                  "Level 3",
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                      spreadRadius: 2,
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: 1.h,
                                ),
                                child: Countdown(
                                  controller: cont.countdownController3,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} Seconds Left",
                                  ),
                                  interval: const Duration(seconds: 1),
                                  onFinished: () async {
                                    await spotGameContImp.timesUp();
                                  },
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 4
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/4.png"),
                        ),
                        const Spacer(flex: 1),
                        // 7
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/7.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 6
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/6.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 8
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/8.png"),
                        ),
                        const Spacer(flex: 1),
                        // 5
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/5.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    const Divider(thickness: 2, color: black),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 5
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(5);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/5.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 6
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(6);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/6.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 7
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(7);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/7.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 4
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(4);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/4.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 9
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(9);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/9.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 8
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(8);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/8.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 4 && cont.level >= widget.level){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: lightMove,
                child: Column(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                              width: 2,
                              color: black
                          ),
                        ),
                      ),
                      padding: EdgeInsets.only(
                          top: 2.h,
                          bottom: 3.h
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: yellow,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                      spreadRadius: 2,
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                    vertical: .5.h
                                ),
                                child: Text(
                                  "Level 4",
                                  style: TextStyle(
                                    fontSize: 22.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 60.w,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: white,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 2),
                                      spreadRadius: 2,
                                    )
                                  ],
                                ),
                                padding: EdgeInsets.symmetric(
                                  vertical: 1.h,
                                ),
                                child: Countdown(
                                  controller: cont.countdownController4,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} Seconds Left",
                                  ),
                                  interval: const Duration(seconds: 1),
                                  onFinished: () async {
                                    await spotGameContImp.timesUp();
                                  },
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 5
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/5.png"),
                        ),
                        const Spacer(flex: 1),
                        // 3
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/3.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 7
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/7.png"),
                        ),
                        const Spacer(flex: 1),
                        // 8
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/8.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 6
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/6.png"),
                        ),
                        const Spacer(flex: 1),
                        // 10
                        Container(
                          height: 11.h,
                          width: 22.w,
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                                spreadRadius: 2,
                              )
                            ],
                          ),
                          padding: const EdgeInsets.all(1),
                          child: Image.asset(
                              "assets/images/spot_game_images/10.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    const Divider(thickness: 2, color: black),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 8
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(8);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/8.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 5
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(5);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/5.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 6
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(6);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/6.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 3
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(3);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/3.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 10
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(10);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/10.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 4
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(4);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/4.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 8
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(8);
                          },
                          child: Container(
                            height: 11.h,
                            width: 22.w,
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(0, 2),
                                  spreadRadius: 2,
                                )
                              ],
                            ),
                            padding: const EdgeInsets.all(1),
                            child: Image.asset(
                                "assets/images/spot_game_images/7.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else {
              Get.back();
            }
          }
          return Container(
            color: yellowBck,
            height: 85.h,
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
    );
  }
}
