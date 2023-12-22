part of '../../screens.dart';

class StdToDoScreen extends StatefulWidget {
  const StdToDoScreen({super.key});

  @override
  State<StdToDoScreen> createState() => _StdToDoScreenState();
}

class _StdToDoScreenState extends State<StdToDoScreen> {
  StdToDoContImp stdToDoContImp = Get.put(StdToDoContImp());

  @override
  Widget build(BuildContext context) {
    Get.put(StdToDoContImp());
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: lightGrey,
          child: Column(
            children: [
              Container(
                color: yellow,
                height: 11.h,
                width: 100.w,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: SizedBox(
                        height: 11.h,
                        width: 15.w,
                        child: Icon(FontAwesomeIcons.chevronLeft, size: 23.sp),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      height: 11.h,
                      width: 55.w,
                      alignment: Alignment.center,
                      child: Text(
                        "tasks".tr,
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        stdToDoContImp.getImages();
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          context: context,
                          builder: (context) {
                            return Container(
                              height: 70.h,
                              padding: EdgeInsets.only(
                                top: 3.h
                              ),
                              child: GetBuilder<StdToDoContImp>(
                                builder: (controller) {
                                return Form(
                                  key: controller.formstate,
                                  child: SingleChildScrollView(
                                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                    child: Column(
                                      children: [
                                        Text(
                                          "new_task".tr,
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                            fontFamily: 'Cairo',
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        SizedBox(height: 2.h),
                                        AuthTextForm(
                                          controller: controller.title,
                                          hintText: "title".tr,
                                          isPassword: false,
                                          valid: (val) {
                                            if (val!.isEmpty) {
                                              return "required".tr;
                                            }
                                          },
                                        ),
                                        SizedBox(height: 2.h),
                                        AuthTextForm(
                                          controller: controller.desc,
                                          hintText: "desc".tr,
                                          isPassword: false,
                                          valid: (val) {
                                            if (val!.isEmpty) {
                                              return "required".tr;
                                            }
                                          },
                                        ),
                                        SizedBox(height: 2.h),
                                        GetBuilder<StdToDoContImp>(
                                          builder: (controller) {
                                            return Container(
                                              padding: EdgeInsets.only(
                                                left: 5.w,
                                                right: 5.w,
                                              ),
                                              height: 10.h,
                                              child: ListView.builder(
                                                itemCount: controller.images.length,
                                                scrollDirection: Axis.horizontal,
                                                itemBuilder: (context, index) =>
                                                Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      controller.selectedImage =
                                                      controller.images[index]['id'];
                                                      controller.update();
                                                    },
                                                    child:
                                                    Container(
                                                      width: 17.w,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          width: 1,
                                                          color: controller.selectedImage == controller.images[index]['id'] ? yellow : black
                                                        ),
                                                      ),
                                                      child: CachedNetworkImage(
                                                        imageUrl: controller.images[index]['link'],
                                                        errorWidget: (_, i, e) {
                                                          return Icon(
                                                            FontAwesomeIcons.image,
                                                            size: 13.sp,
                                                            color: Colors.grey,
                                                          );
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                        SizedBox(height: 2.h),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all<Color>(yellow),
                                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15),
                                                  )),
                                                padding: MaterialStateProperty.all<EdgeInsets>(
                                                  EdgeInsets.symmetric(
                                                      horizontal: 5.w,
                                                      vertical: 3
                                                  )),
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "save_task".tr,
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
                                                      color: black,
                                                      fontWeight: FontWeight.bold,
                                                      fontFamily: 'Cairo'
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              onPressed: () {
                                                controller.addTask();
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                            );
                          }
                        );
                      },
                      child: SizedBox(
                        height: 11.h,
                        width: 15.w,
                        child: Icon(FontAwesomeIcons.plus, size: 23.sp),
                      ),
                    ),
                  ],
                ),
              ),
              GetBuilder<StdToDoContImp>(builder: (controller) {
                if (controller.statusRequest == StatusRequest.loading) {
                  return Container(
                    color: white,
                    height: 85.h,
                    width: 100.w,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),
                        CircularProgressIndicator(
                          color: black,
                        ),
                      ],
                    ),
                  );
                } else if (controller.statusRequest == StatusRequest.success) {
                  return SizedBox(
                    width: 100.w,
                    height: 85.h,
                    child: NestedScrollView(
                      headerSliverBuilder: (_, ch) {
                        return [];
                      },
                      body: RefreshIndicator(
                        onRefresh: () async {
                          await controller.getTasks();
                        },
                        backgroundColor: white,
                        color: orange,
                        child: GridView.builder(
                          padding: const EdgeInsets.all(15),
                          itemCount: controller.tasks.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1,
                            crossAxisCount: 1,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 15.h,
                          ),
                          itemBuilder: (_, i) {
                            return Container(
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                children: [
                                  Container(
                                    width: 20.w,
                                    height: 15.h,
                                    padding: const EdgeInsets.all(5),
                                    child: CachedNetworkImage(
                                      imageUrl: controller.tasks[i]['image_link'] ?? "",
                                      errorWidget: (_, i, e) {
                                        return Icon(
                                          FontAwesomeIcons.image,
                                          size: 13.sp,
                                          color: Colors.grey,
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(width: .5.w),
                                  SizedBox(
                                    width: 67.w,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(height: 1.h),
                                        Row(
                                          children: [
                                            Expanded(
                                              child: Wrap(
                                                clipBehavior: Clip.antiAlias,
                                                children: [
                                                  Text(
                                                    controller.tasks[i]['title'] ?? "",
                                                    maxLines: 1,
                                                    overflow: TextOverflow.clip,
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                controller.markDone(controller.tasks[i]['id']);
                                              },
                                              child: Container(
                                                width: 10.w,
                                                height: 6.h,
                                                decoration: BoxDecoration(
                                                  color: lightGrey,
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                child: Icon(
                                                  Icons.star,
                                                  color: orangeBtn,
                                                  size: 24.sp
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 2.w),
                                            Container(
                                              alignment: Alignment.center,
                                              width: 55.w,
                                              height: 8.h,
                                              margin: EdgeInsets.only(
                                                  bottom: .5.h),
                                              decoration: BoxDecoration(
                                                color: lightBlue,
                                                borderRadius: BorderRadius
                                                    .circular(5),
                                              ),
                                              padding: const EdgeInsets.all(
                                                  5),
                                              child: SingleChildScrollView(
                                                child: Text(
                                                  controller
                                                      .tasks[i]['description'] ??
                                                      "",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      fontSize: 15.sp
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }
                        ),
                      ),
                    ),
                  );
                }
                return Container(
                  color: white,
                  height: 85.h,
                  width: 100.w,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 10),
                      CircularProgressIndicator(
                        color: black,
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
