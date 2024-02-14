part of '../../../../screens.dart';

class StdCoinGameScreen extends StatefulWidget {
  const StdCoinGameScreen({Key? key, required this.level}) : super(key: key);
  final dynamic level;

  @override
  State<StdCoinGameScreen> createState() => _StdCoinGameScreenState();
}

class _StdCoinGameScreenState extends State<StdCoinGameScreen> {
  CoinGameContImp coinGameContImp = Get.put(CoinGameContImp());

  Future<void> openTimer() async {
    coinGameContImp.clevel = widget.level;
    // await coinGameContImp.checkCanAccess();

    if(widget.level == 1){
      await Future.delayed(const Duration(seconds: 1));
      await coinGameContImp.countdownController1.start();
      coinGameContImp.update();
    }
    else if(widget.level == 2){
      await Future.delayed(const Duration(seconds: 4));
      await coinGameContImp.countdownController2.start();
      coinGameContImp.update();
    }
    else if(widget.level == 3){
      await Future.delayed(const Duration(seconds: 4));
      await coinGameContImp.countdownController3.start();
      coinGameContImp.update();
    }
    else if(widget.level == 4){
      await Future.delayed(const Duration(seconds: 4));
      await coinGameContImp.countdownController4.start();
      coinGameContImp.update();
    }
    else if(widget.level == 5){
      await Future.delayed(const Duration(seconds: 4));
      await coinGameContImp.countdownController5.start();
      coinGameContImp.update();
    } else {
      coinGameContImp.update();
    }
  }

  @override
  void initState() {
    openTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(CoinGameContImp());
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: yellowBck,
          child: Column(
            children: [
              GetBuilder<CoinGameContImp>(builder: (cont) {
                if(cont.statusRequest == StatusRequest.loading){
                  return Container(
                    color: white,
                    height: 97.h,
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
                }
                if(cont.statusRequest == StatusRequest.success) {
                  if (cont.clevel == 1) {
                    return Column(
                      children: [
                        SizedBox(height: 2.h),
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
                              // padding: EdgeInsets.symmetric(vertical: .5.h),
                              child: Text(
                                "${"level".tr} 1",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
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
                              child: Countdown(
                                controller: cont.countdownController1,
                                seconds: cont.timerSeconds,
                                build: (_, double time) =>
                                  Text(
                                    "${time.toInt()} ${"seconds".tr}",
                                    style: TextStyle(
                                      fontFamily: "Cairo",
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                interval: const Duration(seconds: 1),
                                onFinished: () async {
                                  await cont.timesUp();
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/1.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/2.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "3",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/3.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "4",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/4.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ],
                    );
                  } else if (cont.clevel == 2 && cont.level >= widget.level) {
                    return Column(
                      children: [
                        SizedBox(height: 2.h),
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
                              // padding: EdgeInsets.symmetric(vertical: .5.h),
                              child: Text(
                                "${"level".tr} 2",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'),
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
                              child: Countdown(
                                controller: cont.countdownController2,
                                seconds: cont.timerSeconds,
                                build: (_, double time) =>
                                  Text(
                                    "${time.toInt()} ${"seconds".tr}",
                                    style: TextStyle(
                                      fontFamily: "Cairo",
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                interval: const Duration(seconds: 1),
                                onFinished: () async {
                                  await cont.timesUp();
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/1.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/2.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "3",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/3.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "4",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/4.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ],
                    );
                  } else if (cont.clevel == 3 && cont.level >= widget.level) {
                    return Column(
                      children: [
                        SizedBox(height: 2.h),
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
                              // padding: EdgeInsets.symmetric(vertical: .5.h),
                              child: Text(
                                "${"level".tr} 3",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
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
                              child: Countdown(
                                controller: cont.countdownController3,
                                seconds: cont.timerSeconds,
                                build: (_, double time) =>
                                Text(
                                  "${time.toInt()} ${"seconds".tr}",
                                  style: TextStyle(
                                    fontFamily: "Cairo",
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                                interval: const Duration(seconds: 1),
                                onFinished: () async {
                                  await cont.timesUp();
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/1.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/2.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "3",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/3.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "4",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/4.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ],
                    );
                  } else if (cont.clevel == 4 && cont.level >= widget.level) {
                    return Column(
                      children: [
                        SizedBox(height: 2.h),
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
                              child: Text(
                                "${"level".tr} 4",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
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
                              child: Countdown(
                                controller: cont.countdownController4,
                                seconds: cont.timerSeconds,
                                build: (_, double time) =>
                                  Text(
                                    "${time.toInt()} ${"seconds".tr}",
                                    style: TextStyle(
                                        fontFamily: "Cairo",
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                interval: const Duration(seconds: 1),
                                onFinished: () async {
                                  await cont.timesUp();
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 8.h),
                        Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset("assets/images/coin/3.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/5.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "3",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/6.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "4",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/4.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ],
                    );
                  } else if (cont.clevel == 5 && cont.level >= widget.level) {
                    return Column(
                      children: [
                        SizedBox(height: 2.h),
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
                              child: Text(
                                "${"level".tr} 5",
                                style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo',
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
                              child: Countdown(
                                controller: cont.countdownController5,
                                seconds: cont.timerSeconds,
                                build: (_, double time) =>
                                  Text(
                                    "${time.toInt()} ${"seconds".tr}",
                                    style: TextStyle(
                                      fontFamily: "Cairo",
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                interval: const Duration(seconds: 1),
                                onFinished: () async {
                                  await cont.timesUp();
                                },
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 45.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Image.asset("assets/images/coin/5.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/2.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "3",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/4.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "4",
                                      style: TextStyle(
                                        fontSize: 30.sp,
                                        fontWeight: FontWeight.bold,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            10),
                                      ),
                                      child: Image.asset(
                                          "assets/images/coin/6.png"),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ],
                    );
                  } else {
                    return Container(
                      color: white,
                      height: 97.h,
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
                  }
                }
                return Container(
                  color: white,
                  height: 97.h,
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
            ]
          ),
        ),
      ),
    );
  }
}
