part of '../../screens.dart';

class ShopSelectScreen extends StatefulWidget {
  const ShopSelectScreen({Key? key, required this.level}) : super(key: key);
  final dynamic level;

  @override
  State<ShopSelectScreen> createState() => _ShopSelectScreenState();
}

class _ShopSelectScreenState extends State<ShopSelectScreen> {
  ShoppingGameContImp shoppingGameContImp = Get.put(ShoppingGameContImp());

  @override
  Widget build(BuildContext context) {
    Get.put(ShoppingGameContImp());
    return WillPopScope(
      onWillPop: () async {
        shoppingGameContImp.lvlOne1Y = false;
        shoppingGameContImp.lvlOne1N = false;
        shoppingGameContImp.lvlOne2Y = false;
        shoppingGameContImp.lvlOne2N = false;
        shoppingGameContImp.lvlOne3Y = false;
        shoppingGameContImp.lvlOne3N = false;
        shoppingGameContImp.lvlOne4Y = false;
        shoppingGameContImp.lvlOne4N = false;

        shoppingGameContImp.lvlTwo1Y = false;
        shoppingGameContImp.lvlTwo1N = false;
        shoppingGameContImp.lvlTwo2Y = false;
        shoppingGameContImp.lvlTwo2N = false;
        shoppingGameContImp.lvlTwo3Y = false;
        shoppingGameContImp.lvlTwo3N = false;
        shoppingGameContImp.lvlTwo4Y = false;
        shoppingGameContImp.lvlTwo4N = false;

        shoppingGameContImp.lvlThree1Y = false;
        shoppingGameContImp.lvlThree1N = false;
        shoppingGameContImp.lvlThree2Y = false;
        shoppingGameContImp.lvlThree2N = false;
        shoppingGameContImp.lvlThree3Y = false;
        shoppingGameContImp.lvlThree3N = false;
        shoppingGameContImp.lvlThree4Y = false;
        shoppingGameContImp.lvlThree4N = false;
        shoppingGameContImp.lvlThree5Y = false;
        shoppingGameContImp.lvlThree5N = false;

        shoppingGameContImp.lvlFour1Y = false;
        shoppingGameContImp.lvlFour1N = false;
        shoppingGameContImp.lvlFour2Y = false;
        shoppingGameContImp.lvlFour2N = false;
        shoppingGameContImp.lvlFour3Y = false;
        shoppingGameContImp.lvlFour3N = false;
        shoppingGameContImp.lvlFour4Y = false;
        shoppingGameContImp.lvlFour4N = false;
        shoppingGameContImp.lvlFour5Y = false;
        shoppingGameContImp.lvlFour5N = false;

        shoppingGameContImp.lvlFive1Y = false;
        shoppingGameContImp.lvlFive1N = false;
        shoppingGameContImp.lvlFive2Y = false;
        shoppingGameContImp.lvlFive2N = false;
        shoppingGameContImp.lvlFive3Y = false;
        shoppingGameContImp.lvlFive3N = false;
        shoppingGameContImp.lvlFive4Y = false;
        shoppingGameContImp.lvlFive4N = false;
        shoppingGameContImp.lvlFive5Y = false;
        shoppingGameContImp.lvlFive5N = false;
        shoppingGameContImp.lvlFive6Y = false;
        shoppingGameContImp.lvlFive6N = false;
        shoppingGameContImp.lvlFive7Y = false;
        shoppingGameContImp.lvlFive7N = false;

        shoppingGameContImp.lvlSix1Y = false;
        shoppingGameContImp.lvlSix1N = false;
        shoppingGameContImp.lvlSix2Y = false;
        shoppingGameContImp.lvlSix2N = false;
        shoppingGameContImp.lvlSix3Y = false;
        shoppingGameContImp.lvlSix3N = false;
        shoppingGameContImp.lvlSix4Y = false;
        shoppingGameContImp.lvlSix4N = false;
        shoppingGameContImp.lvlSix5Y = false;
        shoppingGameContImp.lvlSix5N = false;
        shoppingGameContImp.lvlSix6Y = false;
        shoppingGameContImp.lvlSix6N = false;
        shoppingGameContImp.lvlSix7Y = false;
        shoppingGameContImp.lvlSix7N = false;

        shoppingGameContImp.lvlSeven1Y = false;
        shoppingGameContImp.lvlSeven1N = false;
        shoppingGameContImp.lvlSeven2Y = false;
        shoppingGameContImp.lvlSeven2N = false;
        shoppingGameContImp.lvlSeven3Y = false;
        shoppingGameContImp.lvlSeven3N = false;
        shoppingGameContImp.lvlSeven4Y = false;
        shoppingGameContImp.lvlSeven4N = false;
        shoppingGameContImp.lvlSeven5Y = false;
        shoppingGameContImp.lvlSeven5N = false;
        shoppingGameContImp.lvlSeven6Y = false;
        shoppingGameContImp.lvlSeven6N = false;
        shoppingGameContImp.lvlSeven7Y = false;
        shoppingGameContImp.lvlSeven7N = false;

        shoppingGameContImp.lvlEight1Y = false;
        shoppingGameContImp.lvlEight1N = false;
        shoppingGameContImp.lvlEight2Y = false;
        shoppingGameContImp.lvlEight2N = false;
        shoppingGameContImp.lvlEight3Y = false;
        shoppingGameContImp.lvlEight3N = false;
        shoppingGameContImp.lvlEight4Y = false;
        shoppingGameContImp.lvlEight4N = false;
        shoppingGameContImp.lvlEight5Y = false;
        shoppingGameContImp.lvlEight5N = false;
        shoppingGameContImp.lvlEight6Y = false;
        shoppingGameContImp.lvlEight6N = false;
        shoppingGameContImp.lvlEight7Y = false;
        shoppingGameContImp.lvlEight7N = false;

        shoppingGameContImp.lvlNine1Y = false;
        shoppingGameContImp.lvlNine1N = false;
        shoppingGameContImp.lvlNine2Y = false;
        shoppingGameContImp.lvlNine2N = false;
        shoppingGameContImp.lvlNine3Y = false;
        shoppingGameContImp.lvlNine3N = false;
        shoppingGameContImp.lvlNine4Y = false;
        shoppingGameContImp.lvlNine4N = false;
        shoppingGameContImp.lvlNine5Y = false;
        shoppingGameContImp.lvlNine5N = false;
        shoppingGameContImp.lvlNine6Y = false;
        shoppingGameContImp.lvlNine6N = false;
        shoppingGameContImp.lvlNine7Y = false;
        shoppingGameContImp.lvlNine7N = false;

        shoppingGameContImp.lvlTen1Y = false;
        shoppingGameContImp.lvlTen1N = false;
        shoppingGameContImp.lvlTen2Y = false;
        shoppingGameContImp.lvlTen2N = false;
        shoppingGameContImp.lvlTen3Y = false;
        shoppingGameContImp.lvlTen3N = false;
        shoppingGameContImp.lvlTen4Y = false;
        shoppingGameContImp.lvlTen4N = false;
        shoppingGameContImp.lvlTen5Y = false;
        shoppingGameContImp.lvlTen5N = false;
        shoppingGameContImp.lvlTen6Y = false;
        shoppingGameContImp.lvlTen6N = false;
        shoppingGameContImp.lvlTen7Y = false;
        shoppingGameContImp.lvlTen7N = false;

        shoppingGameContImp.lvlTwelve1Y = false;
        shoppingGameContImp.lvlTwelve1N = false;
        shoppingGameContImp.lvlTwelve2Y = false;
        shoppingGameContImp.lvlTwelve2N = false;
        shoppingGameContImp.lvlTwelve3Y = false;
        shoppingGameContImp.lvlTwelve3N = false;
        shoppingGameContImp.lvlTwelve4Y = false;
        shoppingGameContImp.lvlTwelve4N = false;
        shoppingGameContImp.lvlTwelve5Y = false;
        shoppingGameContImp.lvlTwelve5N = false;
        shoppingGameContImp.lvlTwelve6Y = false;
        shoppingGameContImp.lvlTwelve6N = false;
        shoppingGameContImp.lvlTwelve7Y = false;
        shoppingGameContImp.lvlTwelve7N = false;

        shoppingGameContImp.lvlThirteen1Y = false;
        shoppingGameContImp.lvlThirteen1N = false;
        shoppingGameContImp.lvlThirteen2Y = false;
        shoppingGameContImp.lvlThirteen2N = false;
        shoppingGameContImp.lvlThirteen3Y = false;
        shoppingGameContImp.lvlThirteen3N = false;
        shoppingGameContImp.lvlThirteen4Y = false;
        shoppingGameContImp.lvlThirteen4N = false;
        shoppingGameContImp.lvlThirteen5Y = false;
        shoppingGameContImp.lvlThirteen5N = false;
        shoppingGameContImp.lvlThirteen6Y = false;
        shoppingGameContImp.lvlThirteen6N = false;
        shoppingGameContImp.lvlThirteen7Y = false;
        shoppingGameContImp.lvlThirteen7N = false;

        shoppingGameContImp.lvlFiveteen1Y = false;
        shoppingGameContImp.lvlFiveteen1N = false;
        shoppingGameContImp.lvlFiveteen2Y = false;
        shoppingGameContImp.lvlFiveteen2N = false;
        shoppingGameContImp.lvlFiveteen3Y = false;
        shoppingGameContImp.lvlFiveteen3N = false;
        shoppingGameContImp.lvlFiveteen4Y = false;
        shoppingGameContImp.lvlFiveteen4N = false;
        shoppingGameContImp.lvlFiveteen5Y = false;
        shoppingGameContImp.lvlFiveteen5N = false;
        shoppingGameContImp.lvlFiveteen6Y = false;
        shoppingGameContImp.lvlFiveteen6N = false;
        shoppingGameContImp.lvlFiveteen7Y = false;
        shoppingGameContImp.lvlFiveteen7N = false;

        Get.back();
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: 96.h,
                      width: 100.w,
                      child: CachedNetworkImage(
                        imageUrl: "https://microplazatesla.com/vl/images/shopping/select_bg.jpg",
                        errorWidget: (_, i, e) {
                          return Icon(
                            FontAwesomeIcons.image,
                            size: 40.sp,
                            color: Colors.white,
                          );
                        },
                      ),
                    ),
                    GetBuilder<ShoppingGameContImp>(builder: (cont) {
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
                              SizedBox(
                                width: 100.w,
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Stack(
                                    alignment: AlignmentDirectional.bottomCenter,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(9, 1);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/2.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                        // child: Image.asset("assets/images/shopping/9.png", width: 12.h),
                                      ),
                                      Visibility(
                                        visible: cont.lvlOne1Y,
                                        child: Container(
                                            margin: EdgeInsets.only(right: 5.w),
                                            child: Image.asset("assets/images/shopping/yes.png", width: 7.w)
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlOne1N,
                                        child: Container(
                                            margin: EdgeInsets.only(right: 5.w),
                                            child: Image.asset("assets/images/shopping/no.png", width: 7.w)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 6.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 25.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomCenter,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(24, 2);
                                        },
                                        child: Container(
                                          width: 80,
                                          margin: const EdgeInsets.only(top: 10),
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/17.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlOne2Y,
                                        child: Container(
                                            margin: EdgeInsets.only(right: 15.w),
                                            child: Image.asset("assets/images/shopping/yes.png", width: 7.w)
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlOne2N,
                                        child: Container(
                                            margin: EdgeInsets.only(right: 15.w),
                                            child: Image.asset("assets/images/shopping/no.png", width: 7.w)
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(22, 3);
                                        },
                                        child: Container(
                                          width: 80,
                                          margin: const EdgeInsets.only(top: 10),
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/18.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlOne3N,
                                        child: Container(
                                            margin: EdgeInsets.only(right: 15.w),
                                            child: Image.asset("assets/images/shopping/no.png", width: 7.w)
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlOne3Y,
                                        child: Container(
                                            margin: EdgeInsets.only(right: 15.w),
                                            child: Image.asset("assets/images/shopping/yes.png", width: 7.w)
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 25.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(21, 4);
                                        },
                                        child: Container(
                                          width: 80,
                                          margin: const EdgeInsets.only(top: 20),
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/1.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlOne4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlOne4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 2) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 16.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 15.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          cont.saveClicks(25, 1);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/5.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwo1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwo1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          cont.saveClicks(27, 2);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/27.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwo2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwo2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 25.w),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          cont.saveClicks(10, 3);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/3.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwo3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwo3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 6.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 19.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          cont.saveClicks(28, 4);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/28.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwo4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwo4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 3) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 16.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          cont.saveClicks(15, 1);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/4.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThree1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThree1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          cont.saveClicks(13, 2);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/7.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThree2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThree2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 15.w),
                                ],
                              ),
                              SizedBox(height: 7.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 18.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          cont.saveClicks(3, 3);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/6.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThree3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThree3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          cont.saveClicks(14, 4);
                                        },
                                        child: Container(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/9.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThree4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThree4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 15.w),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 22.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          cont.saveClicks(12, 5);
                                        },
                                        child: SizedBox(
                                          child: Container(
                                            width: 80,
                                            margin: const EdgeInsets.only(top: 20),
                                            child: CachedNetworkImage(
                                              imageUrl: "https://microplazatesla.com/vl/images/shopping/8.png",
                                              errorWidget: (_, i, e) {
                                                return Icon(
                                                  FontAwesomeIcons.image,
                                                  size: 40.sp,
                                                  color: Colors.white,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThree5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThree5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 4) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(8, 1);
                                        },
                                        child: Container(
                                          width: 90,
                                          margin: const EdgeInsets.only(top: 20),
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/19.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFour1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFour1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(7, 2);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.only(bottom: 3.h),
                                          child: Container(
                                            width: 80,
                                            child: CachedNetworkImage(
                                              imageUrl: "https://microplazatesla.com/vl/images/shopping/20.png",
                                              errorWidget: (_, i, e) {
                                                return Icon(
                                                  FontAwesomeIcons.image,
                                                  size: 40.sp,
                                                  color: Colors.white,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFour2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFour2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(16, 3);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.only(top: 1.h),
                                          child: SizedBox(
                                            width: 80,
                                            child: CachedNetworkImage(
                                              imageUrl: "https://microplazatesla.com/vl/images/shopping/21.png",
                                              errorWidget: (_, i, e) {
                                                return Icon(
                                                  FontAwesomeIcons.image,
                                                  size: 40.sp,
                                                  color: Colors.white,
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFour3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFour3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 2.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(16, 4);
                                        },
                                        child: Container(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/22.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFour4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFour4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(2, 5);
                                        },
                                        child: Container(
                                          width: 80,
                                          margin: const EdgeInsets.only(top: 5),
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/23.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFour5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFour5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 5) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 10.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 5.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(24, 1);
                                        },
                                        child: Container(
                                          width: 90,
                                          margin: const EdgeInsets.only(top: 20),
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/24.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 1 - 24
                                      Visibility(
                                        visible: cont.lvlFive1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFive1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(45, 2);
                                        },
                                        child: Container(
                                          width: 90,
                                          margin: const EdgeInsets.only(top: 20),
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/45.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 2 - 45
                                      Visibility(
                                        visible: cont.lvlFive2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFive2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(25, 3);
                                        },
                                        child: Container(
                                          width: 70,
                                          margin: const EdgeInsets.only(top: 20),
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/25.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 3 - 25
                                      Visibility(
                                        visible: cont.lvlFive3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFive3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(26, 4);
                                        },
                                        child: Container(
                                          width: 70,
                                          margin: const EdgeInsets.only(top: 20),
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/26.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 4 - 26
                                      Visibility(
                                        visible: cont.lvlFive4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFive4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(16, 5);
                                        },
                                        child: Container(
                                          width: 80,
                                          margin: const EdgeInsets.only(top: 20),
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/16.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 5 - 16
                                      Visibility(
                                        visible: cont.lvlFive5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFive5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(15, 6);
                                        },
                                        child: Container(
                                          width: 80,
                                          margin: const EdgeInsets.only(top: 20),
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/15.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 6 - 15
                                      Visibility(
                                        visible: cont.lvlFive6Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFive6N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(46, 7);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/46.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 7 - 46
                                      Visibility(
                                        visible: cont.lvlFive7Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFive7N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 6) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 16.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(7, 1);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/7.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(30, 2);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/30.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 5.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(2, 3);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/2.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(29, 4);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/29.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(28, 5);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/28.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 6.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(3, 6);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/3.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix6Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix6N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(1, 7);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/1.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix7Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSix7N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 7) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 16.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(34, 1);
                                        },
                                        child: SizedBox(
                                          width: 55,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/34.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(31, 2);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/31.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                              SizedBox(height: 2.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 10.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(36, 3);
                                        },
                                        child: SizedBox(
                                          width: 65,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/36.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(35, 4);
                                        },
                                        child: SizedBox(
                                          width: 60,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/35.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(32, 5);
                                        },
                                        child: SizedBox(
                                          width: 60,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/32.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 2.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(33, 6);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/33.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven6Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven6N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(37, 7);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/37.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven7Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlSeven7N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 8) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 16.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(39, 1);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/39.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 1 - 39
                                      Visibility(
                                        visible: cont.lvlEight1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEight1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(41, 2);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/41.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 2 - 41
                                      Visibility(
                                        visible: cont.lvlEight2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEight2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                              SizedBox(height: 3.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 10.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(31, 3);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/31.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 3 - 31
                                      Visibility(
                                        visible: cont.lvlEight3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEight3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(33, 4);
                                        },
                                        child: SizedBox(
                                          width: 100,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/33.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 4 - 33
                                      Visibility(
                                        visible: cont.lvlEight4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEight4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(40, 5);
                                        },
                                        child: SizedBox(
                                          width: 70,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/40.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 5 - 40
                                      Visibility(
                                        visible: cont.lvlEight5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEight5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 2.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(32, 6);
                                        },
                                        child: SizedBox(
                                          width: 60,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/32.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 6 - 32
                                      Visibility(
                                        visible: cont.lvlEight6Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEight6N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(38, 7);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/38.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 7 - 38
                                      Visibility(
                                        visible: cont.lvlEight7Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEight7N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 9) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 16.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(44, 1);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/44.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 1 - 44
                                      Visibility(
                                        visible: cont.lvlNine1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlNine1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(43, 2);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/43.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 2 - 43
                                      Visibility(
                                        visible: cont.lvlNine2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlNine2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 10.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(17, 3);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/17.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 3 - 17
                                      Visibility(
                                        visible: cont.lvlNine3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlNine3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(42, 4);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/42.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 4 - 42
                                      Visibility(
                                        visible: cont.lvlNine4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlNine4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(8, 5);
                                        },
                                        child: SizedBox(
                                          width: 70,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/8.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 5 - 8
                                      Visibility(
                                        visible: cont.lvlNine5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlNine5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(18, 6);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/18.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 6 - 18
                                      Visibility(
                                        visible: cont.lvlNine6Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlNine6N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(5, 7);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/5.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 7 - 5
                                      Visibility(
                                        visible: cont.lvlNine7Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlNine7N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 10) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 10.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(49, 1);
                                        },
                                        child: SizedBox(
                                          width: 40,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/49.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 1 - 49
                                      Visibility(
                                        visible: cont.lvlTen1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTen1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(6, 2);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/6.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 2 - 6
                                      Visibility(
                                        visible: cont.lvlTen2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTen2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(47, 3);
                                        },
                                        child: SizedBox(
                                          width: 70,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/47.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 3 - 47
                                      Visibility(
                                        visible: cont.lvlTen3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTen3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(51, 4);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/51.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 4 - 51
                                      Visibility(
                                        visible: cont.lvlTen4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTen4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(52, 5);
                                        },
                                        child: SizedBox(
                                          width: 100,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/52.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 5 - 52
                                      Visibility(
                                        visible: cont.lvlTen5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTen5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(50, 6);
                                        },
                                        child: SizedBox(
                                          width: 100,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/50.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 6 - 50
                                      Visibility(
                                        visible: cont.lvlTen6Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTen6N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(48, 7);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/48.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 7 - 48
                                      Visibility(
                                        visible: cont.lvlTen7Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTen7N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 11) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 10.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(53, 1);
                                        },
                                        child: SizedBox(
                                          width: 70,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/53.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 1 - 53
                                      Visibility(
                                        visible: cont.lvlEleven1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEleven1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(55, 2);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/55.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 2 - 55
                                      Visibility(
                                        visible: cont.lvlEleven2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEleven2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(54, 3);
                                        },
                                        child: SizedBox(
                                          width: 70,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/54.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 3 - 54
                                      Visibility(
                                        visible: cont.lvlEleven3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEleven3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(20, 4);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/20.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 4 - 20
                                      Visibility(
                                        visible: cont.lvlEleven4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEleven4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(19, 5);
                                        },
                                        child: SizedBox(
                                          width: 100,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/19.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 5 - 19
                                      Visibility(
                                        visible: cont.lvlEleven5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEleven5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(4, 6);
                                        },
                                        child: SizedBox(
                                          width: 100,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/4.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 6 - 4
                                      Visibility(
                                        visible: cont.lvlEleven6Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEleven6N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(29, 7);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/29.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 7 - 29
                                      Visibility(
                                        visible: cont.lvlEleven7Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlEleven7N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 12) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 10.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(50, 1);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/50.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 1 - 50
                                      Visibility(
                                        visible: cont.lvlTwelve1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwelve1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(57, 2);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/57.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 2 - 57
                                      Visibility(
                                        visible: cont.lvlTwelve2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwelve2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(60, 3);
                                        },
                                        child: SizedBox(
                                          width: 70,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/60.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 3 - 60
                                      Visibility(
                                        visible: cont.lvlTwelve3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwelve3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(59, 4);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/59.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 4 - 59
                                      Visibility(
                                        visible: cont.lvlTwelve4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwelve4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(61, 5);
                                        },
                                        child: SizedBox(
                                          width: 70,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/61.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 5 - 61
                                      Visibility(
                                        visible: cont.lvlTwelve5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwelve5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(58, 6);
                                        },
                                        child: SizedBox(
                                          width: 60,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/58.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 6 - 58
                                      Visibility(
                                        visible: cont.lvlTwelve6Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwelve6N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(56, 7);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/56.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 7 - 56
                                      Visibility(
                                        visible: cont.lvlTwelve7Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlTwelve7N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 13) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 10.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(23, 1);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/23.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 1 - 23
                                      Visibility(
                                        visible: cont.lvlThirteen1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThirteen1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(50, 2);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/50.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 2 - 50
                                      Visibility(
                                        visible: cont.lvlThirteen2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThirteen2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(54, 3);
                                        },
                                        child: SizedBox(
                                          width: 65,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/54.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 3 - 54
                                      Visibility(
                                        visible: cont.lvlThirteen3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThirteen3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(19, 4);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/19.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 4 - 19
                                      Visibility(
                                        visible: cont.lvlThirteen4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThirteen4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(28, 5);
                                        },
                                        child: SizedBox(
                                          width: 70,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/28.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 5 - 28
                                      Visibility(
                                        visible: cont.lvlThirteen5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThirteen5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(20, 6);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/20.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 6 - 20
                                      Visibility(
                                        visible: cont.lvlThirteen6Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThirteen6N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(49, 7);
                                        },
                                        child: SizedBox(
                                          width: 50,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/49.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 7 - 49
                                      Visibility(
                                        visible: cont.lvlThirteen7Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlThirteen7N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 14) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 10.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(26, 1);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/26.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 1 - 26
                                      Visibility(
                                        visible: cont.lvlFourteen1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFourteen1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(1, 2);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/1.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 2 - 1
                                      Visibility(
                                        visible: cont.lvlFourteen2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFourteen2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(62, 3);
                                        },
                                        child: SizedBox(
                                          width: 65,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/62.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 3 - 62
                                      Visibility(
                                        visible: cont.lvlFourteen3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFourteen3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(24, 4);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/24.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 4 - 24
                                      Visibility(
                                        visible: cont.lvlFourteen4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFourteen4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(25, 5);
                                        },
                                        child: SizedBox(
                                          width: 70,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/25.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 5 - 25
                                      Visibility(
                                        visible: cont.lvlFourteen5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFourteen5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                              SizedBox(height: 13.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(15, 6);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/15.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 6 - 15
                                      Visibility(
                                        visible: cont.lvlFourteen6Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFourteen6N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(29, 7);
                                        },
                                        child: SizedBox(
                                          width: 75,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/29.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 7 - 29
                                      Visibility(
                                        visible: cont.lvlFourteen7Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFourteen7N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                            ],
                          );
                        } else if (cont.clevel == 15) {
                          return Column(
                            children: [
                              SizedBox(
                                width: 100.w,
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 10.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(61, 1);
                                        },
                                        child: SizedBox(
                                          width: 65,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/61.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 1 - 61
                                      Visibility(
                                        visible: cont.lvlFiveteen1Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFiveteen1N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(43, 2);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/43.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 2 - 43
                                      Visibility(
                                        visible: cont.lvlFiveteen2Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFiveteen2N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(60, 3);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/60.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 3 - 60
                                      Visibility(
                                        visible: cont.lvlFiveteen3Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFiveteen3N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(62, 4);
                                        },
                                        child: SizedBox(
                                          width: 90,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/62.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 4 - 62
                                      Visibility(
                                        visible: cont.lvlFiveteen4Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFiveteen4N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(5, 5);
                                        },
                                        child: SizedBox(
                                          width: 70,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/5.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 5 - 5
                                      Visibility(
                                        visible: cont.lvlFiveteen5Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFiveteen5N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                              SizedBox(height: 13.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(59, 6);
                                        },
                                        child: SizedBox(
                                          width: 80,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/59.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 6 - 59
                                      Visibility(
                                        visible: cont.lvlFiveteen6Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFiveteen6N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(63, 7);
                                        },
                                        child: SizedBox(
                                          width: 75,
                                          child: CachedNetworkImage(
                                            imageUrl: "https://microplazatesla.com/vl/images/shopping/63.png",
                                            errorWidget: (_, i, e) {
                                              return Icon(
                                                FontAwesomeIcons.image,
                                                size: 40.sp,
                                                color: Colors.white,
                                              );
                                            },
                                          ),
                                        ),
                                      ),                                                              // 7 - 63
                                      Visibility(
                                        visible: cont.lvlFiveteen7Y,
                                        child: Image.asset("assets/images/shopping/yes.png", width: 7.w),
                                      ),
                                      Visibility(
                                        visible: cont.lvlFiveteen7N,
                                        child: Image.asset("assets/images/shopping/no.png", width: 7.w),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8.w),
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
