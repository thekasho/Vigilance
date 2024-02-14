part of '../../../../screens.dart';

class StdCoinSelectScreen extends StatefulWidget {
  const StdCoinSelectScreen({Key? key, required this.level}) : super(key: key);
  final dynamic level;

  @override
  State<StdCoinSelectScreen> createState() => _StdCoinSelectScreenState();
}

class _StdCoinSelectScreenState extends State<StdCoinSelectScreen> {
  CoinGameContImp coinGameContImp = Get.put(CoinGameContImp());

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
                  if(cont.statusRequest == StatusRequest.loading){
                    return Container(
                      color: white,
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
                    if (cont.clevel == 1) {
                      return Column(
                        children: [
                          SizedBox(height: 2.h),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Container(
                          //       width: 60.w,
                          //       alignment: Alignment.center,
                          //       decoration: BoxDecoration(
                          //         color: white,
                          //         borderRadius: BorderRadius.circular(15),
                          //         boxShadow: const [
                          //           BoxShadow(
                          //             blurRadius: 4,
                          //             color: Color(0x33000000),
                          //             offset: Offset(0, 2),
                          //             spreadRadius: 2,
                          //           )
                          //         ],
                          //       ),
                          //       child: Countdown(
                          //         controller: cont.countdownController2,
                          //         seconds: 40,
                          //         build: (_, double time) =>
                          //           Text(
                          //             "${time.toInt()} ${"seconds".tr}",
                          //             style: TextStyle(
                          //                 fontFamily: "Cairo",
                          //                 fontSize: 20.sp,
                          //                 fontWeight: FontWeight.bold
                          //             ),
                          //           ),
                          //         interval: const Duration(seconds: 1),
                          //         onFinished: () async {
                          //           // await cont.timesUp();
                          //         },
                          //       ),
                          //     ),
                          //   ],
                          // ),
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
                                        onTap: () {
                                          cont.saveClicks(3);
                                        },
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
                                        onTap: () {
                                          cont.saveClicks(1);
                                        },
                                        child: Container(
                                          width: 40.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
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
                                        onTap: () {
                                          cont.saveClicks(4);
                                        },
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
                                        onTap: () {
                                          cont.saveClicks(2);
                                        },
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
                        ],
                      );
                    } else if (cont.clevel == 2) {
                      return Column(
                        children: [
                            SizedBox(height: 2.h),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //     Container(
                            //       width: 60.w,
                            //       alignment: Alignment.center,
                            //       decoration: BoxDecoration(
                            //         color: white,
                            //         borderRadius: BorderRadius.circular(15),
                            //         boxShadow: const [
                            //           BoxShadow(
                            //             blurRadius: 4,
                            //             color: Color(0x33000000),
                            //             offset: Offset(0, 2),
                            //             spreadRadius: 2,
                            //           )
                            //         ],
                            //       ),
                            //       child: Countdown(
                            //         controller: cont.countdownController2,
                            //         seconds: 40,
                            //         build: (_, double time) =>
                            //           Text(
                            //             "${time.toInt()} ${"seconds".tr}",
                            //             style: TextStyle(
                            //                 fontFamily: "Cairo",
                            //                 fontSize: 20.sp,
                            //                 fontWeight: FontWeight.bold
                            //             ),
                            //           ),
                            //         interval: const Duration(seconds: 1),
                            //         onFinished: () async {
                            //           // await cont.timesUp();
                            //         },
                            //       ),
                            //     ),
                            //   ],
                            // ),
                            SizedBox(height: 8.h),
                            SizedBox(
                              width: 98.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Text(
                                    "2 3 4 2",
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
                                          onTap: () {
                                            cont.saveClicks(2);
                                          },
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
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            cont.saveClicks(3);
                                          },
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
                                          onTap: () {
                                            cont.saveClicks(1);
                                          },
                                          child: Container(
                                            width: 40.w,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            child: Image.asset("assets/images/coin/1.png"),
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
                                          onTap: () {
                                            cont.saveClicks(4);
                                          },
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
                              ],
                            ),
                    ],
                      );
                    } else if (cont.clevel == 3) {
                      return Column(
                        children: [
                          SizedBox(height: 2.h),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [
                          //     Container(
                          //       width: 60.w,
                          //       alignment: Alignment.center,
                          //       decoration: BoxDecoration(
                          //         color: white,
                          //         borderRadius: BorderRadius.circular(15),
                          //         boxShadow: const [
                          //           BoxShadow(
                          //             blurRadius: 4,
                          //             color: Color(0x33000000),
                          //             offset: Offset(0, 2),
                          //             spreadRadius: 2,
                          //           )
                          //         ],
                          //       ),
                          //       child: Countdown(
                          //         controller: cont.countdownController2,
                          //         seconds: 40,
                          //         build: (_, double time) =>
                          //           Text(
                          //             "${time.toInt()} ${"seconds".tr}",
                          //             style: TextStyle(
                          //                 fontFamily: "Cairo",
                          //                 fontSize: 20.sp,
                          //                 fontWeight: FontWeight.bold
                          //             ),
                          //           ),
                          //         interval: const Duration(seconds: 1),
                          //         onFinished: () async {
                          //           // await cont.timesUp();
                          //         },
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          SizedBox(height: 8.h),
                          SizedBox(
                            width: 98.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "2 4 2 1",
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
                                        onTap: () {
                                          cont.saveClicks(2);
                                        },
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
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(4);
                                        },
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
                                        onTap: () {
                                          cont.saveClicks(3);
                                        },
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
                                        onTap: () {
                                          cont.saveClicks(1);
                                        },
                                        child: Container(
                                          width: 40.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
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
                        ],
                      );
                    } else if (cont.clevel == 4) {
                      return Column(
                        children: [
                          SizedBox(height: 2.h),
                          SizedBox(height: 8.h),
                          SizedBox(
                            width: 98.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "4 1 3 2",
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
                                        onTap: () {
                                          cont.saveClicks(2);
                                        },
                                        child: Container(
                                          width: 45.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Image.asset("assets/images/coin/5.png"),
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
                                        onTap: () {
                                          cont.saveClicks(1);
                                        },
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
                                        onTap: () {
                                          cont.saveClicks(4);
                                        },
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
                                        onTap: () {
                                          cont.saveClicks(3);
                                        },
                                        child: Container(
                                          width: 40.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Image.asset("assets/images/coin/6.png"),
                                        ),
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
                    } else if (cont.clevel == 5) {
                      return Column(
                        children: [
                          SizedBox(height: 8.h),
                          SizedBox(
                            width: 98.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "3 2 1 4",
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
                                        onTap: () {
                                          cont.saveClicks(2);
                                        },
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
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(3);
                                        },
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
                                        onTap: () {
                                          cont.saveClicks(4);
                                        },
                                        child: Container(
                                          width: 40.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Image.asset("assets/images/coin/6.png"),
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
                                        onTap: () {
                                          cont.saveClicks(1);
                                        },
                                        child: Container(
                                          width: 40.w,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Image.asset("assets/images/coin/5.png"),
                                        ),
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
                      Get.back();
                    }
                  }
                  return Container(
                    color: white,
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
            ],
          ),
        ),
      ),
    );
  }
}
