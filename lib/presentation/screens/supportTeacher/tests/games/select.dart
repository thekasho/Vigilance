part of '../../../screens.dart';

class StdCoinSelectScreen extends StatefulWidget {
  const StdCoinSelectScreen({Key? key, required this.level}) : super(key: key);
  final dynamic level;

  @override
  State<StdCoinSelectScreen> createState() => _StdCoinSelectScreenState();
}

class _StdCoinSelectScreenState extends State<StdCoinSelectScreen> {
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
                                controller: cont.countdownController2,
                                seconds: 40,
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
                                  // await cont.timesUp();
                                },
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8.h),
                        SizedBox(
                          width: 98.w,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "1 4 3 2",
                                style: TextStyle(
                                  fontSize: 45.sp,
                                  fontWeight: FontWeight.bold,
                                  height: 1,
                                  fontFamily: "Cairo"
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4.h),
                        Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Image.asset("assets/images/coin/3.png"),
                                      ),
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
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                        ),
                                        child: Image.asset("assets/images/coin/1.png"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                        SizedBox(height: 3.h),
                        Row(
                          children: [
                            const Spacer(),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        child: Image.asset("assets/images/coin/4.png"),
                                      ),
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
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 40.w,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10), 
                                        ),
                                        child: Image.asset("assets/images/coin/2.png"),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Spacer(),
                          ],
                        ),
                      ]
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
