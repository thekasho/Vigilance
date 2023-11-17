part of '../../screens.dart';

class StdHomeScreen extends StatefulWidget {
  const StdHomeScreen({super.key});

  @override
  State<StdHomeScreen> createState() => _StdHomeScreenState();
}

class _StdHomeScreenState extends State<StdHomeScreen> {
  StdHomeContImp stdHomeContImp = Get.put(StdHomeContImp());

  Future<bool> showExitPopup() async {
    return await showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            actionsPadding: const EdgeInsets.all(10),
            buttonPadding: const EdgeInsets.all(5),
            titlePadding: const EdgeInsets.symmetric(
                vertical: 0,
                horizontal: 20
            ),
            contentPadding: const EdgeInsets.only(
                top: 10,
                bottom: 0,
                left: 20,
                right: 20
            ),
            title: Text(
              'Close App',
              style: TextStyle(fontFamily: 'Cairo',
                  color: red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp),
            ),
            content: Text(
              "Are You Sure ?!",
              style: TextStyle(
                fontSize: 18.sp,
                fontFamily: "Cairo",
              ),
            ),
            backgroundColor: white,
            actions: [
              MaterialButton(
                focusElevation: 10,
                color: Colors.grey.shade300,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text(
                  'No',
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                      color: black
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(false),
              ),
              MaterialButton(
                focusElevation: 10,
                color: redLight,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: const Text(
                  'Yes',
                  style: TextStyle(
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                      color: black
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(true),
              ),
            ],
          ),
    ) ??
        false;
  }

  Future<void> checkAuth() async {
    await stdHomeContImp.checkAuth();
  }

  @override
  void initState() {
    checkAuth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(StdHomeContImp());
    return WillPopScope(
      onWillPop: () async {
        return showExitPopup();
      },
      child: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            color: yellowBck,
            padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 15.w,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle
                      ),
                      child: CachedNetworkImage(
                        imageUrl: "https://th.bing.com/th/id/OIP.KEJaw671I5WYuftNN0IOZAHaHa?w=196&h=196&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                        errorWidget: (_, i, e) {
                          return Icon(
                            FontAwesomeIcons.image,
                            size: 13.sp,
                            color: Colors.white,
                          );
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 45.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: orangeBtn,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GetBuilder<StdHomeContImp>(builder: (controller) {
                        return Text(
                          "Points: ${controller.points}",
                          style: TextStyle(
                            color: white,
                            fontSize: 21.sp,
                          ),
                        );
                      }),
                    ),
                    GetBuilder<StdHomeContImp>(builder: (controller) {
                      return GestureDetector(
                        onTap: () {
                          controller.logOut();
                        },
                        child: Icon(
                          Icons.exit_to_app,
                          color: orange,
                          size: 27.sp
                        ),
                      );
                    }),
                  ],
                ),
                SizedBox(height: 2.h),
                SizedBox(
                  height: 83.h,
                  child: RefreshIndicator(
                    onRefresh: () async {
                      await stdHomeContImp.checkAuth();
                      stdHomeContImp.update();
                    },
                    backgroundColor: white,
                    color: orange,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Get.toNamed(screenStudyHome);
                                },
                                child: Container(
                                  width: 42.w,
                                  height: 22.h,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                        spreadRadius: 2,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 10,
                                        ),
                                        width: 22.w,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle
                                        ),
                                        child: CachedNetworkImage(
                                          imageUrl: "https://th.bing.com/th/id/OIP.3t2E0odfjMxgT_RwPIf1mQAAAA?pid=ImgDet&w=149&h=151&c=7&dpr=1.3",
                                          errorWidget: (_, i, e) {
                                            return Icon(
                                              FontAwesomeIcons.image,
                                              size: 13.sp,
                                              color: Colors.white,
                                            );
                                          },
                                        ),
                                      ),
                                      Text(
                                        "Studying",
                                        style: TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: 20.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Get.toNamed(screenGamesHome);
                                },
                                child: Container(
                                  width: 42.w,
                                  height: 22.h,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                        spreadRadius: 2,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 10,
                                        ),
                                        width: 22.w,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle
                                        ),
                                        child: CachedNetworkImage(
                                          imageUrl: "https://th.bing.com/th/id/OIP.c9oh-nlPJ_h6lctTLVMcFwHaHM?pid=ImgDet&rs=1",
                                          errorWidget: (_, i, e) {
                                            return Icon(
                                              FontAwesomeIcons.image,
                                              size: 13.sp,
                                              color: Colors.white,
                                            );
                                          },
                                        ),
                                      ),
                                      Text(
                                        "Games",
                                        style: TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: 20.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Get.toNamed(screenTeacherHome);
                                },
                                child: Container(
                                  width: 42.w,
                                  height: 22.h,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                        spreadRadius: 2,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 10,
                                        ),
                                        width: 22.w,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle
                                        ),
                                        child: CachedNetworkImage(
                                          imageUrl: "https://th.bing.com/th/id/OIP.NnSZ-PGdRmTcQ8x2uzNlAgAAAA?w=263&h=185&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                                          errorWidget: (_, i, e) {
                                            return Icon(
                                              FontAwesomeIcons.image,
                                              size: 13.sp,
                                              color: Colors.white,
                                            );
                                          },
                                        ),
                                      ),
                                      Text(
                                        "Support teacher",
                                        style: TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: 20.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Get.toNamed(screenStdLogin);
                                },
                                child: Container(
                                  width: 42.w,
                                  height: 22.h,
                                  decoration: BoxDecoration(
                                    color: white,
                                    borderRadius: BorderRadius.circular(20),
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x33000000),
                                        offset: Offset(0, 2),
                                        spreadRadius: 2,
                                      )
                                    ],
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                          vertical: 10,
                                        ),
                                        width: 22.w,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle
                                        ),
                                        child: CachedNetworkImage(
                                          imageUrl: "https://th.bing.com/th/id/OIP.BDSsIfDjgj0s3QL3rWaVuAHaHa?w=174&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7",
                                          errorWidget: (_, i, e) {
                                            return Icon(
                                              FontAwesomeIcons.image,
                                              size: 13.sp,
                                              color: Colors.white,
                                            );
                                          },
                                        ),
                                      ),
                                      Text(
                                        "Meditation",
                                        style: TextStyle(
                                          fontFamily: 'Cairo',
                                          fontSize: 20.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
