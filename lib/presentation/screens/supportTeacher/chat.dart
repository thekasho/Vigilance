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
  final _controller = ScrollController();
  TextEditingController controller = TextEditingController();
  String? messageText;

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
                      ).snapshots(),
                      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot<Object?>> snapshot) {
                        if(snapshot.hasData){
                          List<Message> messagesList = [];
                          for (int i = 0; i < snapshot.data!.docs.length; i++) {
                            messagesList.add(Message.fromJson(snapshot.data?.docs[i]));
                          }
                          return ListView.builder(
                            reverse: true,
                            controller: _controller,
                            itemCount: messagesList.length,
                            itemBuilder: (context, index) {
                              if(messagesList[index].userEmail == cont.userEmail){
                                return Column(
                                  children: [
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 6.h,
                                          width: 90.w,
                                          child: Row(
                                            children: [
                                              const Spacer(),
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
                                              const Spacer(),
                                              Container(
                                                width: 15.w,
                                                height: 8.h,
                                                alignment: Alignment.center,
                                                child: CachedNetworkImage(
                                                  imageUrl: cont.userImage,
                                                  errorWidget: (_, i, e) {
                                                    return Icon(
                                                      FontAwesomeIcons.image,
                                                      size: 13.sp,
                                                      color: Colors.grey,
                                                    );
                                                  },
                                                ),
                                              ),
                                              const Spacer(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                  ],
                                );
                              } else if(messagesList[index].userEmail == cont.teacherEmail){
                                return Column(
                                  children: [
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 6.h,
                                          width: 90.w,
                                          child: Row(
                                            children: [
                                              const Spacer(),
                                              Container(
                                                width: 15.w,
                                                height: 8.h,
                                                alignment: Alignment.center,
                                                child: CachedNetworkImage(
                                                  imageUrl: cont.teacherImage,
                                                  errorWidget: (_, i, e) {
                                                    return Icon(
                                                      FontAwesomeIcons.image,
                                                      size: 13.sp,
                                                      color: Colors.grey,
                                                    );
                                                  },
                                                ),
                                              ),
                                              const Spacer(),
                                              Container(
                                                width: 70.w,
                                                height: 6.h,
                                                padding: const EdgeInsets.all(10),
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
                                              const Spacer(),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    // Container(
                                    //   width: 70.w,
                                    //   height: 6.h,
                                    //   padding: const EdgeInsets.all(5),
                                    //   decoration: BoxDecoration(
                                    //       color: chatbck,
                                    //       borderRadius: BorderRadius.circular(20)
                                    //   ),
                                    //   alignment: Alignment.centerLeft,
                                    //   child: Text(
                                    //     messagesList[index].content,
                                    //     maxLines: 1,
                                    //     overflow: TextOverflow.clip,
                                    //     style: TextStyle(
                                    //       fontSize: 18.sp,
                                    //     ),
                                    //   ),
                                    // ),
                                    // const SizedBox(height: 20),
                                    // Container(
                                    //   width: 70.w,
                                    //   height: 6.h,
                                    //   padding: const EdgeInsets.all(5),
                                    //   decoration: BoxDecoration(
                                    //       color: chatbck,
                                    //       borderRadius: BorderRadius.circular(20)
                                    //   ),
                                    //   alignment: Alignment.centerLeft,
                                    //   child: Text(
                                    //     messagesList[index].userName,
                                    //     maxLines: 1,
                                    //     overflow: TextOverflow.clip,
                                    //     style: TextStyle(
                                    //       fontSize: 18.sp,
                                    //     ),
                                    //   ),
                                    // ),
                                    // const SizedBox(height: 20),
                                    // Container(
                                    //   width: 70.w,
                                    //   height: 6.h,
                                    //   padding: const EdgeInsets.all(5),
                                    //   decoration: BoxDecoration(
                                    //       color: chatbck,
                                    //       borderRadius: BorderRadius.circular(20)
                                    //   ),
                                    //   alignment: Alignment.centerLeft,
                                    //   child: Text(
                                    //     f.format(DateTime.fromMillisecondsSinceEpoch( messagesList[index].createdAt.seconds*1000)),
                                    //     // messagesList[index].createdAt.toString(),
                                    //     maxLines: 1,
                                    //     overflow: TextOverflow.clip,
                                    //     style: TextStyle(
                                    //       fontSize: 18.sp,
                                    //     ),
                                    //   ),
                                    // ),
                                    // const SizedBox(height: 20),
                                    // Container(
                                    //   width: 70.w,
                                    //   height: 6.h,
                                    //   padding: const EdgeInsets.all(5),
                                    //   decoration: BoxDecoration(
                                    //       color: chatbck,
                                    //       borderRadius: BorderRadius.circular(20)
                                    //   ),
                                    //   alignment: Alignment.centerLeft,
                                    //   child: Text(
                                    //     messagesList[index].to,
                                    //     maxLines: 1,
                                    //     overflow: TextOverflow.clip,
                                    //     style: TextStyle(
                                    //       fontSize: 18.sp,
                                    //     ),
                                    //   ),
                                    // ),
                                  ],
                                );
                              } else {
                                return const SizedBox();
                              }
                            }
                          );
                        } else {
                          return const SizedBox();
                        }
                      },
                    ),
                  ),
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
                        SizedBox(
                          width: 75.w,
                          height: 7.h,
                          child: TextFormField(
                            controller: controller,
                            onFieldSubmitted: (value){
                              messages.add({
                                kMessageUserEmail: cont.userEmail,
                                kMessageContent: value,
                                kMessageTo: cont.teacherEmail,
                                kMessageCreatedAt: DateTime.now(),
                              }).then((value){
                                Get.defaultDialog(
                                  backgroundColor: white,
                                  title: "Success",
                                  titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
                                  titleStyle: TextStyle(
                                    fontSize: 18.sp,
                                    fontFamily: "Cairo",
                                    color: green,
                                    fontWeight: FontWeight.bold
                                  ),
                                  content: Text(
                                    "Message Sent Successfully..",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontFamily: "Cairo",
                                    ),
                                  ),
                                );
                                controller.clear();
                                _controller.animateTo(
                                  0,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.easeIn,
                                );
                              }).catchError((error){
                                print("Failed to submit message: $error");
                              });
                            },
                            onChanged: (value) {
                              messageText = value;
                            },
                            autofocus: true,
                            style: TextStyle(
                              fontSize: 18.sp,
                              color: black,
                            ),
                            decoration: InputDecoration(
                              hintText: "Message..",
                              hintStyle: TextStyle(
                                  fontSize: 17.sp,
                                  color: black,
                                  fontFamily: 'Cairo'
                              ),
                              errorStyle: TextStyle(
                                  color: red,
                                  fontSize: 15.sp,
                                  fontFamily: 'Cairo'
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 5.w,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1,
                                    color: black
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1,
                                    color: black
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1,
                                    color: red
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1,
                                    color: red
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                          width: 10.w,
                          child: IconButton(
                            onPressed: () {
                              messages.add({
                                kMessageUserEmail: cont.userEmail,
                                kMessageContent: messageText,
                                kMessageTo: cont.teacherEmail,
                                kMessageCreatedAt: DateTime.now(),
                              }).then((value){
                                Get.defaultDialog(
                                  backgroundColor: white,
                                  title: "Success",
                                  titlePadding: EdgeInsets.only(bottom: 2.h, top: 1.h),
                                  titleStyle: TextStyle(
                                    fontSize: 18.sp,
                                    fontFamily: "Cairo",
                                    color: green,
                                    fontWeight: FontWeight.bold
                                  ),
                                  content: Text(
                                    "Message Sent Successfully..",
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontFamily: "Cairo",
                                    ),
                                  ),
                                );
                                controller.clear();
                                _controller.animateTo(
                                  0,
                                  duration: const Duration(seconds: 1),
                                  curve: Curves.easeIn,
                                );
                              }).catchError((error){
                                print("Failed to submit message: $error");
                              });
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
