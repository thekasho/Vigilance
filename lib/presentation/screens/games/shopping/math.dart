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
                              "46 + 12 = ?",
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
                              cont.submitMathAns(58);
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
                                "58",
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
                              cont.submitMathAns(53);
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
                                "53",
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
                              cont.submitMathAns(61);
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
                                "61",
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
                              cont.submitMathAns(72);
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
                                "72",
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
                              "56 + 24 = ?",
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
                              cont.submitMathAns(69);
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
                                "69",
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
                              cont.submitMathAns(78);
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
                                "78",
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
                              cont.submitMathAns(82);
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
                                "82",
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
                              cont.submitMathAns(80);
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
                                "80",
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
                              "70 - 36 = ?",
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
                              cont.submitMathAns(34);
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
                                "34",
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
                              cont.submitMathAns(17);
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
                                "17",
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
                              cont.submitMathAns(26);
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
                                "26",
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
                              cont.submitMathAns(30);
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
                                "30",
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
                              "48 - 26 = ?",
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
                              cont.submitMathAns(25);
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
                                "25",
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
                              cont.submitMathAns(22);
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
                                "22",
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
                              cont.submitMathAns(31);
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
                                "31",
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
                              "15 - 4 + 7 = ?",
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
                              cont.submitMathAns(20);
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
                                "20",
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
                              "17 + 3 - 9 = ?",
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
                              cont.submitMathAns(34);
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
                                "34",
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
                              cont.submitMathAns(20);
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
                                "20",
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
                              "20 + 8 - 14 = ?",
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
                              cont.submitMathAns(30);
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
                                "30",
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
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              cont.submitMathAns(20);
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
                                "20",
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
                              "31 - 4 + 4 = ?",
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
                              cont.submitMathAns(27);
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
                                "27",
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
                              cont.submitMathAns(40);
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
                                "40",
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
                              cont.submitMathAns(31);
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
                                "31",
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
                              cont.submitMathAns(29);
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
                                "29",
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
                              "14 + 15 - 2 = ?",
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
                              cont.submitMathAns(29);
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
                                "29",
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
                              cont.submitMathAns(30);
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
                                "30",
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
                              cont.submitMathAns(27);
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
                                "27",
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
                              "20 + 8 - 14 = ?",
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
                              cont.submitMathAns(30);
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
                                "30",
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
                              "40 + 80 - 14 = ?",
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
                              cont.submitMathAns(110);
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
                                "110",
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
                              cont.submitMathAns(120);
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
                                "120",
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
                              cont.submitMathAns(20);
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
                                "20",
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
                              cont.submitMathAns(106);
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
                                "106",
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
                              "90 + 11 - 8 = ?",
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
                              cont.submitMathAns(101);
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
                                "101",
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
                              cont.submitMathAns(160);
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
                                "160",
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
                              cont.submitMathAns(93);
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
                                "93",
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
                              cont.submitMathAns(108);
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
                                "108",
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
                              "19 + 10 - 45 = ?",
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
                              cont.submitMathAns(54);
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
                                "54",
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
                              cont.submitMathAns(90);
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
                                "90",
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
                              cont.submitMathAns(86);
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
                                "86",
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
                              "40 + 8 - 25 = ?",
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
                              cont.submitMathAns(22);
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
                                "22",
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
                              cont.submitMathAns(23);
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
                                "23",
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
                              cont.submitMathAns(41);
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
                                "41",
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
                              "200 - 92 + 50 = ?",
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
                              cont.submitMathAns(219);
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
                                "219",
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
                              cont.submitMathAns(158);
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
                                "158",
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
                              cont.submitMathAns(41);
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
                                "41",
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
