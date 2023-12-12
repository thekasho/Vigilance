part of '../../screens.dart';

class TecherAddTestScreen extends StatefulWidget {
  const TecherAddTestScreen({super.key});

  @override
  State<TecherAddTestScreen> createState() => _TecherAddTestScreenState();
}

class _TecherAddTestScreenState extends State<TecherAddTestScreen> {
  @override
  Widget build(BuildContext context) {
    Get.put(TeacherTestsContImp());
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: yellowBck,
          padding: EdgeInsets.symmetric(
            horizontal: 3.w
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                    vertical: 1.h
                ),
                child: Row(
                  children: [
                    Text(
                      "Test #1",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 88.h,
                child: GetBuilder<TeacherTestsContImp>(builder: (cont) {
                  return Form(
                    key: cont.formstate,
                    child: SingleChildScrollView(
                      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Column(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              color: testBck1,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                            ),
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(
                                top: 2.h
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Spacer(),
                                    TestsTextInput(
                                      controller: cont.cont1,
                                      hintText: "Question..",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: red,
                                      ),
                                      child: IconButton(
                                        icon: const Icon(Icons.delete_outline, color: white),
                                        color: orange,
                                        focusColor: white,
                                        autofocus: true,
                                        padding: const EdgeInsets.all(5),
                                        onPressed: (){},
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.radio_button_checked, color: checkBoxColor, size: 20.sp),
                                    ),
                                    const Spacer(),
                                    TestsTextOption(
                                      controller: cont.cont3,
                                      hintText: "Option 1",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.radio_button_checked, color: checkBoxColor, size: 20.sp),
                                    ),
                                    const Spacer(),
                                    TestsTextOption(
                                      controller: cont.cont3,
                                      hintText: "Option 2",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.radio_button_checked, color: checkBoxColor, size: 20.sp),
                                    ),
                                    const Spacer(),
                                    TestsTextOption(
                                      controller: cont.cont3,
                                      hintText: "Option 3",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.radio_button_checked, color: checkBoxColor, size: 20.sp),
                                    ),
                                    const Spacer(),
                                    TestsTextOption(
                                      controller: cont.cont3,
                                      hintText: "Option 4",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1.h,
                            color: white,
                            thickness: 1.h,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: testBck2,
                            ),
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(
                                top: 2.h
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Spacer(),
                                    TestsTextInput(
                                      controller: cont.cont1,
                                      hintText: "Question..",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: red,
                                      ),
                                      child: IconButton(
                                        icon: const Icon(Icons.delete_outline, color: white),
                                        color: orange,
                                        focusColor: white,
                                        autofocus: true,
                                        padding: const EdgeInsets.all(5),
                                        onPressed: (){},
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.radio_button_checked, color: checkBoxColor, size: 20.sp),
                                    ),
                                    const Spacer(),
                                    TestsTextOption(
                                      controller: cont.cont3,
                                      hintText: "Option 1",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.radio_button_checked, color: checkBoxColor, size: 20.sp),
                                    ),
                                    const Spacer(),
                                    TestsTextOption(
                                      controller: cont.cont3,
                                      hintText: "Option 2",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.radio_button_checked, color: checkBoxColor, size: 20.sp),
                                    ),
                                    const Spacer(),
                                    TestsTextOption(
                                      controller: cont.cont3,
                                      hintText: "Option 3",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.radio_button_checked, color: checkBoxColor, size: 20.sp),
                                    ),
                                    const Spacer(),
                                    TestsTextOption(
                                      controller: cont.cont3,
                                      hintText: "Option 4",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                              ],
                            ),
                          ),
                          Divider(
                            height: 1.h,
                            color: white,
                            thickness: 1.h,
                          ),
                          Container(
                            decoration: const BoxDecoration(
                              color: testBck3,
                            ),
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.only(
                                top: 2.h
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Spacer(),
                                    TestsTextInput(
                                      controller: cont.cont1,
                                      hintText: "Question..",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: red,
                                      ),
                                      child: IconButton(
                                        icon: const Icon(Icons.delete_outline, color: white),
                                        color: orange,
                                        focusColor: white,
                                        autofocus: true,
                                        padding: const EdgeInsets.all(5),
                                        onPressed: (){},
                                      ),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.radio_button_checked, color: checkBoxColor, size: 20.sp),
                                    ),
                                    const Spacer(),
                                    TestsTextOption(
                                      controller: cont.cont3,
                                      hintText: "Option 1",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.radio_button_checked, color: checkBoxColor, size: 20.sp),
                                    ),
                                    const Spacer(),
                                    TestsTextOption(
                                      controller: cont.cont3,
                                      hintText: "Option 2",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.radio_button_checked, color: checkBoxColor, size: 20.sp),
                                    ),
                                    const Spacer(),
                                    TestsTextOption(
                                      controller: cont.cont3,
                                      hintText: "Option 3",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Container(
                                      width: 10.w,
                                      height: 6.h,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(Icons.radio_button_checked, color: checkBoxColor, size: 20.sp),
                                    ),
                                    const Spacer(),
                                    TestsTextOption(
                                      controller: cont.cont3,
                                      hintText: "Option 4",
                                      valid: (val) {
                                        if (val!.isEmpty) {
                                          return 'Required!';
                                        }
                                        return null;
                                      },
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
