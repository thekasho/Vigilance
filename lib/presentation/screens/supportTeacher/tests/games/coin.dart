part of '../../../screens.dart';

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
    if(widget.level == 1){
      await Future.delayed(const Duration(seconds: 1));
      await coinGameContImp.countdownController1.start();
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
              Container(
                padding: EdgeInsets.only(
                    top: 1.h,
                    bottom: 3.h
                ),
                child: GetBuilder<CoinGameContImp>(builder: (cont) {
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
                              color: white,
                              borderRadius: BorderRadius.circular(15),
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
                              seconds: 15,
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
                                        "assets/images/coin/2.png"),
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
                },),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
