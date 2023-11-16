part of '../../screens.dart';

class ShopSelectScreen extends StatefulWidget {
  const ShopSelectScreen({super.key});

  @override
  State<ShopSelectScreen> createState() => _ShopSelectScreenState();
}

class _ShopSelectScreenState extends State<ShopSelectScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: Container(
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
                    Column(
                      children: [
                        SizedBox(
                          width: 100.w,
                          height: 15.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Get.back();
                              },
                              child: SizedBox(
                                child: Image.asset("assets/images/shopping/9.png", width: 12.h),
                              ),
                            ),
                            SizedBox(width: 5.w),
                          ],
                        ),
                        SizedBox(height: 6.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(width: 25.w),
                            GestureDetector(
                              child: SizedBox(
                                child: Image.asset("assets/images/shopping/24.png", width: 12.h),
                              ),
                            ),
                            Spacer(),
                            GestureDetector(
                              child: SizedBox(
                                child: Image.asset("assets/images/shopping/22.png", width: 12.h),
                              ),
                            ),
                            SizedBox(width: 5.w),
                          ],
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 25.w),
                            GestureDetector(
                              child: SizedBox(
                                child: Image.asset("assets/images/shopping/23.png", width: 9.h),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
