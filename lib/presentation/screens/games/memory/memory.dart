part of '../../screens.dart';

class MemoryGameScreen extends StatefulWidget {
  const MemoryGameScreen({Key? key, required this.level}) : super(key: key);
  final dynamic level;

  @override
  State<MemoryGameScreen> createState() => _MemoryGameScreenState();
}

class _MemoryGameScreenState extends State<MemoryGameScreen> {
  MemoryGameContImp memoryGameContImp = Get.put(MemoryGameContImp());

  Future<void> updateClevel() async {
    memoryGameContImp.clevel = widget.level;
    memoryGameContImp.checkCanAccess();
  }

  @override
  void initState() {
    updateClevel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(MemoryGameContImp());
    return WillPopScope(
      onWillPop: () async {
        await memoryGameContImp.getLevel();
        Get.back();
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: yellowBck,
            child: GetBuilder<MemoryGameContImp>(builder: (cont) {
              if(cont.statusRequest == StatusRequest.loading){
                return Container(
                  color: yellowBck,
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
                if(cont.clevel == 1){
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/1.wav"));

                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                        color: white.withOpacity(.5)
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                        color: white.withOpacity(.5),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 2){
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 3){
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 4){
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 5) {
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 6) {
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                    vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 7) {
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                  fontSize: 19.sp,
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 8) {
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                              "Level 8",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 9) {
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                              "Level 9",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 10) {
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                              "Level 10",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 11) {
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                              "Level 11",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 12) {
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                              "Level 12",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 13) {
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                              "Level 13",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 14) {
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                              "Level 14",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                } else if (cont.clevel == 15) {
                  return Column(
                    children: [
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 60.w,
                            height: 8.h,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: yellow,
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
                              "Level 15",
                              style: TextStyle(
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: red,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/1.wav"));
                                  cont.saveClicks(1);
                                },
                                child: Opacity(
                                  opacity: cont.lvlOneOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: red.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: greenSuccess,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/2.wav"));
                                  cont.saveClicks(2);
                                },
                                child: Opacity(
                                  opacity: cont.lvlTwoOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: greenSuccess.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          const Spacer(),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/3.wav"));
                                  cont.saveClicks(3);
                                },
                                child: Opacity(
                                  opacity: cont.lvlThreeOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: Colors.blue.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 4.w),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                width: 45.w,
                                height: 27.h,
                                decoration: BoxDecoration(
                                  color: hardYellow,
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
                              ),
                              GestureDetector(
                                onTap: () async {
                                  final audioPlayer = AudioPlayer();
                                  await audioPlayer.play(
                                      AssetSource("sounds/4.wav"));
                                  cont.saveClicks(4);
                                },
                                child: Opacity(
                                  opacity: cont.lvlFourOp,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 45.w,
                                    height: 27.h,
                                    decoration: BoxDecoration(
                                      color: white.withOpacity(0.4),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Container(
                                      width: 37.w,
                                      height: 23.h,
                                      decoration: BoxDecoration(
                                        color: hardYellow.withOpacity(0.7),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.star_border, size: 50.sp,
                                          color: white.withOpacity(.5)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 60.w,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(
                                    darkRed),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.symmetric(
                                      vertical: 1.h
                                  ),
                                ),
                              ),
                              child: Text(
                                "Start",
                                style: TextStyle(
                                    fontSize: 19.sp,
                                    color: white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Cairo'
                                ),
                              ),
                              onPressed: () async {
                                await cont.playAns();
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }
              }
              return Container(
                color: yellowBck,
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
