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
                                          fontSize: 20.sp,
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
                                        "Milk",
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
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/10.png",
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
                                      padding: EdgeInsets.only(top: 5.h, right: 15),
                                      height: 10.h,
                                      child: Text(
                                        "Rocket",
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
                                        cacheKey: "2",
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
                                          // await cont.timesUp();
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
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/12.png",
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
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/13.png",
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
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/14.png",
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
                                      padding: EdgeInsets.only(top: 5.h),
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