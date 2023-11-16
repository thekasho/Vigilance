part of '../../screens.dart';

class ShoppingGameScreen extends StatefulWidget {
  const ShoppingGameScreen({Key? key, required this.level}) : super(key: key);
  final dynamic level;

  @override
  State<ShoppingGameScreen> createState() => _ShoppingGameScreenState();
}

class _ShoppingGameScreenState extends State<ShoppingGameScreen> {
  ShoppingGameContImp shoppingGameContImp = Get.put(ShoppingGameContImp());

  Future<void> updateClevel() async {
    shoppingGameContImp.clevel = widget.level;
    if(widget.level == 1){
      await Future.delayed(const Duration(seconds: 1));
      await shoppingGameContImp.countdownController1.start();
      shoppingGameContImp.update();
    } else if(widget.level == 2){
      await Future.delayed(const Duration(seconds: 1));
      await shoppingGameContImp.countdownController2.start();
      shoppingGameContImp.update();
    } else if(widget.level == 3){
      await Future.delayed(const Duration(seconds: 1));
      await shoppingGameContImp.countdownController3.start();
      shoppingGameContImp.update();
    } else if(widget.level == 4){
      await Future.delayed(const Duration(seconds: 1));
      await shoppingGameContImp.countdownController4.start();
      shoppingGameContImp.update();
    }
  }

