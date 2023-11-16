part of '../../screens.dart';

class ShoppingGameScreen extends StatefulWidget {
  const ShoppingGameScreen({Key? key, required this.level}) : super(key: key);
  final dynamic level;

  @override
  State<ShoppingGameScreen> createState() => _ShoppingGameScreenState();
}

class _ShoppingGameScreenState extends State<ShoppingGameScreen> {
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
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const ShopMathScreen());
                          },
                          child: Row(
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
                                child: Image.asset("assets/images/shopping/21.png"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 19.w),
                        GestureDetector(
                          onTap: () {
                            print("Clicked");
                          },
                          child: Row(
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
                                child: Image.asset("assets/images/shopping/9.png"),
                              ),
                            ],
                          ),
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
