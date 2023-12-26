part of '../../screens.dart';

class TeacherViewTestScreen extends StatefulWidget {
  const TeacherViewTestScreen({Key? key, required this.id}) : super(key: key);
  final dynamic id;

  @override
  State<TeacherViewTestScreen> createState() => _TeacherViewTestScreenState();
}

class _TeacherViewTestScreenState extends State<TeacherViewTestScreen> {
  TeacherTestsContImp teacherTestsContImp = Get.put(TeacherTestsContImp());

  Future<void> getTestQst() async {
    await teacherTestsContImp.getTestQsts(widget.id);
    teacherTestsContImp.update();
  }

  @override
  void initState() {
    getTestQst();
    super.initState();
  }

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
                    vertical: 1.h
                ),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      width: 10.w,
                      height: 6.h,
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(FontAwesomeIcons.chevronLeft, size: 23.sp,
                            color: black),
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "Test #${widget.id}",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 25.w,
                      height: 6.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: green,
                      ),
                      child: TextButton(
                        onPressed: () {

                        },
                        child: const Row(
                          children: [
                            Text(
                                "Update",
                                style: TextStyle(
                                    color: white
                                )
                            ),
                            SizedBox(width: 5),
                            Icon(Icons.save, color: white),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 86.h,
                child: GetBuilder<TeacherTestsContImp>(builder: (cont) {
                  if(cont.statusRequest == StatusRequest.loading){
                    return Container(
                      color: white,
                      height: double.infinity,
                      width: double.infinity,
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
                  } else if (cont.statusRequest == StatusRequest.success) {
                    return Form(
                      key: cont.formstate,
                      child: SingleChildScrollView(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Column(
                          children: [
                            Container(
                              decoration: cont.eqst.indexed == 0 ? const BoxDecoration(
                                color: testBck1,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ) : const BoxDecoration(
                                color: testBck1,
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
                                        controller: cont.econt1,
                                        hintText: "Question..",
                                        valid: (val) {
                                          if (val!.isEmpty) {
                                            return "";
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
                                          onPressed: (){

                                          },
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
                                        child: Radio(
                                            value: 1,
                                            groupValue: cont.eselectedAns1,
                                            onChanged: (value) {
                                              cont.eselectedAns1 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt2,
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
                                        child: Radio(
                                          value: 2,
                                          groupValue: cont.eselectedAns1,
                                          onChanged: (value) {
                                            cont.eselectedAns1 = value!;
                                            cont.update();
                                          }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt3,
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
                                        child: Radio(
                                          value: 3,
                                          groupValue: cont.eselectedAns1,
                                          onChanged: (value) {
                                            cont.eselectedAns1 = value!;
                                            cont.update();
                                          }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt4,
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
                                        child: Radio(
                                            value: 4,
                                            groupValue: cont.eselectedAns1,
                                            onChanged: (value) {
                                              cont.eselectedAns1 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt5,
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
                              decoration: cont.eqst.indexed == 1 ? const BoxDecoration(
                                color: testBck2,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ) : const BoxDecoration(
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
                                        controller: cont.econt6,
                                        hintText: "Question..",
                                        valid: (val) {
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
                                          onPressed: (){

                                          },
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
                                        child: Radio(
                                            value: 1,
                                            groupValue: cont.eselectedAns2,
                                            onChanged: (value) {
                                              cont.eselectedAns2 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt7,
                                        hintText: "Option 1",
                                        valid: (val) {
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
                                        child: Radio(
                                            value: 2,
                                            groupValue: cont.eselectedAns2,
                                            onChanged: (value) {
                                              cont.eselectedAns2 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt8,
                                        hintText: "Option 2",
                                        valid: (val) {
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
                                        child: Radio(
                                            value: 3,
                                            groupValue: cont.eselectedAns2,
                                            onChanged: (value) {
                                              cont.eselectedAns2 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt9,
                                        hintText: "Option 3",
                                        valid: (val) {
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
                                        child: Radio(
                                            value: 4,
                                            groupValue: cont.eselectedAns2,
                                            onChanged: (value) {
                                              cont.eselectedAns2 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt10,
                                        hintText: "Option 4",
                                        valid: (val) {
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
                              decoration: cont.eqst.indexed == 2 ? const BoxDecoration(
                                color: testBck3,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ) : const BoxDecoration(
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
                                        controller: cont.econt11,
                                        hintText: "Question..",
                                        valid: (val) {
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
                                          onPressed: (){

                                          },
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
                                        child: Radio(
                                            value: 1,
                                            groupValue: cont.eselectedAns3,
                                            onChanged: (value) {
                                              cont.eselectedAns3 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt12,
                                        hintText: "Option 1",
                                        valid: (val) {
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
                                        child: Radio(
                                            value: 2,
                                            groupValue: cont.eselectedAns3,
                                            onChanged: (value) {
                                              cont.eselectedAns3 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt13,
                                        hintText: "Option 2",
                                        valid: (val) {
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
                                        child: Radio(
                                            value: 3,
                                            groupValue: cont.eselectedAns3,
                                            onChanged: (value) {
                                              cont.eselectedAns3 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt14,
                                        hintText: "Option 3",
                                        valid: (val) {
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
                                        child: Radio(
                                            value: 4,
                                            groupValue: cont.eselectedAns3,
                                            onChanged: (value) {
                                              cont.eselectedAns3 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt15,
                                        hintText: "Option 4",
                                        valid: (val) {
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
                              decoration: cont.eqst.indexed == 3 ? const BoxDecoration(
                                color: testBck1,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ) : const BoxDecoration(
                                color: testBck1,
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
                                        controller: cont.econt16,
                                        hintText: "Question..",
                                        valid: (val) {
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
                                          onPressed: (){

                                          },
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
                                        child: Radio(
                                            value: 1,
                                            groupValue: cont.eselectedAns4,
                                            onChanged: (value) {
                                              cont.eselectedAns4 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt17,
                                        hintText: "Option 1",
                                        valid: (val) {
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
                                        child: Radio(
                                            value: 2,
                                            groupValue: cont.eselectedAns4,
                                            onChanged: (value) {
                                              cont.eselectedAns4 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt18,
                                        hintText: "Option 2",
                                        valid: (val) {
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
                                        child: Radio(
                                            value: 3,
                                            groupValue: cont.eselectedAns4,
                                            onChanged: (value) {
                                              cont.eselectedAns4 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt19,
                                        hintText: "Option 3",
                                        valid: (val) {
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
                                        child: Radio(
                                            value: 4,
                                            groupValue: cont.eselectedAns4,
                                            onChanged: (value) {
                                              cont.eselectedAns4 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt20,
                                        hintText: "Option 4",
                                        valid: (val) {
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
                              decoration: cont.eqst.indexed == 4 ? const BoxDecoration(
                                color: testBck2,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                ),
                              ) : const BoxDecoration(
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
                                        controller: cont.econt21,
                                        hintText: "Question..",
                                        valid: (val) {
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
                                          onPressed: (){

                                          },
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
                                        child: Radio(
                                            value: 1,
                                            groupValue: cont.eselectedAns5,
                                            onChanged: (value) {
                                              cont.eselectedAns5 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt22,
                                        hintText: "Option 1",
                                        valid: (val) {
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
                                        child: Radio(
                                            value: 2,
                                            groupValue: cont.eselectedAns5,
                                            onChanged: (value) {
                                              cont.eselectedAns5 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt23,
                                        hintText: "Option 2",
                                        valid: (val) {
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
                                        child: Radio(
                                            value: 3,
                                            groupValue: cont.eselectedAns5,
                                            onChanged: (value) {
                                              cont.eselectedAns5 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt24,
                                        hintText: "Option 3",
                                        valid: (val) {
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
                                        child: Radio(
                                            value: 4,
                                            groupValue: cont.eselectedAns5,
                                            onChanged: (value) {
                                              cont.eselectedAns5 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.econt25,
                                        hintText: "Option 4",
                                        valid: (val) {
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
                          ]
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
    );
  }
}
