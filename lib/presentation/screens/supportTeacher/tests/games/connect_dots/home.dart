part of '../../../../screens.dart';

class StdConnectDotsGameScreen extends StatefulWidget {
  const StdConnectDotsGameScreen({Key? key, required this.level})
      : super(key: key);
  final dynamic level;

  @override
  State<StdConnectDotsGameScreen> createState() =>
      _StdConnectDotsGameScreenState();
}

class _StdConnectDotsGameScreenState extends State<StdConnectDotsGameScreen> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: yellowBck,
          child: Column(
            children: [
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 90.w,
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
                    child: Text(
                      "${"level".tr} 1",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onPanUpdate: (details) async {
                      Offset pos = details.globalPosition;
                      print("$pos");
                      if(pos == Offset(153.6, 642.7)){
                        Vibrate.vibrate();
                      }
                      print("${details.globalPosition} 1");
                      print("ok");
                    },
                    child: Container(
                      width: 45.w,
                      height: 87.h,
                      margin: EdgeInsets.only(left: 5.w),
                      color: white.withOpacity(.2),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onPanUpdate: (details) async {
                            // bool canVibrate = await Vibrate.canVibrate;
                            // Vibrate.vibrate();
                            // print("$canVibrate 1");
                            // print("$details 1");
                            // print("ok");
                          },
                          child: Container(
                            height: 20,
                            width: 30.w,
                            clipBehavior: Clip.antiAlias,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: connectDotsC,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 25),
                            Container(
                              height: 110,
                              width: 70,
                              decoration: const BoxDecoration(
                                border: DashedBorder(
                                  strokeCap: StrokeCap.round,
                                  dashLength: 5,
                                  left: BorderSide(color: Colors.black, width: 2),
                                  top: BorderSide(color: Colors.black, width: 2),
                                  bottom: BorderSide(color: Colors.black, width: 2),
                                  right: BorderSide(color: Colors.transparent, width: 2),
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: connectDotsC,
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 25),
                            Container(
                              height: 110,
                              width: 70,
                              decoration: const BoxDecoration(
                                border: DashedBorder(
                                  strokeCap: StrokeCap.round,
                                  dashLength: 5,
                                  left: BorderSide(color: Colors.black, width: 2),
                                  top: BorderSide(color: Colors.black, width: 2),
                                  bottom: BorderSide(color: Colors.black, width: 2),
                                  right: BorderSide(color: Colors.transparent, width: 2),
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: connectDotsC,
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 25),
                            Container(
                              height: 110,
                              width: 70,
                              decoration: const BoxDecoration(
                                border: DashedBorder(
                                  strokeCap: StrokeCap.round,
                                  dashLength: 5,
                                  left: BorderSide(color: Colors.black, width: 2),
                                  top: BorderSide(color: Colors.black, width: 2),
                                  bottom: BorderSide(color: Colors.black, width: 2),
                                  right: BorderSide(color: Colors.transparent, width: 2),
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: connectDotsC,
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 25),
                            Container(
                              height: 110,
                              width: 70,
                              decoration: const BoxDecoration(
                                border: DashedBorder(
                                  strokeCap: StrokeCap.round,
                                  dashLength: 5,
                                  left: BorderSide(color: Colors.black, width: 2),
                                  top: BorderSide(color: Colors.black, width: 2),
                                  bottom: BorderSide(color: Colors.black, width: 2),
                                  right: BorderSide(color: Colors.transparent, width: 2),
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: connectDotsC,
                          ),
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 25),
                            Container(
                              height: 110,
                              width: 70,
                              decoration: const BoxDecoration(
                                border: DashedBorder(
                                  strokeCap: StrokeCap.round,
                                  dashLength: 5,
                                  left: BorderSide(color: Colors.black, width: 2),
                                  top: BorderSide(color: Colors.black, width: 2),
                                  bottom: BorderSide(color: Colors.black, width: 2),
                                  right: BorderSide(color: Colors.transparent, width: 2),
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 15,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: connectDotsC,
                          ),
                        ),
                      ],
                    ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 45.w,
                    height: 87.h,
                    margin: EdgeInsets.only(right: 5.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: greenSuccess,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 110,
                              width: 70,
                              decoration: const BoxDecoration(
                                border: DashedBorder(
                                  strokeCap: StrokeCap.round,
                                  dashLength: 5,
                                  left: BorderSide(color: Colors.transparent, width: 2),
                                  top: BorderSide(color: Colors.black, width: 2),
                                  bottom: BorderSide(color: Colors.black, width: 2),
                                  right: BorderSide(color: Colors.black, width: 2),
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                            ),
                            const SizedBox(width: 25),
                          ],
                        ),
                        Container(
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: greenSuccess,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 110,
                              width: 70,
                              decoration: const BoxDecoration(
                                border: DashedBorder(
                                  strokeCap: StrokeCap.round,
                                  dashLength: 5,
                                  left: BorderSide(color: Colors.transparent, width: 2),
                                  top: BorderSide(color: Colors.black, width: 2),
                                  bottom: BorderSide(color: Colors.black, width: 2),
                                  right: BorderSide(color: Colors.black, width: 2),
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                            ),
                            const SizedBox(width: 25),
                          ],
                        ),
                        Container(
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: greenSuccess,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 110,
                              width: 70,
                              decoration: const BoxDecoration(
                                border: DashedBorder(
                                  strokeCap: StrokeCap.round,
                                  dashLength: 5,
                                  left: BorderSide(color: Colors.transparent, width: 2),
                                  top: BorderSide(color: Colors.black, width: 2),
                                  bottom: BorderSide(color: Colors.black, width: 2),
                                  right: BorderSide(color: Colors.black, width: 2),
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                            ),
                            const SizedBox(width: 25),
                          ],
                        ),
                        Container(
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: greenSuccess,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 110,
                              width: 70,
                              decoration: const BoxDecoration(
                                border: DashedBorder(
                                  strokeCap: StrokeCap.round,
                                  dashLength: 5,
                                  left: BorderSide(color: Colors.transparent, width: 2),
                                  top: BorderSide(color: Colors.black, width: 2),
                                  bottom: BorderSide(color: Colors.black, width: 2),
                                  right: BorderSide(color: Colors.black, width: 2),
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                            ),
                            const SizedBox(width: 25),
                          ],
                        ),
                        Container(
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: greenSuccess,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 110,
                              width: 70,
                              decoration: const BoxDecoration(
                                border: DashedBorder(
                                  strokeCap: StrokeCap.round,
                                  dashLength: 5,
                                  left: BorderSide(color: Colors.transparent, width: 2),
                                  top: BorderSide(color: Colors.black, width: 2),
                                  bottom: BorderSide(color: Colors.black, width: 2),
                                  right: BorderSide(color: Colors.black, width: 2),
                                ),
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomRight: Radius.circular(50),
                                ),
                              ),
                            ),
                            const SizedBox(width: 25),
                          ],
                        ),
                        Container(
                          height: 20,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: greenSuccess,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}