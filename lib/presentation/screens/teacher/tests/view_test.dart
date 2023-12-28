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

  int cont1 = 0;

  @override
  void initState() {
    getTestQst();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(TeacherTestsContImp());
    return WillPopScope(
      onWillPop: () async {
        teacherTestsContImp.econt1.clear();
        teacherTestsContImp.econt2.clear();
        teacherTestsContImp.econt3.clear();
        teacherTestsContImp.econt4.clear();
        teacherTestsContImp.econt5.clear();
        teacherTestsContImp.econt6.clear();
        teacherTestsContImp.econt7.clear();
        teacherTestsContImp.econt8.clear();
        teacherTestsContImp.econt9.clear();
        teacherTestsContImp.econt10.clear();
        teacherTestsContImp.econt11.clear();
        teacherTestsContImp.econt12.clear();
        teacherTestsContImp.econt13.clear();
        teacherTestsContImp.econt14.clear();
        teacherTestsContImp.econt15.clear();
        teacherTestsContImp.econt16.clear();
        teacherTestsContImp.econt17.clear();
        teacherTestsContImp.econt18.clear();
        teacherTestsContImp.econt19.clear();
        teacherTestsContImp.econt20.clear();
        teacherTestsContImp.econt21.clear();
        teacherTestsContImp.econt22.clear();
        teacherTestsContImp.econt23.clear();
        teacherTestsContImp.econt24.clear();
        teacherTestsContImp.econt25.clear();
        teacherTestsContImp.econt26.clear();
        teacherTestsContImp.econt27.clear();
        teacherTestsContImp.econt28.clear();
        teacherTestsContImp.econt29.clear();
        teacherTestsContImp.econt30.clear();
        teacherTestsContImp.econt31.clear();
        teacherTestsContImp.econt32.clear();
        teacherTestsContImp.econt33.clear();
        teacherTestsContImp.econt34.clear();
        teacherTestsContImp.econt35.clear();
        teacherTestsContImp.econt36.clear();
        teacherTestsContImp.econt37.clear();
        teacherTestsContImp.econt38.clear();
        teacherTestsContImp.econt39.clear();
        teacherTestsContImp.econt40.clear();
        teacherTestsContImp.econt41.clear();
        teacherTestsContImp.econt42.clear();
        teacherTestsContImp.econt43.clear();
        teacherTestsContImp.econt44.clear();
        teacherTestsContImp.econt45.clear();
        teacherTestsContImp.econt46.clear();
        teacherTestsContImp.econt47.clear();
        teacherTestsContImp.econt48.clear();
        teacherTestsContImp.econt49.clear();
        teacherTestsContImp.econt50.clear();
        Get.back();
        return false;
      },
      child: SafeArea(
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
                        "${"test".tr} #${widget.id}",
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
                            teacherTestsContImp.updateQst();
                          },
                          child: Row(
                            children: [
                              Text(
                                "update".tr,
                                style: const TextStyle(
                                  color: white,
                                  fontFamily: 'Cairo',
                                  height: 1.5
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
                        key: cont.eformstate,
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
                                          hintText: "question".tr,
                                          valid: (val) {
                                            if (val!.isEmpty) {
                                              return "";
                                            } else {
                                              cont1 = cont.eqst[0]['id'];
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
                                          hintText: "${"option".tr} 1",
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
                                          hintText: "${"option".tr} 2",
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
                                          hintText: "${"option".tr} 3",
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
                                          hintText: "${"option".tr} 4",
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
                                          hintText: "question".tr,
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
                                          hintText: "${"option".tr} 1",
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
                                          hintText: "${"option".tr} 2",
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
                                          hintText: "${"option".tr} 3",
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
                                          hintText: "${"option".tr} 4",
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
                                          hintText: "question".tr,
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
                                          hintText: "${"option".tr} 1",
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
                                          hintText: "${"option".tr} 2",
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
                                          hintText: "${"option".tr} 3",
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
                                          hintText: "${"option".tr} 4",
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
                                          hintText: "question".tr,
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
                                          hintText: "${"option".tr} 1",
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
                                          hintText: "${"option".tr} 2",
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
                                          hintText: "${"option".tr} 3",
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
                                          hintText: "${"option".tr} 4",
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
                                          hintText: "question".tr,
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
                                          hintText: "${"option".tr} 1",
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
                                          hintText: "${"option".tr} 2",
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
                                          hintText: "${"option".tr} 3",
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
                                          hintText: "${"option".tr} 4",
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
                                decoration: cont.eqst.indexed == 5 ? const BoxDecoration(
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
                                          controller: cont.econt26,
                                          hintText: "question".tr,
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
                                              groupValue: cont.eselectedAns6,
                                              onChanged: (value) {
                                                cont.eselectedAns6 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt27,
                                          hintText: "${"option".tr} 1",
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
                                              groupValue: cont.eselectedAns6,
                                              onChanged: (value) {
                                                cont.eselectedAns6 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt28,
                                          hintText: "${"option".tr} 2",
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
                                              groupValue: cont.eselectedAns6,
                                              onChanged: (value) {
                                                cont.eselectedAns6 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt29,
                                          hintText: "${"option".tr} 3",
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
                                              groupValue: cont.eselectedAns6,
                                              onChanged: (value) {
                                                cont.eselectedAns6 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt30,
                                          hintText: "${"option".tr} 4",
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
                                decoration: cont.eqst.indexed == 6 ? const BoxDecoration(
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
                                          controller: cont.econt31,
                                          hintText: "question".tr,
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
                                              groupValue: cont.eselectedAns7,
                                              onChanged: (value) {
                                                cont.eselectedAns7 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt32,
                                          hintText: "${"option".tr} 1",
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
                                              groupValue: cont.eselectedAns7,
                                              onChanged: (value) {
                                                cont.eselectedAns7 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt33,
                                          hintText: "${"option".tr} 2",
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
                                              groupValue: cont.eselectedAns7,
                                              onChanged: (value) {
                                                cont.eselectedAns7 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt34,
                                          hintText: "${"option".tr} 3",
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
                                              groupValue: cont.eselectedAns7,
                                              onChanged: (value) {
                                                cont.eselectedAns7 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt35,
                                          hintText: "${"option".tr} 4",
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
                                decoration: cont.eqst.indexed == 7 ? const BoxDecoration(
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
                                          controller: cont.econt36,
                                          hintText: "question".tr,
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
                                              groupValue: cont.eselectedAns8,
                                              onChanged: (value) {
                                                cont.eselectedAns8 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt37,
                                          hintText: "${"option".tr} 1",
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
                                              groupValue: cont.eselectedAns8,
                                              onChanged: (value) {
                                                cont.eselectedAns8 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt38,
                                          hintText: "${"option".tr} 2",
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
                                              groupValue: cont.eselectedAns8,
                                              onChanged: (value) {
                                                cont.eselectedAns8 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt39,
                                          hintText: "${"option".tr} 3",
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
                                              groupValue: cont.eselectedAns8,
                                              onChanged: (value) {
                                                cont.eselectedAns8 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt40,
                                          hintText: "${"option".tr} 4",
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
                                decoration: cont.eqst.indexed == 8 ? const BoxDecoration(
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
                                          controller: cont.econt41,
                                          hintText: "question".tr,
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
                                              groupValue: cont.eselectedAns9,
                                              onChanged: (value) {
                                                cont.eselectedAns9 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt42,
                                          hintText: "${"option".tr} 1",
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
                                              groupValue: cont.eselectedAns9,
                                              onChanged: (value) {
                                                cont.eselectedAns9 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt43,
                                          hintText: "${"option".tr} 2",
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
                                              groupValue: cont.eselectedAns9,
                                              onChanged: (value) {
                                                cont.eselectedAns9 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt44,
                                          hintText: "${"option".tr} 3",
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
                                              groupValue: cont.eselectedAns9,
                                              onChanged: (value) {
                                                cont.eselectedAns9 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt45,
                                          hintText: "${"option".tr} 4",
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
                                decoration: cont.eqst.indexed == 9 ? const BoxDecoration(
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
                                          controller: cont.econt46,
                                          hintText: "question".tr,
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
                                              groupValue: cont.eselectedAns10,
                                              onChanged: (value) {
                                                cont.eselectedAns10 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt47,
                                          hintText: "${"option".tr} 1",
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
                                              groupValue: cont.eselectedAns10,
                                              onChanged: (value) {
                                                cont.eselectedAns10 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt48,
                                          hintText: "${"option".tr} 2",
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
                                              groupValue: cont.eselectedAns10,
                                              onChanged: (value) {
                                                cont.eselectedAns10 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt49,
                                          hintText: "${"option".tr} 3",
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
                                              groupValue: cont.eselectedAns10,
                                              onChanged: (value) {
                                                cont.eselectedAns10 = value!;
                                                cont.update();
                                              }
                                          ),
                                        ),
                                        const Spacer(),
                                        TestsTextOption(
                                          controller: cont.econt50,
                                          hintText: "${"option".tr} 4",
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
      ),
    );
  }
}
