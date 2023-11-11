part of '../screens.dart';

class ChooseTypeScreen extends StatefulWidget {
  const ChooseTypeScreen({super.key});

  @override
  State<ChooseTypeScreen> createState() => _ChooseTypeScreenState();
}

class _ChooseTypeScreenState extends State<ChooseTypeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: yellowBck,
          padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Are You a ....",
                    style: TextStyle(
                      color: black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp,
                      fontFamily: 'Cairo',
                    ),
                  )
                ],
              ),
              SizedBox(height: 2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 50.w,
                    height: 28.h,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4,
                          color: Color(0x33000000),
                          offset: Offset(0, 2),
                          spreadRadius: 2,
                        )
                      ],
                    ),
                    child: Container(
                      width: 10.w,
                      // clipBehavior: Clip.antiAlias,
                      // decoration: BoxDecoration(
                      //   color: Colors.black,
                      //   shape: BoxShape.circle
                      // ),
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
