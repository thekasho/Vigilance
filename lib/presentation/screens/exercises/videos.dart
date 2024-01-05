part of '../screens.dart';

class StdExercisesVideos extends StatefulWidget {
  const StdExercisesVideos({Key? key, required this.level}) : super(key: key);
  final dynamic level;

  @override
  State<StdExercisesVideos> createState() => _StdExercisesVideosState();
}

class _StdExercisesVideosState extends State<StdExercisesVideos> {
  late String link = "https://microplazatesla.com/vl/videos/1.mp4";
  late VlcPlayerController _videoPlayerController;
  bool isPlayed = true;
  bool progress = true;
  bool showControllersVideo = false;
  String position = '';
  String duration = '';
  double sliderValue = 0.0;
  bool validPosition = false;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VlcPlayerController.network(
      link,
      hwAcc: HwAcc.full,
      autoPlay: true,
      autoInitialize: true,
      options: VlcPlayerOptions(),
    );
  }

  @override
  void dispose() async {
    super.dispose();
    await _videoPlayerController.stopRendererScanning();
    await _videoPlayerController.dispose();
    showControllersVideo = false;
  }

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
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${"exercises".tr} 1/3",
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Cairo',
                      fontSize: 25.sp
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 90.w,
                    height: 35.h,
                    color: white,
                    child: VlcPlayer(
                      controller: _videoPlayerController,
                      aspectRatio: 16 / 9,
                      virtualDisplay: true,
                      placeholder: const SizedBox(),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 30.w,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(lightBtn),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: Text(
                        "timer".tr,
                        style: TextStyle(
                            fontSize: 19.sp,
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo'
                        ),
                      ),
                      onPressed: () async {

                      },
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(greenSuccess),
                        shape: MaterialStateProperty.all<
                            RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "next".tr,
                            style: TextStyle(
                              fontSize: 19.sp,
                              color: black,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo'
                            ),
                          ),
                          SizedBox(width: 2.w),
                          SizedBox(
                            width: 20,
                            child: Image.asset("assets/images/arm.png"),
                          ),
                        ],
                      ),
                      onPressed: () async {

                      },
                    ),
                  ),
                  SizedBox(width: 5.w),
                ],
              ),
              SizedBox(height: 5.h),
            ]
          ),
        ),
      ),
    );
  }
}
