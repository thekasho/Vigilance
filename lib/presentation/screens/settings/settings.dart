part of '../screens.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  LocalCont local = Get.put(LocalCont());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: yellowBck,
          child: Column(
            children: [
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Select Language",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                        fontSize: 22.sp,
                        height: 1.3
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(orangeBtn),
                      shape: MaterialStateProperty.all<
                          RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(65.w, 6.h),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "اللغة العربية",
                          style: TextStyle(
                            fontSize: 19.sp,
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo'
                          ),
                        ),
                      ],
                    ),
                    onPressed: () async {
                      await local.changeLang("ar");
                      Get.back();
                    },
                  ),
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(orangeBtn),
                      shape: MaterialStateProperty.all<
                          RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      fixedSize: MaterialStateProperty.all<Size>(
                        Size(65.w, 6.h),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "English",
                          style: TextStyle(
                            fontSize: 19.sp,
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Cairo'
                          ),
                        ),
                      ],
                    ),
                    onPressed: () async {
                      await local.changeLang("en");
                      Get.back();
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
