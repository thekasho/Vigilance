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
                    Container(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        height: 96.h,
                        child: Image.asset("assets/images/shopping/lift.jpeg"),
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
                                        child: Image.asset("assets/images/shopping/9.png", width: 12.h),
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
                                        child: Image.asset("assets/images/shopping/24.png", width: 12.h, height: 14.h),
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
                                        child: Image.asset("assets/images/shopping/22.png", width: 12.h),
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
                                        child: Image.asset("assets/images/shopping/21.png", width: 9.h, height: 15.h,),
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
                                        child: Image.asset("assets/images/shopping/25.png", width: 12.h),
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
                                        child: Image.asset("assets/images/shopping/27.png", width: 10.h),
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
                                        child: Image.asset("assets/images/shopping/10.png", width: 12.h),
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
                                        child: Image.asset("assets/images/shopping/28.png", width: 14.h),
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
                                        child: Image.asset("assets/images/shopping/15.png", width: 12.h, height: 11.h,),
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
                                        child: Image.asset("assets/images/shopping/13.png", width: 12.h),
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
                              SizedBox(height: 9.h),
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
                                        child: Image.asset("assets/images/shopping/3.png", width: 12.h),
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
                                        child: Image.asset("assets/images/shopping/14.png", width: 12.h),
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
                              SizedBox(height: 4.h),
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
                                          child: Image.asset("assets/images/shopping/12.png", width: 9.h),
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
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Get.back();
                                    },
                                    child: Image.asset("assets/images/shopping/8.png", width: 12.h),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.only(bottom: 3.h),
                                      child: Image.asset("assets/images/shopping/7.png", width: 12.h),
                                    ),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    child: Container(
                                      padding: EdgeInsets.only(top: 1.h),
                                      child: Image.asset("assets/images/shopping/16.png", width: 14.h),
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 4.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  GestureDetector(
                                    child: Image.asset("assets/images/shopping/18.png", width: 12.h),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    child: Image.asset("assets/images/shopping/2.png", width: 14.h),
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
                                height: 15.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 5.w),
                                  GestureDetector(
                                    child: Image.asset("assets/images/shopping/5.png", width: 12.h),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    child: Image.asset("assets/images/shopping/29.png", width: 12.h),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    child: Image.asset("assets/images/shopping/1.png", width: 12.h),
                                  ),
                                  SizedBox(width: 5.w),
                                ],
                              ),
                              SizedBox(height: 8.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  GestureDetector(
                                    child: Image.asset("assets/images/shopping/6.png", width: 12.h),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    child: Image.asset("assets/images/shopping/26.png", width: 14.h),
                                  ),
                                  SizedBox(width: 8.w),
                                ],
                              ),
                              SizedBox(height: 6.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(width: 16.w),
                                  GestureDetector(
                                    child: Image.asset("assets/images/shopping/4.png", width: 12.h),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    child: Image.asset("assets/images/shopping/20.png", width: 11.h),
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
