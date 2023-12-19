part of '../screens.dart';

class SupportTeacherChatScreen extends StatefulWidget {
  const SupportTeacherChatScreen({super.key});

  @override
  State<SupportTeacherChatScreen> createState() =>
      _SupportTeacherChatScreenState();
}

class _SupportTeacherChatScreenState extends State<SupportTeacherChatScreen> {

  CollectionReference messages = FirebaseFirestore.instance.collection(kMessages);
  StdChatTeacherImp stdChatTeacherImp = Get.put(StdChatTeacherImp());
  final f = DateFormat('yyyy-MM-dd hh:mm');

  @override
  Widget build(BuildContext context) {
    Get.put(StdChatTeacherImp());
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<StdChatTeacherImp>(builder: (cont) {
          if(cont.statusRequest == StatusRequest.loading){
            return Container(
              color: yellowBck,
              height: 100.h,
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
            return Container(
              width: double.infinity,
              height: double.infinity,
              color: chatbck,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        color: yellow,
                        height: 10.h,
                        width: 100.w,
                        child: Row(
                          children: [
                            Container(
                              width: 18.w,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: CachedNetworkImage(
                                imageUrl: cont.teacherImage,
                                errorWidget: (_, i, e) {
                                  return Icon(
                                    FontAwesomeIcons.image,
                                    size: 13.sp,
                                    color: Colors.white,
                                  );
                                },
                              ),
                            ),
                            const Spacer(),
                            Container(
                              height: 11.h,
                              width: 45.w,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                cont.teacherName,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                              width: 10.w,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(FontAwesomeIcons.video, size: 20.sp),
                              ),
                            ),
                            const SizedBox(width: 5),
                            SizedBox(
                              height: 10.h,
                              width: 10.w,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(FontAwesomeIcons.phone, size: 20.sp),
                              ),
                            ),
                            const SizedBox(width: 5),
                            SizedBox(
                              height: 10.h,
                              width: 10.w,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert, size: 20.sp),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 70.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(15)
                    ),
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: StreamBuilder(
                      stream: messages.orderBy(
                        kMessageCreatedAt,
                        descending: true,
                      ).where(kMessageUserEmail, isEqualTo: cont.userEmail).snapshots(),
                      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
                        if(snapshot.hasData){
                          List<Message> messagesList = [];
                          for (int i = 0; i < snapshot.data!.docs.length; i++) {
                            messagesList.add(Message.fromJson(snapshot.data?.docs[i]));
                          }
                          return ListView.builder(
                            reverse: true,
                            itemCount: messagesList.length,
                            itemBuilder: (context, index) {
                              return messagesList[index].userEmail == cont.userEmail
                                ? Column(
                                  children: [
                                    Container(
                                      width: 70.w,
                                      height: 6.h,
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: chatbck,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        messagesList[index].content,
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
                                      width: 70.w,
                                      height: 6.h,
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: chatbck,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        messagesList[index].userName,
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
                                      width: 70.w,
                                      height: 6.h,
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: chatbck,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        f.format(DateTime.fromMillisecondsSinceEpoch( messagesList[index].createdAt.seconds*1000)),
                                        // messagesList[index].createdAt.toString(),
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Container(
                                      width: 70.w,
                                      height: 6.h,
                                      padding: const EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          color: chatbck,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        messagesList[index].to,
                                        maxLines: 1,
                                        overflow: TextOverflow.clip,
                                        style: TextStyle(
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                    ),
                                  ],
                                ) : Text("${messagesList[index]}");
                                // ? Text(messagesList[index].content)
                                // : Text("${messagesList[index]}");
                            }
                          );
                        } else {
                          return Text('Empty Data');
                        }
                      },
                    ),
                  ),
                  // Container(
                  //   height: 70.h,
                  //   width: 100.w,
                  //   decoration: BoxDecoration(
                  //       color: white,
                  //       borderRadius: BorderRadius.circular(15)
                  //   ),
                  //   margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                  //   child: NestedScrollView(
                  //     headerSliverBuilder: (_, ch) {
                  //       return [];
                  //     },
                  //     body: GridView.builder(
                  //         itemCount: 10,
                  //         padding: const EdgeInsets.only(top: 10),
                  //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //           childAspectRatio: 1,
                  //           crossAxisCount: 1,
                  //           mainAxisExtent: 16.h,
                  //         ),
                  //         itemBuilder: (_, i) {
                  //           return Column(
                  //             children: [
                  //               Row(
                  //                 children: [
                  //                   SizedBox(
                  //                     height: 6.h,
                  //                     width: 90.w,
                  //                     child: Row(
                  //                       children: [
                  //                         const Spacer(),
                  //                         Container(
                  //                           width: 70.w,
                  //                           height: 6.h,
                  //                           padding: const EdgeInsets.all(5),
                  //                           decoration: BoxDecoration(
                  //                               color: chatbck,
                  //                               borderRadius: BorderRadius.circular(20)
                  //                           ),
                  //                           alignment: Alignment.centerLeft,
                  //                           child: Text(
                  //                             "test message content",
                  //                             maxLines: 1,
                  //                             overflow: TextOverflow.clip,
                  //                             style: TextStyle(
                  //                               fontSize: 18.sp,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         const Spacer(),
                  //                         Container(
                  //                           width: 15.w,
                  //                           height: 8.h,
                  //                           alignment: Alignment.center,
                  //                           child: CachedNetworkImage(
                  //                             imageUrl: cont.teacherImage,
                  //                             errorWidget: (_, i, e) {
                  //                               return Icon(
                  //                                 FontAwesomeIcons.image,
                  //                                 size: 13.sp,
                  //                                 color: Colors.grey,
                  //                               );
                  //                             },
                  //                           ),
                  //                         ),
                  //                         Spacer(),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               SizedBox(height: 16),
                  //               Row(
                  //                 children: [
                  //                   SizedBox(
                  //                     height: 6.h,
                  //                     width: 90.w,
                  //                     child: Row(
                  //                       children: [
                  //                         const Spacer(),
                  //                         Container(
                  //                           width: 15.w,
                  //                           height: 8.h,
                  //                           alignment: Alignment.center,
                  //                           child: CachedNetworkImage(
                  //                             imageUrl: cont.teacherImage,
                  //                             errorWidget: (_, i, e) {
                  //                               return Icon(
                  //                                 FontAwesomeIcons.image,
                  //                                 size: 13.sp,
                  //                                 color: Colors.grey,
                  //                               );
                  //                             },
                  //                           ),
                  //                         ),
                  //                         const Spacer(),
                  //                         Container(
                  //                           width: 70.w,
                  //                           height: 6.h,
                  //                           padding: const EdgeInsets.all(5),
                  //                           decoration: BoxDecoration(
                  //                               color: chatbck,
                  //                               borderRadius: BorderRadius.circular(20)
                  //                           ),
                  //                           alignment: Alignment.centerLeft,
                  //                           child: Text(
                  //                             "test message content",
                  //                             maxLines: 1,
                  //                             overflow: TextOverflow.clip,
                  //                             style: TextStyle(
                  //                               fontSize: 18.sp,
                  //                             ),
                  //                           ),
                  //                         ),
                  //                         Spacer(),
                  //                       ],
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ],
                  //           );
                  //         }
                  //     ),
                  //   ),
                  // ),
                  Container(
                    height: 10.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TestsTextInput(
                          controller: TextEditingController(),
                          hintText: "Message..",
                          valid: (val) {
                            if (val!.isEmpty) {
                              return 'Required!';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: 10.h,
                          width: 10.w,
                          child: IconButton(
                            onPressed: () {

                            },
                            icon: Icon(Icons.send, size: 25.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          return Container(
            color: yellowBck,
            height: 100.h,
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
    );
  }
}
