part of '../screens.dart';

class ChooseTypeScreen extends StatefulWidget {
  const ChooseTypeScreen({super.key});

  @override
  State<ChooseTypeScreen> createState() => _ChooseTypeScreenState();
}

class _ChooseTypeScreenState extends State<ChooseTypeScreen> {

  Future<bool> showExitPopup() async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
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
          style: TextStyle(fontFamily: 'Cairo', color: red, fontWeight: FontWeight.bold, fontSize: 20.sp),
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
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
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

  @override
  Widget build(BuildContext context) {
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Are You a ....",
                      style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.sp,
                        fontFamily: 'Cairo',
                      ),
                    )
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
                        width: 50.w,
                        height: 25.h,
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
                              width: 28.w,
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
                            Text(
                              "Student",
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
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Get.toNamed(screenTeacherLogin),
                      child: Container(
                        width: 50.w,
                        height: 26.h,
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
                              width: 37.w,
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
                              "Support Teacher",
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
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => Get.toNamed(screenParentLogin),
                      child: Container(
                        width: 50.w,
                        height: 25.h,
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
                              width: 26.w,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle
                              ),
                              child: CachedNetworkImage(
                                imageUrl: "https://cdn.iconscout.com/icon/free/png-256/avatar-369-456321.png",
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
                              "Parent",
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*
String
bool  true, false

int       1, 2, 3 ...
double    1.5, 5.4

array   = > [] مصفوفة

List = [Column, Column, Column]

 */