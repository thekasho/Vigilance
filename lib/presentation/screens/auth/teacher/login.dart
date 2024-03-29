part of '../../screens.dart';

class TeacherLoginScreen extends StatefulWidget {
  const TeacherLoginScreen({super.key});

  @override
  State<TeacherLoginScreen> createState() => _TeacherLoginScreenState();
}

class _TeacherLoginScreenState extends State<TeacherLoginScreen> {
  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  FocusNode f3 = FocusNode();
  FocusNode f4 = FocusNode();

  @override
  void dispose() {
    f1.dispose();
    f2.dispose();
    f3.dispose();
    f4.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(TeacherLoginContImp());
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: yellowBck,
          child: Column(
            children: [
              SizedBox(
                width: 100.w,
                height: 95.h,
                child: GetBuilder<TeacherLoginContImp>(builder: (controller) {
                  return Form(
                    key: controller.formstate,
                    child: SingleChildScrollView(
                      reverse: true,
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: 4.h,
                              ),
                              width: 45.w,
                              clipBehavior: Clip.antiAlias,
                              decoration:
                                  const BoxDecoration(shape: BoxShape.circle),
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://th.bing.com/th/id/OIP.NnSZ-PGdRmTcQ8x2uzNlAgAAAA?w=263&h=185&c=7&r=0&o=5&dpr=1.3&pid=1.7",
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
                              "login_as_teacher".tr,
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 6.h),
                            AuthTextForm(
                              controller: controller.email,
                              hintText: "email".tr,
                              isPassword: false,
                              focusNode: f1,
                              valid: (val) {
                                if (val!.isEmpty) {
                                  return "required".tr;
                                }
                              },
                              onFieldSubmitted: (val) {
                                f1.unfocus();
                                FocusScope.of(context).requestFocus(f2);
                              },
                            ),
                            SizedBox(height: 2.h),
                            AuthTextForm(
                              controller: controller.pass,
                              hintText: "password".tr,
                              isPassword: controller.isShowPassword,
                              focusNode: f2,
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  controller.showPassword();
                                },
                                child: controller.isShowPassword
                                    ? const Icon(Icons.visibility_outlined)
                                    : const Icon(Icons.visibility_off_outlined),
                              ),
                              valid: (val) {
                                if (val!.isEmpty) {
                                  return "required".tr;
                                }
                                return null;
                              },
                              onFieldSubmitted: (val) {
                                f2.unfocus();
                                FocusScope.of(context).requestFocus(f3);
                              },
                            ),
                            SizedBox(height: 3.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  focusNode: f3,
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            orangeBtn),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                    padding:
                                        MaterialStateProperty.all<EdgeInsets>(
                                            EdgeInsets.symmetric(
                                                horizontal: 10.w, vertical: 3)),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "login".tr,
                                        style: TextStyle(
                                            fontSize: 19.sp,
                                            color: black,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Cairo'),
                                      ),
                                    ],
                                  ),
                                  onPressed: () {
                                    f3.unfocus();
                                    FocusScope.of(context).requestFocus(f1);
                                    controller.login();
                                  },
                                ),
                              ],
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "dont_have_account".tr,
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              onTap: () => Get.toNamed(screenTeacherRegister),
                              child: Text(
                                "signup".tr,
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  color: orange,
                                  fontFamily: 'Cairo',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h),
                          ],
                        ),
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