  @override
  void initState() {
    updateClevel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(ShoppingGameContImp());
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: GetBuilder<ShoppingGameContImp>(builder: (cont) {
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
              }
              if(cont.statusRequest == StatusRequest.success) {
                if (cont.clevel == 1 && cont.level >= widget.level) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 1.h),
                            width: 100.w,
                            child: SizedBox(
                              child: Image.asset(
                                  "assets/images/shopping/list.jpeg"),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 18.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 60.w,
                                      height: 5.h,
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
                                      margin: EdgeInsets.only(top: 5.h),
                                      child: Countdown(
                                        controller: cont.countdownController2,
                                        seconds: 5,
                                        build: (_, double time) => Text(
                                          "${time.toInt()} Seconds Left",
                                        ),
                                        interval: const Duration(seconds: 1),
                                        onFinished: () async {
                                          await cont.timesUp();
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Honey",
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 18.w),
                                  SizedBox(
                                    width: 15.w,
                                    height: 8.h,
                                    child: Image.asset(
                                        "assets/images/shopping/21.png"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 19.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Water Bottle",
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 7.w),
                                  SizedBox(
                                    width: 15.w,
                                    height: 8.h,
                                    child: Image.asset(
                                        "assets/images/shopping/9.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 2 && cont.level >= widget.level) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 1.h),
                            width: 100.w,
                            child: SizedBox(
                              child: Image.asset("assets/images/shopping/list.jpeg"),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 18.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 60.w,
                                      height: 5.h,
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
                                      margin: EdgeInsets.only(top: 5.h),
                                      child: Countdown(
                                        controller: cont.countdownController2,
                                        seconds: 5,
                                        build: (_, double time) => Text(
                                          "${time.toInt()} Seconds Left",
                                        ),
                                        interval: const Duration(seconds: 1),
                                        onFinished: () async {
                                          await cont.timesUp();
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Red Pepper",
                                      style: TextStyle(
                                        fontSize: 21.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 8.w),
                                  SizedBox(
                                    width: 14.w,
                                    height: 8.h,
                                    child: Image.asset("assets/images/shopping/10.png"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 19.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Tomato",
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 18.w),
                                  SizedBox(
                                    width: 15.w,
                                    height: 8.h,
                                    child: Image.asset("assets/images/shopping/25.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 3 && cont.level >= widget.level) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 1.h),
                            width: 100.w,
                            child: SizedBox(
                              child: Image.asset(
                                  "assets/images/shopping/list.jpeg"),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 18.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 60.w,
                                      height: 5.h,
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
                                      margin: EdgeInsets.only(top: 5.h),
                                      child: Countdown(
                                        controller: cont.countdownController3,
                                        seconds: 10,
                                        build: (_, double time) => Text(
                                          "${time.toInt()} Seconds Left",
                                        ),
                                        interval: const Duration(seconds: 1),
                                        onFinished: () async {
                                          await cont.timesUp();
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Ball",
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 26.w),
                                  SizedBox(
                                    width: 14.w,
                                    height: 8.h,
                                    child: Image.asset("assets/images/shopping/3.png"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Duck",
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 22.w),
                                  SizedBox(
                                    width: 15.w,
                                    height: 8.h,
                                    child: Image.asset("assets/images/shopping/13.png"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Robot",
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                  SizedBox(
                                    width: 15.w,
                                    height: 8.h,
                                    child: Image.asset("assets/images/shopping/12.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 4 && cont.level >= widget.level) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 1.h),
                            width: 100.w,
                            child: SizedBox(
                              child: Image.asset("assets/images/shopping/list.jpeg"),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 18.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 60.w,
                                      height: 5.h,
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
                                      margin: EdgeInsets.only(top: 5.h),
                                      child: Countdown(
                                        controller: cont.countdownController4,
                                        seconds: 10,
                                        build: (_, double time) => Text(
                                          "${time.toInt()} Seconds Left",
                                        ),
                                        interval: const Duration(seconds: 1),
                                        onFinished: () async {
                                          await cont.timesUp();
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Chicken",
                                      style: TextStyle(
                                        fontSize: 21.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  SizedBox(
                                    width: 14.w,
                                    height: 8.h,
                                    child: Image.asset("assets/images/shopping/16.png"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 11.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Car Toy",
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 19.w),
                                  SizedBox(
                                    width: 15.w,
                                    height: 8.h,
                                    child: Image.asset("assets/images/shopping/2.png"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 9.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Bunny",
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20.w),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    width: 17.w,
                                    height: 9.h,
                                    child: Image.asset("assets/images/shopping/8.png"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 9.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Rocket Toy",
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    width: 17.w,
                                    height: 9.h,
                                    child: Image.asset("assets/images/shopping/7.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 5 && cont.level >= widget.level) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(top: 1.h),
                            width: 100.w,
                            child: SizedBox(
                              child: Image.asset("assets/images/shopping/list.jpeg"),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 18.h,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 60.w,
                                      height: 5.h,
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
                                      margin: EdgeInsets.only(top: 5.h),
                                      child: Countdown(
                                        controller: cont.countdownController5,
                                        seconds: 10,
                                        build: (_, double time) => Text(
                                          "${time.toInt()} Seconds Left",
                                        ),
                                        interval: const Duration(seconds: 1),
                                        onFinished: () async {
                                          await cont.timesUp();
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Elephant",
                                      style: TextStyle(
                                        fontSize: 21.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 15.w),
                                  SizedBox(
                                    width: 14.w,
                                    height: 8.h,
                                    child: Image.asset("assets/images/shopping/1.png"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 11.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Teddy Bear",
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12.w),
                                  SizedBox(
                                    width: 15.w,
                                    height: 8.h,
                                    child: Image.asset("assets/images/shopping/6.png"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 9.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Doll",
                                      style: TextStyle(
                                        fontSize: 22.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 27.w),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    width: 17.w,
                                    height: 9.h,
                                    child: Image.asset("assets/images/shopping/5.png"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 9.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Helicoptar",
                                      style: TextStyle(
                                        fontSize: 21.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    width: 17.w,
                                    height: 9.h,
                                    child: Image.asset("assets/images/shopping/26.png"),
                                  ),
                                ],
                              ),
                              SizedBox(height: 9.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(width: 27.w),
                                  Container(
                                    height: 4.h,
                                    margin: EdgeInsets.only(top: 2.h),
                                    child: Text(
                                      "Xelephone",
                                      style: TextStyle(
                                        fontSize: 21.sp,
                                        color: black,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.w),
                                  Container(
                                    alignment: Alignment.topCenter,
                                    width: 17.w,
                                    height: 9.h,
                                    child: Image.asset("assets/images/shopping/4.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
        ),
      ),
    );
  }
}
