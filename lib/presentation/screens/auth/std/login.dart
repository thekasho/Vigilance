part of '../../screens.dart';

class StdLoginScreen extends StatefulWidget {
  const StdLoginScreen({super.key});

  @override
  State<StdLoginScreen> createState() => _StdLoginScreenState();
}

class _StdLoginScreenState extends State<StdLoginScreen> {

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
    Get.put(StdLoginContImp());
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
                height: 90.h,
                child: GetBuilder<StdLoginContImp>(builder: (controller) {
                  return Form(
                    key: controller.formstate,
                    child: SingleChildScrollView(
                      reverse: true,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
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
                            SizedBox(height: 3.h),
                            Text(
                              "login_as_parent".tr,
                              style: TextStyle(
                                  fontFamily: 'Cairo',
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold
                              ),
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
                                onTap: (){
                                  controller.showPassword();
                                },
                                child: controller.isShowPassword ? const Icon(Icons.visibility_outlined) : const Icon(Icons.visibility_off_outlined),
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
                            SizedBox(height: 5.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  focusNode: f3,
                                  style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(
                                        orangeBtn),
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    )),
                                    padding: MaterialStateProperty.all<EdgeInsets>(
                                        EdgeInsets.symmetric(
                                            horizontal: 10.w,
                                            vertical: 3
                                        )),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        "login".tr,
                                        style: TextStyle(
                                          fontSize: 19.sp,
                                          color: black,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Cairo'
                                        ),
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
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.toNamed(screenStdRegister),
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
