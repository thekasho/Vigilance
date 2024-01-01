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
            actionsAlignment: MainAxisAlignment.start,
            title: Text(
              'close_app_confirm'.tr,
              textAlign: TextAlign.end,
              style: TextStyle(fontFamily: 'Cairo',
                color: red,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp
              ),
            ),
            content: Text(
              "are_you_sure".tr,
              textAlign: TextAlign.end,
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
                child: Text(
                  'no'.tr,
                  style: const TextStyle(
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
                child: Text(
                  'yes'.tr,
                  style: const TextStyle(
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
    Get.put(ShoppingContImp());
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
                      child: GetBuilder<ShoppingContImp>(builder: (cont) {
                        return CachedNetworkImage(
                          imageUrl: cont.image,
                          errorWidget: (_, i, e) {
                            return Icon(
                              FontAwesomeIcons.image,
                              size: 13.sp,
                              color: Colors.white,
                            );
                          },
                        );
                      }),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 45.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: orangeBtn,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GetBuilder<ShoppingContImp>(builder: (controller) {
                        return Text(
                          "${"points".tr}: ${controller.points}",
                          style: TextStyle(
                              color: white,
                              fontSize: 19.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Cairo'
                          ),
                        );
                      }),
                    ),
                    GetBuilder<StdHomeContImp>(builder: (controller) {
                      return Container(
                        alignment: Alignment.centerLeft,
                        width: 17.w,
                        child: DropdownButton(
                          underline: const SizedBox(),
                          icon: Icon(Icons.table_rows_sharp, size: 25.sp),
                          iconEnabledColor: black,
                          isExpanded: false,
                          borderRadius: BorderRadius.circular(10),
                          items: [
                            const DropdownMenuItem(
                              value: 0,
                              alignment: Alignment.center,
                              child: Icon(Icons.shopping_cart),
                            ),
                            const DropdownMenuItem(
                              value: 1,
                              alignment: Alignment.center,
                              child: Icon(Icons.settings),
                            ),
                            DropdownMenuItem(
                              alignment: Alignment.center,
                              value: 2,
                              onTap: () {
                                controller.logOut();
                              },
                              child: const Icon(Icons.logout_sharp),
                            ),
                          ],
                          onChanged: (value) {
                            if (value == 0) {
                              Get.toNamed(screenShoppingStd);
                            } else if(value == 1){
                              Get.toNamed(screenSettings);
                            }
                          },
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
                                onTap: () {
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
                                        "studying".tr,
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
                                onTap: () {
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
                                        "games".tr,
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
                                onTap: () {
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
                                        "teacher".tr,
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
                                onTap: () {
                                  Get.toNamed(screenStdMeditate);
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
                                        "meditation".tr,
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(screenStdExercisesLevels);
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
                                        width: 35.w,
                                        child: CachedNetworkImage(
                                          imageUrl: "https://microplazatesla.com/vl/images/exercises.png",
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
                                        "exercises".tr,
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
