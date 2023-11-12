part of '../../screens.dart';

class StdHomeScreen extends StatefulWidget {
  const StdHomeScreen({super.key});

  @override
  State<StdHomeScreen> createState() => _StdHomeScreenState();
}

class _StdHomeScreenState extends State<StdHomeScreen> {
  StdHomeContImp stdHomeContImp = Get.put(StdHomeContImp());

  Future<bool> showExitPopup() async {
    return await showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
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
              style: TextStyle(fontFamily: 'Cairo',
                  color: red,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp),
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
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
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
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

  Future<void> checkAuth() async {
    await stdHomeContImp.checkAuth();
  }

  @override
  void initState() {
    checkAuth();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Get.put(StdHomeContImp());
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 15.w,
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
                    Container(
                      alignment: Alignment.center,
                      width: 45.w,
                      height: 6.h,
                      decoration: BoxDecoration(
                        color: orangeBtn,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: GetBuilder<StdHomeContImp>(builder: (controller) {
                        return Text(
                          "Points: ${controller.points}",
                          style: TextStyle(
                            color: white,
                            fontSize: 21.sp,
                          ),
                        );
                      }),
                    ),
                    GestureDetector(
                        onTap: () {},
                        child: Icon(
                          Icons.exit_to_app, color: orange, size: 27.sp,)
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
