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
    } else if(widget.level == 5){
      await Future.delayed(const Duration(seconds: 1));
      await shoppingGameContImp.countdownController5.start();
      shoppingGameContImp.update();
    } else if(widget.level == 6){
      await Future.delayed(const Duration(seconds: 1));
      await shoppingGameContImp.countdownController6.start();
      shoppingGameContImp.update();
    } else if(widget.level == 7){
      await Future.delayed(const Duration(seconds: 1));
      await shoppingGameContImp.countdownController7.start();
      shoppingGameContImp.update();
    }
    shoppingGameContImp.checkCanAccess();
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
                            alignment: Alignment.topCenter,
                            width: 100.w,
                            height: 96.h,
                            child: SizedBox(
                              child: CachedNetworkImage(
                                imageUrl: "https://microplazatesla.com/vl/images/shopping/list.jpg",
                                errorWidget: (_, i, e) {
                                  return Icon(
                                    FontAwesomeIcons.image,
                                    size: 13.sp,
                                    color: Colors.white,
                                  );
                                },
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
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
                                      child: Countdown(
                                        controller: cont.countdownController1,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 13.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h),
                                      height: 10.h,
                                      child: Text(
                                        "Honey",
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/1.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 5.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h),
                                      height: 10.h,
                                      child: Text(
                                        "Water Bottle",
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/2.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
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
                            alignment: Alignment.topCenter,
                            width: 100.w,
                            height: 96.h,
                            child: SizedBox(
                              child: CachedNetworkImage(
                                imageUrl: "https://microplazatesla.com/vl/images/shopping/list.jpg",
                                errorWidget: (_, i, e) {
                                  return Icon(
                                    FontAwesomeIcons.image,
                                    size: 13.sp,
                                    color: Colors.white,
                                  );
                                },
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 13.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h),
                                      height: 10.h,
                                      child: Text(
                                        "Red Pepper",
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/4.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 5.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h),
                                      height: 10.h,
                                      child: Text(
                                        "Tomato",
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/5.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
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
                            alignment: Alignment.topCenter,
                            width: 100.w,
                            height: 96.h,
                            child: SizedBox(
                              child: CachedNetworkImage(
                                imageUrl: "https://microplazatesla.com/vl/images/shopping/list.jpg",
                                errorWidget: (_, i, e) {
                                  return Icon(
                                    FontAwesomeIcons.image,
                                    size: 13.sp,
                                    color: Colors.white,
                                  );
                                },
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
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
                                      child: Countdown(
                                        controller: cont.countdownController3,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 13.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h, right: 15),
                                      height: 10.h,
                                      child: Text(
                                        "Ball",
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/6.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 5.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h, right: 15),
                                      height: 10.h,
                                      child: Text(
                                        "Duck",
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/7.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 5.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h, right: 15),
                                      height: 10.h,
                                      child: Text(
                                        "Robot",
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/8.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
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
                            alignment: Alignment.topCenter,
                            width: 100.w,
                            height: 96.h,
                            child: SizedBox(
                              child: CachedNetworkImage(
                                imageUrl: "https://microplazatesla.com/vl/images/shopping/list.jpg",
                                errorWidget: (_, i, e) {
                                  return Icon(
                                    FontAwesomeIcons.image,
                                    size: 13.sp,
                                    color: Colors.white,
                                  );
                                },
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 13.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h, right: 15),
                                      height: 10.h,
                                      child: Text(
                                        "Chicken",
                                        style: TextStyle(
                                          fontSize: 21.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/9.png",
                                        cacheKey: "150",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h, right: 15),
                                      height: 10.h,
                                      child: Text(
                                        "Car Toy",
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      margin: const EdgeInsets.only(top: 10),
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/23.png",
                                        width: 80,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 4.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h, right: 15),
                                      height: 10.h,
                                      child: Text(
                                        "Bunny",
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/11.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 5.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.only(top: 18, left: 15),
                                      height: 10.h,
                                      child: Text(
                                        "Rocket Toy",
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/11.png",
                                        cacheKey: "2",
                                        width: 80,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
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
                            alignment: Alignment.topCenter,
                            width: 100.w,
                            height: 96.h,
                            child: SizedBox(
                              child: CachedNetworkImage(
                                imageUrl: "https://microplazatesla.com/vl/images/shopping/list.jpg",
                                errorWidget: (_, i, e) {
                                  return Icon(
                                    FontAwesomeIcons.image,
                                    size: 13.sp,
                                    color: Colors.white,
                                  );
                                },
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 13.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h, right: 15),
                                      height: 10.h,
                                      child: Text(
                                        "Elephant",
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/25.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 4.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h, right: 15),
                                      height: 10.h,
                                      child: Text(
                                        "Teddy Bear",
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/26.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 1.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 5.h, right: 30),
                                      height: 10.h,
                                      child: Text(
                                        "Doll",
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/24.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 30),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.only(top: 20),
                                      height: 10.h,
                                      child: Text(
                                        "Helicopitar",
                                        style: TextStyle(
                                          fontSize: 21.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/16.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 3.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 25),
                                      height: 10.h,
                                      child: Text(
                                        "Xelephone",
                                        style: TextStyle(
                                          fontSize: 21.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/15.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 6 && cont.level >= widget.level) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            width: 100.w,
                            height: 96.h,
                            child: SizedBox(
                              child: CachedNetworkImage(
                                imageUrl: "https://microplazatesla.com/vl/images/shopping/list.jpg",
                                errorWidget: (_, i, e) {
                                  return Icon(
                                    FontAwesomeIcons.image,
                                    size: 13.sp,
                                    color: Colors.white,
                                  );
                                },
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
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
                                      child: Countdown(
                                        controller: cont.countdownController6,
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
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 13.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.only(top: 30, right: 15),
                                      height: 10.h,
                                      child: Text(
                                        "Cake",
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/29.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.only(top: 30, right: 10),
                                      height: 10.h,
                                      child: Text(
                                        "Red Pepper",
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/3.png",
                                        width: 55,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: 1.h,
                                    width: 100.w,
                                    alignment: Alignment.centerRight,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5.w,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.only(top: 20, right: 30),
                                      height: 10.h,
                                      child: Text(
                                        "Coffee",
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/30.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 20),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.only(top: 25, right: 30),
                                      height: 10.h,
                                      child: Text(
                                        "Duck",
                                        style: TextStyle(
                                          fontSize: 21.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/7.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: EdgeInsets.only(top: 25, right: 20),
                                      height: 10.h,
                                      child: Text(
                                        "Jelly",
                                        style: TextStyle(
                                          fontSize: 21.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/28.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 7 && cont.level >= widget.level) {
                  return Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            alignment: Alignment.topCenter,
                            width: 100.w,
                            height: 96.h,
                            child: SizedBox(
                              child: CachedNetworkImage(
                                imageUrl: "https://microplazatesla.com/vl/images/shopping/list.jpg",
                                errorWidget: (_, i, e) {
                                  return Icon(
                                    FontAwesomeIcons.image,
                                    size: 13.sp,
                                    color: Colors.white,
                                  );
                                },
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 100.w,
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
                                      child: Countdown(
                                        controller: cont.countdownController7,
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
                              SizedBox(height: 13.h),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.only(top: 35, left: 10),
                                      height: 10.h,
                                      child: Text(
                                        "Mrs. Potato ",
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/31.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 11),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.only(top: 20, right: 30),
                                      height: 10.h,
                                      child: Text(
                                        "Ant man",
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/32.png",
                                        width: 55,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.only(top: 30, right: 6),
                                      height: 10.h,
                                      child: Text(
                                        "slinky dog",
                                        style: TextStyle(
                                          fontSize: 20.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 10.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/33.png",
                                        width: 70,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 15),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 100),
                                    Container(
                                      padding: const EdgeInsets.only(top: 30, right: 10),
                                      height: 10.h,
                                      child: Text(
                                        "Wonder woman",
                                        style: TextStyle(
                                          fontSize: 19.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 15.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/34.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              Container(
                                width: 100.w,
                                alignment: Alignment.center,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Spacer(),
                                    Container(
                                      padding: const EdgeInsets.only(top: 28, right: 20),
                                      height: 10.h,
                                      child: Text(
                                        "Bat man",
                                        style: TextStyle(
                                          fontSize: 21.sp,
                                          color: black,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.centerRight,
                                      height: 12.h,
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/35.png",
                                        width: 60,
                                        errorWidget: (_, i, e) {
                                          return Icon(
                                            FontAwesomeIcons.image,
                                            size: 13.sp,
                                            color: Colors.white,
                                          );
                                        },
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
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