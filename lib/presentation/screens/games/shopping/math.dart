part of '../../screens.dart';

class ShopMathScreen extends StatefulWidget {
  const ShopMathScreen({super.key});

  @override
  State<ShopMathScreen> createState() => _ShopMathScreenState();
}

class _ShopMathScreenState extends State<ShopMathScreen> {
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
            color: yellowBck,
            child: Column(
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
                      onTap: (){
                        Get.to(() => const ShopSelectScreen());
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
                      onTap: (){

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
                      onTap: (){

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
                      onTap: (){

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
            ),
          ),
        ),
      ),
    );
  }
}
