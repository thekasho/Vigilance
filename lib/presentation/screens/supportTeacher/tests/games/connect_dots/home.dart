part of '../../../../screens.dart';

class StdConnectDotsGameScreen extends StatefulWidget {
  const StdConnectDotsGameScreen({Key? key, required this.level})
      : super(key: key);
  final dynamic level;

  @override
  State<StdConnectDotsGameScreen> createState() =>
      _StdConnectDotsGameScreenState();
}

class _StdConnectDotsGameScreenState extends State<StdConnectDotsGameScreen> {
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
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60.w,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: yellow,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    // padding: EdgeInsets.symmetric(vertical: .5.h),
                    child: Text(
                      "${"level".tr} 1",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Cairo',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }
}