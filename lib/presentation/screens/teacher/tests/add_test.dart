part of '../../screens.dart';

class TecherAddTestScreen extends StatefulWidget {
  const TecherAddTestScreen({super.key});

  @override
  State<TecherAddTestScreen> createState() => _TecherAddTestScreenState();
}

class _TecherAddTestScreenState extends State<TecherAddTestScreen> {
  int selectedOption = 1;
  TeacherTestsContImp teacherTestsContImp = Get.put(TeacherTestsContImp());

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
                  horizontal: 5.w,
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
                    const Spacer(),
                    Container(
                      width: 22.w,
                      height: 6.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: green,
                      ),
                      child: TextButton(
                        onPressed: (){
                          teacherTestsContImp.saveQst();
                        },
                        child: const Row(
                          children: [
                            Text(
                              "Save",
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
                  } else
                  if (cont.statusRequest == StatusRequest.success) {
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
                                            print(selectedOption);
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
                                          groupValue: cont.selectedAns1,
                                          onChanged: (value) {
                                            cont.selectedAns1 = value!;
                                            cont.update();
                                          }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont2,
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
                                          groupValue: cont.selectedAns1,
                                          onChanged: (value) {
                                            cont.selectedAns1 = value!;
                                            cont.update();
                                          }
                                        ),
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
                                        child: Radio(
                                          value: 3,
                                          groupValue: cont.selectedAns1,
                                          onChanged: (value) {
                                            cont.selectedAns1 = value!;
                                            cont.update();
                                          }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont4,
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
                                          groupValue: cont.selectedAns1,
                                          onChanged: (value) {
                                            cont.selectedAns1 = value!;
                                            cont.update();
                                          }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont5,
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
                                        controller: cont.cont6,
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
                                            groupValue: cont.selectedAns2,
                                            onChanged: (value) {
                                              cont.selectedAns2 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont7,
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
                                            groupValue: cont.selectedAns2,
                                            onChanged: (value) {
                                              cont.selectedAns2 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont8,
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
                                            groupValue: cont.selectedAns2,
                                            onChanged: (value) {
                                              cont.selectedAns2 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont9,
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
                                            groupValue: cont.selectedAns2,
                                            onChanged: (value) {
                                              cont.selectedAns2 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont10,
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
                              decoration: const BoxDecoration(
                                color: testBck3,
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
                                        controller: cont.cont11,
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
                                            groupValue: cont.selectedAns3,
                                            onChanged: (value) {
                                              cont.selectedAns3 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont12,
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
                                            groupValue: cont.selectedAns3,
                                            onChanged: (value) {
                                              cont.selectedAns3 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont13,
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
                                            groupValue: cont.selectedAns3,
                                            onChanged: (value) {
                                              cont.selectedAns3 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont14,
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
                                            groupValue: cont.selectedAns3,
                                            onChanged: (value) {
                                              cont.selectedAns3 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont15,
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
                                        controller: cont.cont16,
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
                                            groupValue: cont.selectedAns4,
                                            onChanged: (value) {
                                              cont.selectedAns4 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont17,
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
                                            groupValue: cont.selectedAns4,
                                            onChanged: (value) {
                                              cont.selectedAns4 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont18,
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
                                            groupValue: cont.selectedAns4,
                                            onChanged: (value) {
                                              cont.selectedAns4 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont19,
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
                                            groupValue: cont.selectedAns4,
                                            onChanged: (value) {
                                              cont.selectedAns4 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont20,
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
                              decoration: const BoxDecoration(
                                color: testBck2,
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
                                        controller: cont.cont21,
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
                                            groupValue: cont.selectedAns5,
                                            onChanged: (value) {
                                              cont.selectedAns5 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont22,
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
                                            groupValue: cont.selectedAns5,
                                            onChanged: (value) {
                                              cont.selectedAns5 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont23,
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
                                            groupValue: cont.selectedAns5,
                                            onChanged: (value) {
                                              cont.selectedAns5 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont24,
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
                                            groupValue: cont.selectedAns5,
                                            onChanged: (value) {
                                              cont.selectedAns5 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont25,
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
                              decoration: const BoxDecoration(
                                color: testBck3,
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
                                        controller: cont.cont26,
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
                                            groupValue: cont.selectedAns6,
                                            onChanged: (value) {
                                              cont.selectedAns6 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont27,
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
                                            groupValue: cont.selectedAns6,
                                            onChanged: (value) {
                                              cont.selectedAns6 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont28,
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
                                            groupValue: cont.selectedAns6,
                                            onChanged: (value) {
                                              cont.selectedAns6 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont29,
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
                                            groupValue: cont.selectedAns6,
                                            onChanged: (value) {
                                              cont.selectedAns6 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont30,
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
                                        controller: cont.cont31,
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
                                            groupValue: cont.selectedAns7,
                                            onChanged: (value) {
                                              cont.selectedAns7 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont32,
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
                                            groupValue: cont.selectedAns7,
                                            onChanged: (value) {
                                              cont.selectedAns7 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont33,
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
                                            groupValue: cont.selectedAns7,
                                            onChanged: (value) {
                                              cont.selectedAns7 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont34,
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
                                            groupValue: cont.selectedAns7,
                                            onChanged: (value) {
                                              cont.selectedAns7 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont35,
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
                              decoration: const BoxDecoration(
                                color: testBck2,
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
                                        controller: cont.cont36,
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
                                            groupValue: cont.selectedAns8,
                                            onChanged: (value) {
                                              cont.selectedAns8 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont37,
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
                                            groupValue: cont.selectedAns8,
                                            onChanged: (value) {
                                              cont.selectedAns8 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont38,
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
                                            groupValue: cont.selectedAns8,
                                            onChanged: (value) {
                                              cont.selectedAns8 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont39,
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
                                            groupValue: cont.selectedAns8,
                                            onChanged: (value) {
                                              cont.selectedAns8 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont40,
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
                              decoration: const BoxDecoration(
                                color: testBck3,
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
                                        controller: cont.cont41,
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
                                            groupValue: cont.selectedAns9,
                                            onChanged: (value) {
                                              cont.selectedAns9 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont42,
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
                                            groupValue: cont.selectedAns9,
                                            onChanged: (value) {
                                              cont.selectedAns9 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont43,
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
                                            groupValue: cont.selectedAns9,
                                            onChanged: (value) {
                                              cont.selectedAns9 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont44,
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
                                            groupValue: cont.selectedAns9,
                                            onChanged: (value) {
                                              cont.selectedAns9 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont45,
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
                                        controller: cont.cont46,
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
                                            groupValue: cont.selectedAns10,
                                            onChanged: (value) {
                                              cont.selectedAns10 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont47,
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
                                            groupValue: cont.selectedAns10,
                                            onChanged: (value) {
                                              cont.selectedAns10 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont48,
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
                                            groupValue: cont.selectedAns10,
                                            onChanged: (value) {
                                              cont.selectedAns10 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont49,
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
                                            groupValue: cont.selectedAns10,
                                            onChanged: (value) {
                                              cont.selectedAns10 = value!;
                                              cont.update();
                                            }
                                        ),
                                      ),
                                      const Spacer(),
                                      TestsTextOption(
                                        controller: cont.cont50,
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
                          ],
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
