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
                              "Level 1",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
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
                              "Level 2",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
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
                              "Level 3",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
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
                              "Level 4",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
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
                              "Level 5",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
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
                              "Level 6",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
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
                              "Level 7",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
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
