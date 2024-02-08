part of '../../screens.dart';

class SpotLevelsScreen extends StatefulWidget {
  const SpotLevelsScreen({super.key});

  @override
  State<SpotLevelsScreen> createState() => _SpotLevelsScreenState();
}

class _SpotLevelsScreenState extends State<SpotLevelsScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(SpotGameContImp());
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: yellowBck,
          child: Column(
            children: [
              SizedBox(
                width: 100.w,
                child: Row(
                  children: [
                    Container(
                      width: 11.w,
                      height: 6.h,
                      margin: EdgeInsets.only(left: 2.w),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: SizedBox(
                          height: 11.h,
                          width: 15.w,
                          child: Icon(
                            FontAwesomeIcons.house,
                            size: 21.sp,
                            color: black,
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 11.w,
                      height: 6.h,
                      margin: EdgeInsets.only(right: 2.w),
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10)),
                      child: GestureDetector(
                        onTap: () {},
                        child: SizedBox(
                          height: 11.h,
                          width: 15.w,
                          child: Icon(FontAwesomeIcons.question, size: 22.sp),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 25.w,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: CachedNetworkImage(
                  imageUrl: "https://microplazatesla.com/vl/images/spot.png",
                  errorWidget: (_, i, e) {
                    return Icon(
                      FontAwesomeIcons.image,
                      size: 13.sp,
                      color: Colors.white,
                    );
                  },
                ),
              ),
              SizedBox(height: 1.h),
              Container(
                alignment: Alignment.center,
                width: 55.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "spot_the_diff".tr,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Cairo',
                  ),
                ),
              ),
              SizedBox(height: 1.h),
              SizedBox(
                height: 67.h,
                child: SingleChildScrollView(
                  child: GetBuilder<SpotGameContImp>(builder: (controller) {
                    if (controller.statusRequest == StatusRequest.loading) {
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
                    } else if (controller.statusRequest ==
                        StatusRequest.success) {
                      return Column(
                        children: [
                          SizedBox(height: 1.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 1)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 1
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "1",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 2)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 2
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "2",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 3)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 3
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "3",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 4)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 4
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "4",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 5)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 5
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "5",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 6)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 6
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "6",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 7)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 6
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "7",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 8)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 8
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "8",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 9)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 9
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "9",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 10)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 10
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "10",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 11)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 11
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "11",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 12)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 12
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "12",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 13)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 13
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "13",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 14)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 14
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "14",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(
                                    () => const SpotGameScreen(level: 15)),
                                child: Container(
                                  width: 30.w,
                                  height: 16.h,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: controller.level >= 15
                                        ? orangeBtn
                                        : lightOrange,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    "15",
                                    style: TextStyle(
                                        fontSize: 38.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.h),
                        ],
                      );
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
            ],
          ),
        ),
      ),
    );
  }
}
