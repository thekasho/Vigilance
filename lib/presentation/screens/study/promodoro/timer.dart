part of '../../screens.dart';

class PromodoroTimerScreen extends StatefulWidget {
  const PromodoroTimerScreen({super.key});

  @override
  State<PromodoroTimerScreen> createState() => _PromodoroTimerScreenState();
}

class _PromodoroTimerScreenState extends State<PromodoroTimerScreen> {

  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  FocusNode f3 = FocusNode();
  FocusNode f4 = FocusNode();
  FocusNode f5 = FocusNode();
  FocusNode f6 = FocusNode();

  @override
  void dispose() {
    f1.dispose();
    f2.dispose();
    f3.dispose();
    f4.dispose();
    f5.dispose();
    f6.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(PromodoroContImp());
    return WillPopScope(
      onWillPop: () async {
        Get.back();
        return false;
      },
      child: SafeArea(
        child: GetBuilder<PromodoroContImp>(builder: (cont) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: orangeBtn,
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.settings,
                    color: black,
                    size: 25.sp,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        isDismissible: false,
                        useSafeArea: true,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            )
                        ),
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: 100.h,
                            width: 100.w,
                            child: SingleChildScrollView(
                              child: Form(
                                key: cont.formstate,
                                child: Padding(
                                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                                  child: Column(
                                    children: [
                                      Container(
                                        decoration: const BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: grayDark
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            IconButton(
                                              icon: Icon(
                                                Icons.close, color: grayDark,
                                                size: 20.sp
                                              ),
                                              onPressed: () => Navigator.pop(context),
                                            ),
                                            const Spacer(),
                                            Text(
                                              "الاعدادات",
                                              style: TextStyle(
                                                color: grayDark,
                                                fontSize: 18.sp,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Cairo'
                                              ),
                                            ),
                                            SizedBox(width: 5.w),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 2.h),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.w,
                                            vertical: 1.h
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "المؤقت",
                                              style: TextStyle(
                                                color: grayDark.withOpacity(.7),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Cairo'
                                              ),
                                            ),
                                            SizedBox(width: 1.w),
                                            Icon(
                                                Icons.access_time,
                                                color: grayDark.withOpacity(.7),
                                                size: 18.sp
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.w,
                                          vertical: 1.h
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "الوقت (بالدقائق)",
                                              style: TextStyle(
                                                color: black.withOpacity(.7),
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Cairo'
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.w,
                                          vertical: 1.h
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 30.w,
                                              alignment: Alignment.centerRight,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        "Long Break",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: grayDark,
                                                          fontSize: 15.sp,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      PromodoroInputs(
                                                        controller: cont.longBreak,
                                                        width: 28.w,
                                                        valid: (val) {
                                                          if (val!.isEmpty) {
                                                            return 'Required!';
                                                          }
                                                          return null;
                                                        },
                                                        focusNode: f3,
                                                        onChanged: (val){
                                                          print(val);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 30.w,
                                              alignment: Alignment.centerLeft,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        "Short Break",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: grayDark,
                                                          fontSize: 15.sp,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      PromodoroInputs(
                                                        controller: cont.shortBreak,
                                                        width: 28.w,
                                                        valid: (val) {
                                                          if (val!.isEmpty) {
                                                            return 'Required!';
                                                          }
                                                          return null;
                                                        },
                                                        focusNode: f2,
                                                        onChanged: (val){
                                                          print(val);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              width: 30.w,
                                              alignment: Alignment.centerLeft,
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        "Promodoro",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          color: grayDark,
                                                          fontSize: 15.sp,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    children: [
                                                      PromodoroInputs(
                                                        controller: cont.promodoro,
                                                        width: 28.w,
                                                        valid: (val) {
                                                          if (val!.isEmpty) {
                                                            return 'Required!';
                                                          }
                                                          return null;
                                                        },
                                                        focusNode: f1,
                                                        onChanged: (val){
                                                          print(val);
                                                        },
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 1.h),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.w,
                                          vertical: 1.h
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                "Long Break Interval (Minutes)",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                    fontSize: 17.sp,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                            ),
                                            PromodoroInputs(
                                              controller: cont.longBreakInt,
                                              width: 20.w,
                                              valid: (val) {
                                                if (val!.isEmpty) {
                                                  return 'Required!';
                                                }
                                                return null;
                                              },
                                              focusNode: f4,
                                              onChanged: (val){
                                                print(val);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 7.h),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.w,
                                            vertical: 1.h
                                        ),
                                        child: Row(
                                          children: [
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all<Color>(yellow),
                                                shape: MaterialStateProperty.all<
                                                  RoundedRectangleBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15),
                                                  ),
                                                ),
                                                padding: MaterialStateProperty.all<EdgeInsets>(
                                                  EdgeInsets.symmetric(
                                                    horizontal: 5.w,
                                                    vertical: 3
                                                  ),
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "حفظ الاعدادات",
                                                    style: TextStyle(
                                                        fontSize: 18.sp,
                                                        color: black,
                                                        fontFamily: 'Cairo'
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              onPressed: () {
                                                cont.saveSettings();
                                                // Navigator.pop(context);
                                              },
                                            ),
                                            SizedBox(width: 5.w),
                                            ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty
                                                    .all<Color>(lightGrey),
                                                shape: MaterialStateProperty.all<
                                                    RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                      borderRadius: BorderRadius
                                                          .circular(15),
                                                    )),
                                                padding: MaterialStateProperty.all<
                                                    EdgeInsets>(
                                                    EdgeInsets.symmetric(
                                                        horizontal: 5.w,
                                                        vertical: 3
                                                    )),
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "الغاء",
                                                    style: TextStyle(
                                                      fontSize: 18.sp,
                                                      color: black,
                                                      fontFamily: 'Cairo'
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }
                    );
                  },
                ),
                SizedBox(width: 3.w),
              ],
              leading: IconButton(
                icon: Icon(
                  FontAwesomeIcons.chevronLeft,
                  color: Colors.black,
                  size: 22.sp,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              centerTitle: true,
              title: Text(
                "مؤقت برومودورو",
                style: TextStyle(
                  fontSize: 20.sp,
                  color: black,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              color: yellowBck,
              child: Column(
                children: [
                  SizedBox(height: 4.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "وقت التركيز",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: black,
                            fontFamily: 'Cairo',
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 6.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(
                          vertical: 10,
                        ),
                        alignment: Alignment.center,
                        width: 75.w,
                        height: 38.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: const BoxDecoration(
                          color: white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 15,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                              spreadRadius: 5,
                            )
                          ],
                        ),
                        child: Countdown(
                          controller: cont.countdownController1,
                          seconds: 20,
                          interval: const Duration(seconds: 1),
                          onFinished: () async {
                            cont.timeUp();
                          },
                          build: (_, double time) {
                            final duration = Duration(seconds: time.toInt());
                            final minutes = duration.inMinutes;
                            final seconds = time.toInt() % 60;
                            final minutesString = '$minutes'.padLeft(2, '0');
                            final secondsString = '$seconds'.padLeft(2, '0');
                            return Text(
                              "$minutesString:$secondsString",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: orange,
                                fontFamily: 'Cairo',
                                fontSize: 35.sp,
                                fontWeight: FontWeight.bold
                              ),
                            );
                          }
                        ),
                      ),
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
                                orangeBtn),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: Text(
                            "ابدأ",
                            style: TextStyle(
                              fontSize: 22.sp,
                              color: black,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          onPressed: () async {
                            cont.startTimer();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
