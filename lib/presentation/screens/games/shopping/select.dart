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
                      width: 100.w,
                      height: 96.h,
                      child: SizedBox(
                        child: CachedNetworkImage(
                          imageUrl: "https://microplazatesla.com/vl/images/shopping/selecter.png",
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
                              Stack(
                                children: [
                                  Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.rectangle,
                                    ),
                                    margin: EdgeInsets.only(top: 3.h),
                                    width: 100.w,
                                    child: SizedBox(
                                      child: CachedNetworkImage(
                                        imageUrl: "https://microplazatesla.com/vl/images/shopping/bg.png",
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
                                            // color: black.withOpacity(.6),
                                          ),
                                        ],
                                      ),  // spacer
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Stack(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  cont.saveClicks(2, 1);
                                                },
                                                child: Container(
                                                  margin: const EdgeInsets.only(top: 15, right: 5),
                                                  height: 11.h,
                                                  width: 95.w,
                                                  alignment: Alignment.centerRight,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 5.w,
                                                  ),
                                                  child: CachedNetworkImage(
                                                    imageUrl: "https://microplazatesla.com/vl/images/shopping/2.png",
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
                                              ),
                                              Visibility(
                                                visible: cont.lvlOne1Y,
                                                child: Container(
                                                  margin: const EdgeInsets.only(top: 15, left: 5),
                                                  height: 11.h,
                                                  width: 95.w,
                                                  alignment: Alignment.bottomRight,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15.w,
                                                  ),
                                                  child: CachedNetworkImage(
                                                    imageUrl: "https://microplazatesla.com/vl/images/shopping/yes.png",
                                                    width: 25,
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
                                              Visibility(
                                                visible: cont.lvlOne1N,
                                                child: Container(
                                                  margin: const EdgeInsets.only(top: 15, left: 5),
                                                  height: 11.h,
                                                  width: 95.w,
                                                  alignment: Alignment.bottomRight,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15.w,
                                                  ),
                                                  child: CachedNetworkImage(
                                                    imageUrl: "https://microplazatesla.com/vl/images/shopping/no.png",
                                                    width: 25,
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
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Stack(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  cont.saveClicks(17, 2);
                                                },
                                                child: Container(
                                                  margin: const EdgeInsets.only(top: 15, right: 5),
                                                  height: 11.h,
                                                  width: 95.w,
                                                  alignment: Alignment.centerRight,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 5.w,
                                                  ),
                                                  child: CachedNetworkImage(
                                                    imageUrl: "https://microplazatesla.com/vl/images/shopping/17.png",
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
                                              ),
                                              Visibility(
                                                visible: cont.lvlOne2Y,
                                                child: Container(
                                                  margin: const EdgeInsets.only(top: 15, left: 5),
                                                  height: 11.h,
                                                  width: 95.w,
                                                  alignment: Alignment.bottomRight,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15.w,
                                                  ),
                                                  child: CachedNetworkImage(
                                                    imageUrl: "https://microplazatesla.com/vl/images/shopping/yes.png",
                                                    width: 25,
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
                                              Visibility(
                                                visible: cont.lvlOne2N,
                                                child: Container(
                                                  margin: const EdgeInsets.only(top: 15, left: 5),
                                                  height: 11.h,
                                                  width: 95.w,
                                                  alignment: Alignment.bottomRight,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15.w,
                                                  ),
                                                  child: CachedNetworkImage(
                                                    imageUrl: "https://microplazatesla.com/vl/images/shopping/no.png",
                                                    width: 25,
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
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Stack(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  cont.saveClicks(17, 3);
                                                },
                                                child: Container(
                                                  margin: const EdgeInsets.only(top: 15, right: 5),
                                                  height: 14.h,
                                                  width: 95.w,
                                                  alignment: Alignment.centerRight,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 5.w,
                                                  ),
                                                  child: CachedNetworkImage(
                                                    imageUrl: "https://microplazatesla.com/vl/images/shopping/18.png",
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
                                              ),
                                              Visibility(
                                                visible: cont.lvlOne3N,
                                                child: Container(
                                                  margin: const EdgeInsets.only(top: 15, left: 5),
                                                  height: 11.h,
                                                  width: 95.w,
                                                  alignment: Alignment.bottomRight,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15.w,
                                                  ),
                                                  child: CachedNetworkImage(
                                                    imageUrl: "https://microplazatesla.com/vl/images/shopping/yes.png",
                                                    width: 25,
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
                                              Visibility(
                                                visible: cont.lvlOne3Y,
                                                child: Container(
                                                  margin: const EdgeInsets.only(top: 15, left: 5),
                                                  height: 11.h,
                                                  width: 95.w,
                                                  alignment: Alignment.bottomRight,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15.w,
                                                  ),
                                                  child: CachedNetworkImage(
                                                    imageUrl: "https://microplazatesla.com/vl/images/shopping/no.png",
                                                    width: 25,
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
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 23),
                                            height: 11.h,
                                            width: 100.w,
                                            alignment: Alignment.centerRight,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 5.w,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 15),
                                            height: 11.h,
                                            width: 100.w,
                                            alignment: Alignment.centerLeft,
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 5.w,
                                            ),
                                            child: CachedNetworkImage(
                                              imageUrl: "https://microplazatesla.com/vl/images/shopping/2.png",
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
                                        ],
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
                                  Stack(
                                    alignment: AlignmentDirectional.bottomStart,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          cont.saveClicks(8, 1);
                                        },
                                        child: Image.asset("assets/images/shopping/8.png", width: 12.h),
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
                                          child: Image.asset("assets/images/shopping/7.png", width: 12.h),
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
                                          child: Image.asset("assets/images/shopping/16.png", width: 14.h),
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
                              SizedBox(height: 4.h),
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
                                        child: Image.asset("assets/images/shopping/18.png", width: 12.h),
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
                                        child: Image.asset("assets/images/shopping/2.png", width: 14.h),
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
                                height: 15.h,
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
                                          cont.saveClicks(5, 1);
                                        },
                                        child: Image.asset("assets/images/shopping/5.png", width: 12.h),
                                      ),
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
                                          cont.saveClicks(29, 2);
                                        },
                                        child: Image.asset("assets/images/shopping/29.png", width: 12.h),
                                      ),
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
                                          cont.saveClicks(1, 3);
                                        },
                                        child: Image.asset("assets/images/shopping/1.png", width: 12.h),
                                      ),
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
                                          cont.saveClicks(6, 4);
                                        },
                                        child: Image.asset("assets/images/shopping/6.png", width: 12.h),
                                      ),
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
                                          cont.saveClicks(26, 5);
                                        },
                                        child: Image.asset("assets/images/shopping/26.png", width: 14.h),
                                      ),
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
                                          cont.saveClicks(4, 6);
                                        },
                                        child: Image.asset("assets/images/shopping/4.png", width: 12.h),
                                      ),
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
                                          cont.saveClicks(20, 7);
                                        },
                                        child: Image.asset("assets/images/shopping/20.png", width: 11.h),
                                      ),
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
