part of '../screens.dart';

class StdShoppingScreen extends StatefulWidget {
  const StdShoppingScreen({super.key});

  @override
  State<StdShoppingScreen> createState() => _StdShoppingScreenState();
}

class _StdShoppingScreenState extends State<StdShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(ShoppingContImp());
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: yellowBck,
          padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                          width: 12.w,
                          height: 6.h,
                          clipBehavior: Clip.antiAlias,
                          decoration: const BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Color(0x33000000),
                                offset: Offset(2, 2),
                                spreadRadius: 3,
                              )
                            ],
                          ),
                          child: const Icon(FontAwesomeIcons.chevronLeft)
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 45.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: orange,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 3,
                            color: Color(0x33000000),
                            offset: Offset(2, 2),
                            spreadRadius: 3,
                          )
                        ],
                      ),
                      child: GetBuilder<ShoppingContImp>(builder: (controller) {
                        return Text(
                          "النقاط: ${controller.points}",
                          style: TextStyle(
                            color: black,
                            fontSize: 19.sp,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo'
                          ),
                        );
                      }),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30.w,
                      height: 10.h,
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
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  height: 73.h,
                  width: 100.w,
                  padding: EdgeInsets.only(bottom: 2.h),
                  child:
                  GetBuilder<ShoppingContImp>(builder: (controller) {
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
                    } else
                    if (controller.statusRequest == StatusRequest.success) {
                      return NestedScrollView(
                        headerSliverBuilder: (_, ch) {
                          return [];
                        },
                        body: RefreshIndicator(
                          onRefresh: () async {
                            await controller.getItems();
                          },
                          backgroundColor: white,
                          color: orange,
                          child: GridView.builder(
                              itemCount: controller.items.length,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 1,
                                crossAxisCount: 2,
                                mainAxisSpacing: 5,
                                mainAxisExtent: 32.h,
                              ),
                              itemBuilder: (_, i) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .spaceAround,
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          width: 40.w,
                                          height: 28.h,
                                          decoration: BoxDecoration(
                                            color: white,
                                            borderRadius: BorderRadius.circular(
                                                20),
                                          ),
                                          child: Column(
                                            children: [
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    top: 20,
                                                    bottom: 20
                                                ),
                                                width: 30.w,
                                                child: CachedNetworkImage(
                                                  imageUrl: controller
                                                      .items[i]['link'] ?? "",
                                                  errorWidget: (_, i, e) {
                                                    return Icon(
                                                      FontAwesomeIcons.image,
                                                      size: 13.sp,
                                                      color: Colors.white,
                                                    );
                                                  },
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .center,
                                                children: [
                                                  const Icon(
                                                      Icons.lock, color: yellow),
                                                  Text(
                                                    "${controller
                                                        .items[i]['points'] ??
                                                        ""} Points",
                                                    style: TextStyle(
                                                        fontFamily: 'Cairo',
                                                        fontSize: 20.sp,
                                                        fontWeight: FontWeight
                                                            .bold
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () async {
                                            controller.buyItem(
                                              controller.items[i]['link'],
                                              controller.items[i]['id']);
                                          },
                                          child: Container(
                                            alignment: Alignment.center,
                                            width: 25.w,
                                            height: 6.h,
                                            margin: EdgeInsets.only(
                                                top: 25.h, left: 7.w),
                                            decoration: BoxDecoration(
                                              color: lighterBlue,
                                              borderRadius: BorderRadius.circular(
                                                  15),
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 3,
                                                  color: Color(0x33000000),
                                                  offset: Offset(2, 2),
                                                  spreadRadius: 2,
                                                )
                                              ],
                                            ),
                                            child: Text(
                                              "Add",
                                              style: TextStyle(
                                                  color: white,
                                                  fontSize: 19.sp,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Cairo'
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              }
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
