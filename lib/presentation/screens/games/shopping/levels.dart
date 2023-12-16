part of '../../screens.dart';

class ShopLevelsScreen extends StatefulWidget {
  const ShopLevelsScreen({super.key});

  @override
  State<ShopLevelsScreen> createState() => _ShopLevelsScreenState();
}

class _ShopLevelsScreenState extends State<ShopLevelsScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(ShoppingGameContImp());
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: yellowBck,
          child: Column(
            children: [
              SizedBox(height: 1.h),
              SizedBox(
                width: 100.w,
                child: Row(
                  children: [
                    Container(
                      width: 11.w,
                      height: 6.h,
                      margin: EdgeInsets.only(
                          left: 2.w
                      ),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SizedBox(
                          height: 11.h,
                          width: 15.w,
                          child: Icon(FontAwesomeIcons.house, size: 21.sp,
                            color: black,),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 11.w,
                      height: 6.h,
                      margin: EdgeInsets.only(
                          right: 2.w
                      ),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: GestureDetector(
                        onTap: () {

                        },
                        child: SizedBox(
                          height: 11.h,
                          width: 15.w,
                          child: Icon(FontAwesomeIcons.question, size: 22.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 19.w,
                child: CachedNetworkImage(
                  imageUrl: "https://pluspng.com/img-png/shopping-png-big-image-png-2036.png",
                  errorWidget: (_, i, e) {
                    return Icon(
                      FontAwesomeIcons.image,
                      size: 40.sp,
                      color: Colors.white,
                    );
                  },
                ),
              ),
              SizedBox(height: 1.h),
              Container(
                alignment: Alignment.center,
                width: 55.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "قائمة التسوق",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              SizedBox(
                height: 67.h,
                child: GetBuilder<ShoppingGameContImp>(builder: (cont) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 1)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 1 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 38.sp,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 2)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 2 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                      fontSize: 38.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 3)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 3 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "3",
                                  style: TextStyle(
                                    fontSize: 38.sp,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 4)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 4 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "4",
                                  style: TextStyle(
                                      fontSize: 38.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 5)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 5 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "5",
                                  style: TextStyle(
                                      fontSize: 38.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 6)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 6 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "6",
                                  style: TextStyle(
                                      fontSize: 38.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 7)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 7 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "7",
                                  style: TextStyle(
                                    fontSize: 38.sp,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 8)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 8 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "8",
                                  style: TextStyle(
                                      fontSize: 38.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 9)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 9 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "9",
                                  style: TextStyle(
                                      fontSize: 38.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 10)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 10 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "10",
                                  style: TextStyle(
                                      fontSize: 38.sp,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 11)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 11 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "11",
                                  style: TextStyle(
                                    fontSize: 38.sp,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 12)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 12 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "12",
                                  style: TextStyle(
                                    fontSize: 38.sp,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 13)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 13 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "13",
                                  style: TextStyle(
                                    fontSize: 38.sp,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 14)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 14 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "14",
                                  style: TextStyle(
                                    fontSize: 38.sp,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.to(() => const ShoppingGameScreen(level: 15)),
                              child: Container(
                                width: 30.w,
                                height: 16.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: cont.level >= 15 ? orangeBtn : lightOrange,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "15",
                                  style: TextStyle(
                                    fontSize: 38.sp,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.h),
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
