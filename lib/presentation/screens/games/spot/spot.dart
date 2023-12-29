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
      spotGameContImp.countdownController2.start();
      spotGameContImp.update();
    } else if(widget.level == 3){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController3.start();
      spotGameContImp.update();
    } else if(widget.level == 4){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController4.start();
      spotGameContImp.update();
    } else if(widget.level == 5){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController5.start();
      spotGameContImp.update();
    } else if(widget.level == 6){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController6.start();
      spotGameContImp.update();
    } else if(widget.level == 7){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController7.start();
      spotGameContImp.update();
    } else if(widget.level == 8){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController8.start();
      spotGameContImp.update();
    } else if(widget.level == 9){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController9.start();
      spotGameContImp.update();
    } else if(widget.level == 10){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController10.start();
      spotGameContImp.update();
    } else if(widget.level == 11){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController11.start();
      spotGameContImp.update();
    } else if(widget.level == 12){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController12.start();
      spotGameContImp.update();
    } else if(widget.level == 13){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController13.start();
      spotGameContImp.update();
    } else if(widget.level == 14){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController14.start();
      spotGameContImp.update();
    } else if(widget.level == 15){
      await Future.delayed(const Duration(seconds: 1));
      await spotGameContImp.countdownController15.start();
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
            if(cont.clevel == 1){
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
                        top: 1.h,
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
                                  "${"level".tr} 1",
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
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
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
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
                            await cont.submitAnswer(3);
                            cont.update();
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
            } else if(cont.clevel == 2){
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
                          top: 1.h,
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
                                  "${"level".tr} 2",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
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
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
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
            } else if(cont.clevel == 3){
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
                        top: 1.h,
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
                                  "${"level".tr} 3",
                                  style: TextStyle(
                                    fontSize: 20.sp,
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
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
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
            } else if(cont.clevel == 4){
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
                          top: 1.h,
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
                                  "${"level".tr} 4",
                                  style: TextStyle(
                                      fontSize: 20.sp,
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
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
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
            } else if(cont.clevel == 5){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: yellowBck,
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
                          top: 1.h,
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
                                  "${"level".tr} 5",
                                  style: TextStyle(
                                      fontSize: 20.sp,
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
                                  controller: cont.countdownController5,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
                                  ),
                                  interval: const Duration(seconds: 1),
                                  onFinished: () async {
                                    // await spotGameContImp.timesUp();
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
                        // 11
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
                              "assets/images/spot_game_images/11.png"),
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
                        // 12
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
                              "assets/images/spot_game_images/12.png"),
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
                        // 13
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(13);
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
                                "assets/images/spot_game_images/13.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 11
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(11);
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
                                "assets/images/spot_game_images/11.png"),
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
                        // 14
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(14);
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
                                "assets/images/spot_game_images/14.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 6){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: lightxBlue,
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
                          top: 1.h,
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
                                  "${"level".tr} 6",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
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
                                  controller: cont.countdownController6,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
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
                        // 15
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
                              "assets/images/spot_game_images/15.png"),
                        ),
                        const Spacer(flex: 1),
                        // 16
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
                              "assets/images/spot_game_images/16.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 17
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
                              "assets/images/spot_game_images/17.png"),
                        ),
                        const Spacer(flex: 1),
                        // 18
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
                              "assets/images/spot_game_images/18.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 19
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
                              "assets/images/spot_game_images/19.png"),
                        ),
                        const Spacer(flex: 1),
                        // 20
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
                              "assets/images/spot_game_images/20.png"),
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
                        // 19
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(19);
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
                                "assets/images/spot_game_images/19.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 15
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(15);
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
                                "assets/images/spot_game_images/15.png"),
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
                        // 20
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(20);
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
                                "assets/images/spot_game_images/20.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 21
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(21);
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
                                "assets/images/spot_game_images/21.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 18
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(18);
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
                                "assets/images/spot_game_images/18.png"),
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
                        // 17
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(17);
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
                                "assets/images/spot_game_images/17.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 16
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(16);
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
                                "assets/images/spot_game_images/16.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 7){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: lightxBlue,
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
                          top: 1.h,
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
                                  "${"level".tr} 7",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
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
                                  controller: cont.countdownController7,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
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
                        // 17
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
                              "assets/images/spot_game_images/17.png"),
                        ),
                        const Spacer(flex: 1),
                        // 15
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
                              "assets/images/spot_game_images/15.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 16
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
                              "assets/images/spot_game_images/16.png"),
                        ),
                        const Spacer(flex: 1),
                        // 22
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
                              "assets/images/spot_game_images/18.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 22
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
                              "assets/images/spot_game_images/22.png"),
                        ),
                        const Spacer(flex: 1),
                        // 20
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
                              "assets/images/spot_game_images/20.png"),
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
                        // 15
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(15);
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
                                "assets/images/spot_game_images/15.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 18
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(18);
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
                                "assets/images/spot_game_images/18.png"),
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
                        // 20
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(20);
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
                                "assets/images/spot_game_images/20.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 17
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(17);
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
                                "assets/images/spot_game_images/17.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 23
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(23);
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
                                "assets/images/spot_game_images/23.png"),
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
                        // 22
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(22);
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
                                "assets/images/spot_game_images/22.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 16
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(16);
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
                                "assets/images/spot_game_images/16.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 8){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: spotLvl8,
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
                          top: 1.h,
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
                                  "${"level".tr} 8",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
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
                                  controller: cont.countdownController8,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
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
                        // 17
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
                              "assets/images/spot_game_images/17.png"),
                        ),
                        const Spacer(flex: 1),
                        // 23
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
                              "assets/images/spot_game_images/23.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 16
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
                              "assets/images/spot_game_images/16.png"),
                        ),
                        const Spacer(flex: 1),
                        // 24
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
                              "assets/images/spot_game_images/24.png"),
                        ),
                        const Spacer(flex: 1),
                        // 21
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
                              "assets/images/spot_game_images/21.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 25
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
                              "assets/images/spot_game_images/25.png"),
                        ),
                        const Spacer(flex: 1),
                        // 20
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
                              "assets/images/spot_game_images/20.png"),
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
                        // 17
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(17);
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
                                "assets/images/spot_game_images/17.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 20
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(20);
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
                                "assets/images/spot_game_images/20.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 23
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(23);
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
                                "assets/images/spot_game_images/23.png"),
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
                        // 24
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(24);
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
                                "assets/images/spot_game_images/24.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 22
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(22);
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
                                "assets/images/spot_game_images/22.png"),
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
                        // 21
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(21);
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
                                "assets/images/spot_game_images/21.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 25
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(25);
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
                                "assets/images/spot_game_images/25.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 26
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(26);
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
                                "assets/images/spot_game_images/26.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 9){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: spotLvl8,
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
                          top: 1.h,
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
                                  "${"level".tr} 9",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
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
                                  controller: cont.countdownController9,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
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
                        // 26
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
                              "assets/images/spot_game_images/26.png"),
                        ),
                        const Spacer(flex: 1),
                        // 19
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
                              "assets/images/spot_game_images/19.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 27
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
                              "assets/images/spot_game_images/27.png"),
                        ),
                        const Spacer(flex: 1),
                        // 25
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
                              "assets/images/spot_game_images/25.png"),
                        ),
                        const Spacer(flex: 1),
                        // 23
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
                              "assets/images/spot_game_images/23.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 28
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
                              "assets/images/spot_game_images/28.png"),
                        ),
                        const Spacer(flex: 1),
                        // 29
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
                              "assets/images/spot_game_images/29.png"),
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
                        // 19
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(19);
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
                                "assets/images/spot_game_images/19.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 27
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(27);
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
                                "assets/images/spot_game_images/27.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 23
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(23);
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
                                "assets/images/spot_game_images/23.png"),
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
                        // 29
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(29);
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
                                "assets/images/spot_game_images/29.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 28
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(28);
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
                                "assets/images/spot_game_images/28.png"),
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
                        // 30
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(30);
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
                                "assets/images/spot_game_images/30.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 25
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(25);
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
                                "assets/images/spot_game_images/25.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 26
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(26);
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
                                "assets/images/spot_game_images/26.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 10){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: spotLvl10,
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
                          top: 1.h,
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
                                  "${"level".tr} 10",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
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
                                  controller: cont.countdownController10,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
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
                        // 30
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
                              "assets/images/spot_game_images/30.png"),
                        ),
                        const Spacer(flex: 1),
                        // 27
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
                              "assets/images/spot_game_images/27.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 24
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
                              "assets/images/spot_game_images/24.png"),
                        ),
                        const Spacer(flex: 1),
                        // 21
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
                              "assets/images/spot_game_images/21.png"),
                        ),
                        const Spacer(flex: 1),
                        // 29
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
                              "assets/images/spot_game_images/29.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 28
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
                              "assets/images/spot_game_images/28.png"),
                        ),
                        const Spacer(flex: 1),
                        // 17
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
                              "assets/images/spot_game_images/17.png"),
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
                        // 27
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(27);
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
                                "assets/images/spot_game_images/27.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 31
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(31);
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
                                "assets/images/spot_game_images/31.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 30
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(30);
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
                                "assets/images/spot_game_images/30.png"),
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
                        // 17
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(17);
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
                                "assets/images/spot_game_images/17.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 28
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(28);
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
                                "assets/images/spot_game_images/28.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 29
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(29);
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
                                "assets/images/spot_game_images/29.png"),
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
                        // 21
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(21);
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
                                "assets/images/spot_game_images/21.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 24
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(24);
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
                                "assets/images/spot_game_images/24.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 11){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: spotLvl11,
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
                          top: 1.h,
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
                                  "${"level".tr} 11",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
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
                                  controller: cont.countdownController11,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
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
                        // 32
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
                              "assets/images/spot_game_images/32.png"),
                        ),
                        const Spacer(flex: 1),
                        // 34
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
                              "assets/images/spot_game_images/34.png"),
                        ),
                        const Spacer(flex: 1),
                        // 33
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
                              "assets/images/spot_game_images/33.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 35
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
                              "assets/images/spot_game_images/35.png"),
                        ),
                        const Spacer(flex: 1),
                        // 36
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
                              "assets/images/spot_game_images/36.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 37
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
                              "assets/images/spot_game_images/37.png"),
                        ),
                        const Spacer(flex: 1),
                        // 38
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
                              "assets/images/spot_game_images/38.png"),
                        ),
                        const Spacer(flex: 1),
                        // 39
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
                              "assets/images/spot_game_images/39.png"),
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
                        // 37
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(37);
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
                                "assets/images/spot_game_images/37.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 38
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(38);
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
                                "assets/images/spot_game_images/38.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 34
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(34);
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
                                "assets/images/spot_game_images/34.png"),
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
                        // 35
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(35);
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
                                "assets/images/spot_game_images/35.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 40
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(40);
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
                                "assets/images/spot_game_images/40.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 33
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(33);
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
                                "assets/images/spot_game_images/33.png"),
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
                        // 32
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(32);
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
                                "assets/images/spot_game_images/32.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 39
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(39);
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
                                "assets/images/spot_game_images/39.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 36
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(36);
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
                                "assets/images/spot_game_images/36.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 12){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: spotLvl12,
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
                          top: 1.h,
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
                                  "${"level".tr} 12",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
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
                                  controller: cont.countdownController12,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
                                  ),
                                  interval: const Duration(seconds: 1),
                                  onFinished: () async {
                                    // await spotGameContImp.timesUp();
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
                        // 32
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
                              "assets/images/spot_game_images/32.png"),
                        ),
                        const Spacer(flex: 1),
                        // 38
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
                              "assets/images/spot_game_images/38.png"),
                        ),
                        const Spacer(flex: 1),
                        // 41
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
                              "assets/images/spot_game_images/41.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 42
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
                              "assets/images/spot_game_images/42.png"),
                        ),
                        const Spacer(flex: 1),
                        // 43
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
                              "assets/images/spot_game_images/43.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 34
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
                              "assets/images/spot_game_images/34.png"),
                        ),
                        const Spacer(flex: 1),
                        // 40
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
                              "assets/images/spot_game_images/40.png"),
                        ),
                        const Spacer(flex: 1),
                        // 44
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
                              "assets/images/spot_game_images/44.png"),
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
                        // 37
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(37);
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
                                "assets/images/spot_game_images/37.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 40
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(40);
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
                                "assets/images/spot_game_images/40.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 34
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(34);
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
                                "assets/images/spot_game_images/34.png"),
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
                        // 42
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(42);
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
                                "assets/images/spot_game_images/42.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 44
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(44);
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
                                "assets/images/spot_game_images/44.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 38
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(38);
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
                                "assets/images/spot_game_images/38.png"),
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
                        // 32
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(32);
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
                                "assets/images/spot_game_images/32.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 41
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(41);
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
                                "assets/images/spot_game_images/41.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 43
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(43);
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
                                "assets/images/spot_game_images/43.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 13){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: spotLvl13,
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
                          top: 1.h,
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
                                  "${"level".tr} 13",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
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
                                  controller: cont.countdownController13,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
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
                        // 32
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
                              "assets/images/spot_game_images/32.png"),
                        ),
                        const Spacer(flex: 1),
                        // 38
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
                              "assets/images/spot_game_images/38.png"),
                        ),
                        const Spacer(flex: 1),
                        // 41
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
                              "assets/images/spot_game_images/41.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 45
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
                              "assets/images/spot_game_images/45.png"),
                        ),
                        const Spacer(flex: 1),
                        // 46
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
                              "assets/images/spot_game_images/46.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 34
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
                              "assets/images/spot_game_images/34.png"),
                        ),
                        const Spacer(flex: 1),
                        // 33
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
                              "assets/images/spot_game_images/33.png"),
                        ),
                        const Spacer(flex: 1),
                        // 35
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
                              "assets/images/spot_game_images/35.png"),
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
                        // 34
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(34);
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
                                "assets/images/spot_game_images/34.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 33
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(33);
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
                                "assets/images/spot_game_images/33.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 47
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(47);
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
                                "assets/images/spot_game_images/47.png"),
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
                        // 32
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(32);
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
                                "assets/images/spot_game_images/32.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 46
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(46);
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
                                "assets/images/spot_game_images/46.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 35
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(35);
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
                                "assets/images/spot_game_images/35.png"),
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
                        // 41
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(41);
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
                                "assets/images/spot_game_images/41.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 45
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(45);
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
                                "assets/images/spot_game_images/45.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 38
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(38);
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
                                "assets/images/spot_game_images/38.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 14){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: spotLvl14,
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
                          top: 1.h,
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
                                  "${"level".tr} 14",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
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
                                  controller: cont.countdownController14,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
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
                        // 45
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
                              "assets/images/spot_game_images/45.png"),
                        ),
                        const Spacer(flex: 1),
                        // 32
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
                              "assets/images/spot_game_images/32.png"),
                        ),
                        const Spacer(flex: 1),
                        // 44
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
                              "assets/images/spot_game_images/44.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 38
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
                              "assets/images/spot_game_images/38.png"),
                        ),
                        const Spacer(flex: 1),
                        // 36
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
                              "assets/images/spot_game_images/36.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 40
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
                              "assets/images/spot_game_images/40.png"),
                        ),
                        const Spacer(flex: 1),
                        // 42
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
                              "assets/images/spot_game_images/42.png"),
                        ),
                        const Spacer(flex: 1),
                        // 33
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
                              "assets/images/spot_game_images/33.png"),
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
                        // 36
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(36);
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
                                "assets/images/spot_game_images/36.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 38
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(38);
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
                                "assets/images/spot_game_images/38.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 40
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(40);
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
                                "assets/images/spot_game_images/40.png"),
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
                        // 45
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(45);
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
                                "assets/images/spot_game_images/45.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 33
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(33);
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
                                "assets/images/spot_game_images/33.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 32
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(32);
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
                                "assets/images/spot_game_images/32.png"),
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
                        // 44
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(44);
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
                                "assets/images/spot_game_images/44.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 47
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(47);
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
                                "assets/images/spot_game_images/47.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 42
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(42);
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
                                "assets/images/spot_game_images/42.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                  ],
                ),
              );
            } else if(cont.clevel == 15){
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: spotLvl10,
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
                          top: 1.h,
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
                                  "${"level".tr} 15",
                                  style: TextStyle(
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Cairo'
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
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
                                  controller: cont.countdownController15,
                                  seconds: 10,
                                  build: (_, double time) => Text(
                                    "${time.toInt()} ${"seconds_left".tr}",
                                    style: const TextStyle(
                                      fontFamily: "Cairo",
                                    ),
                                  ),
                                  interval: const Duration(seconds: 1),
                                  onFinished: () async {
                                    // await spotGameContImp.timesUp();
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
                        // 45
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
                              "assets/images/spot_game_images/45.png"),
                        ),
                        const Spacer(flex: 1),
                        // 32
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
                              "assets/images/spot_game_images/32.png"),
                        ),
                        const Spacer(flex: 1),
                        // 44
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
                              "assets/images/spot_game_images/44.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 43
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
                              "assets/images/spot_game_images/43.png"),
                        ),
                        const Spacer(flex: 1),
                        // 41
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
                              "assets/images/spot_game_images/41.png"),
                        ),
                        const Spacer(flex: 1),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(flex: 1),
                        // 40
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
                              "assets/images/spot_game_images/40.png"),
                        ),
                        const Spacer(flex: 1),
                        // 42
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
                              "assets/images/spot_game_images/42.png"),
                        ),
                        const Spacer(flex: 1),
                        // 33
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
                              "assets/images/spot_game_images/33.png"),
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
                        // 48
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(48);
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
                                "assets/images/spot_game_images/48.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 42
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(42);
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
                                "assets/images/spot_game_images/42.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 43
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(43);
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
                                "assets/images/spot_game_images/43.png"),
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
                        // 45
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(45);
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
                                "assets/images/spot_game_images/45.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 32
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(32);
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
                                "assets/images/spot_game_images/32.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 40
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(40);
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
                                "assets/images/spot_game_images/40.png"),
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
                        // 44
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(44);
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
                                "assets/images/spot_game_images/44.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 41
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(41);
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
                                "assets/images/spot_game_images/41.png"),
                          ),
                        ),
                        const Spacer(flex: 1),
                        // 33
                        GestureDetector(
                          onTap: () async {
                            cont.submitAnswer(33);
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
                                "assets/images/spot_game_images/33.png"),
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
