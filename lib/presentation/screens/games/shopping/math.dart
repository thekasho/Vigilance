part of '../../screens.dart';

class ShopMathScreen extends StatefulWidget {
  const ShopMathScreen({Key? key, required this.level}) : super(key: key);
  final dynamic level;

  @override
  State<ShopMathScreen> createState() => _ShopMathScreenState();
}

class _ShopMathScreenState extends State<ShopMathScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(ShoppingGameContImp());
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        Get.back();
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: yellowBck,
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
              if(cont.statusRequest == StatusRequest.success){
                if (cont.clevel == 1) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 1",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "0 + 2 = ?",
                              style: TextStyle(
                                  fontSize: 32.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(2);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(0);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(1);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(4);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "4",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 2) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 2",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "1 + 1 = ?",
                              style: TextStyle(
                                fontSize: 32.sp,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(1);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(5);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(0);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "0",
                                style: TextStyle(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(2);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 3) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 3",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "1 + 2 = ?",
                              style: TextStyle(
                                fontSize: 32.sp,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(3);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "3",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(1);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "1",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(2);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(6);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 4) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 4",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "2 + 2 = ?",
                              style: TextStyle(
                                fontSize: 32.sp,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(4);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "4",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(8);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "8",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(5);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "5",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(2);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 5) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 5",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "6 + 1 = ?",
                              style: TextStyle(
                                  fontSize: 29.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(0);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "0",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(6);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(7);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "7",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(2);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 6) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 6",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "2 + 3 = ?",
                              style: TextStyle(
                                  fontSize: 29.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(8);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "8",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(6);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(5);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "5",
                                style: TextStyle(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(7);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "7",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 7) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 7",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "3 + 3 = ?",
                              style: TextStyle(
                                  fontSize: 29.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(9);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(6);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(10);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "10",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(4);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "4",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 8) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 8",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "7 + 2 = ?",
                              style: TextStyle(
                                  fontSize: 29.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(9);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(8);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "8",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(2);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "2",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(11);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "11",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 9) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 9",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "4 + 4 = ?",
                              style: TextStyle(
                                  fontSize: 29.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(4);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "4",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(7);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "7",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(12);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "12",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(8);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "8",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 10) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 10",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "5 + 4 = ?",
                              style: TextStyle(
                                  fontSize: 29.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(11);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "11",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(9);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(8);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "8",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(15);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "15",
                                style: TextStyle(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 11) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 11",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "9 + 3 = ?",
                              style: TextStyle(
                                  fontSize: 29.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(9);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "9",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(19);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "19",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(10);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "10",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(12);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "12",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 12) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 12",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "6 + 4 = ?",
                              style: TextStyle(
                                fontSize: 29.sp,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(11);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "11",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(6);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "6",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(10);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "10",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(4);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "4",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 13) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 13",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "10 + 2 = ?",
                              style: TextStyle(
                                  fontSize: 29.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(12);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "12",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(8);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "8",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(14);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "14",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(15);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "15",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 14) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 14",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "12 + 2 = ?",
                              style: TextStyle(
                                  fontSize: 29.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(19);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "19",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(16);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "16",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(14);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "14",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(15);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "15",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 15) {
                  return Column(
                    children: [
                      SizedBox(height: 3.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 6.h,
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
                                vertical: .5.h
                            ),
                            child: Text(
                              "${"level".tr} 15",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 6.h),
                      Row(
                        children: [
                          Container(
                            width: 100.w,
                            alignment: Alignment.center,
                            child: Text(
                              "10 + 8 = ?",
                              style: TextStyle(
                                  fontSize: 29.sp,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(19);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "19",
                                style: TextStyle(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(16);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "16",
                                style: TextStyle(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(18);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "18",
                                style: TextStyle(
                                    fontSize: 35.sp,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(15);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 23.h,
                              decoration: BoxDecoration(
                                color: orangeBtn,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Text(
                                "15",
                                style: TextStyle(
                                  fontSize: 35.sp,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
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
        ),
      ),
    );
  }
}
