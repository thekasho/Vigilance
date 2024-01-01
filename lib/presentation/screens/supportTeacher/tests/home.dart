part of '../../screens.dart';

class SupportTeacherTestsScreen extends StatefulWidget {
  const SupportTeacherTestsScreen({super.key});

  @override
  State<SupportTeacherTestsScreen> createState() => _SupportTeacherTestsScreenState();
}

class _SupportTeacherTestsScreenState extends State<SupportTeacherTestsScreen> {
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
              SizedBox(height: 1.h),
              Container(
                alignment: Alignment.center,
                width: 55.w,
                height: 6.h,
                decoration: BoxDecoration(
                  color: black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "tests".tr,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                    color: white,
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              Container(
                width: 100.w,
                height: 85.h,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: white,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(3, 5),
                                    spreadRadius: 1,
                                  )
                                ],
                              ),
                              child: const Icon(
                                Icons.done_outline_sharp,
                                size: 35,
                                color: green,
                              ),
                            ),
                            SizedBox(
                              width: 67.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(height: 1.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Session 1",
                                        overflow: TextOverflow.clip,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: 65.w,
                                        margin: EdgeInsets.only(bottom: .5.h,),
                                        padding: const EdgeInsets.all(5),
                                        child: Text(
                                          "Use puzzle 20 peices",
                                          overflow: TextOverflow.clip,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 20.sp,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ]
                              ),
                            ),
                          ]
                        ),
                      ),                // 1
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Icon(
                                  Icons.hourglass_empty,
                                  size: 35,
                                  color: grayDark.withOpacity(.6),
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 2",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            child: Text(
                                              "Coin game (l.v1) ",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset(
                                              'assets/images/start.png',
                                              width: 55,
                                              height: 25,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 2
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  Icons.done_outline_sharp,
                                  size: 35,
                                  color: green,
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 3",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            margin: EdgeInsets.only(bottom: .5.h,),
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Conneect Dots",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 3
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  Icons.done_outline_sharp,
                                  size: 35,
                                  color: green,
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 4",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            margin: EdgeInsets.only(bottom: .5.h,),
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Traffic Light",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 4
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Icon(
                                  Icons.hourglass_empty,
                                  size: 35,
                                  color: grayDark.withOpacity(.6),
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 5",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            child: Text(
                                              "Coin game (l.v2) ",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset(
                                              'assets/images/start.png',
                                              width: 55,
                                              height: 25,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 5
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  Icons.done_outline_sharp,
                                  size: 35,
                                  color: green,
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 6",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            margin: EdgeInsets.only(bottom: .5.h,),
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Use puzzles 35 peices ",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 6
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  Icons.done_outline_sharp,
                                  size: 35,
                                  color: green,
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 7",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            margin: EdgeInsets.only(bottom: .5.h,),
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Traffic light",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 7
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: white,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(3, 5),
                                    spreadRadius: 1,
                                  )
                                ],
                              ),
                              child: const Icon(
                                Icons.done_outline_sharp,
                                size: 35,
                                color: green,
                              ),
                            ),
                            SizedBox(
                              width: 67.w,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                    SizedBox(height: 1.h),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Session 8",
                                          overflow: TextOverflow.clip,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          alignment: Alignment.center,
                                          width: 65.w,
                                          margin: EdgeInsets.only(bottom: .5.h,),
                                          padding: const EdgeInsets.all(5),
                                          child: Text(
                                            "Connect Dots",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ]
                              ),
                            ),
                          ]
                        ),
                      ),                // 8
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Icon(
                                  Icons.hourglass_empty,
                                  size: 35,
                                  color: grayDark.withOpacity(.6),
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 9",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            child: Text(
                                              "Coin game (l.v3) ",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset(
                                              'assets/images/start.png',
                                              width: 55,
                                              height: 25,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 9
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  Icons.done_outline_sharp,
                                  size: 35,
                                  color: green,
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 10",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            margin: EdgeInsets.only(bottom: .5.h,),
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Traffic Light",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 10
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  Icons.done_outline_sharp,
                                  size: 35,
                                  color: green,
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 11",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            margin: EdgeInsets.only(bottom: .5.h,),
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Connect Dots",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 11
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Icon(
                                  Icons.hourglass_empty,
                                  size: 35,
                                  color: grayDark.withOpacity(.6),
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 12",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            child: Text(
                                              "Coin game (l.v4) ",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset(
                                              'assets/images/start.png',
                                              width: 55,
                                              height: 25,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 12
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  Icons.done_outline_sharp,
                                  size: 35,
                                  color: green,
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 13",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            margin: EdgeInsets.only(bottom: .5.h,),
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Use puzzles 35 peices ",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 13
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: const Icon(
                                  Icons.done_outline_sharp,
                                  size: 35,
                                  color: green,
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 14",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            margin: EdgeInsets.only(bottom: .5.h,),
                                            padding: const EdgeInsets.all(5),
                                            child: Text(
                                              "Connect Dots",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 14
                      SizedBox(height: 2.h),
                      Container(
                        decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x33000000),
                                      offset: Offset(3, 5),
                                      spreadRadius: 1,
                                    )
                                  ],
                                ),
                                child: Icon(
                                  Icons.hourglass_empty,
                                  size: 35,
                                  color: grayDark.withOpacity(.6),
                                ),
                              ),
                              SizedBox(
                                width: 67.w,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 1.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Session 15",
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: 65.w,
                                            child: Text(
                                              "Coin game (l.v5) ",
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: Image.asset(
                                              'assets/images/start.png',
                                              width: 55,
                                              height: 25,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ]
                                ),
                              ),
                            ]
                        ),
                      ),                // 15
                    ]
                  ),
                )
              ),
              // Container(
              //   width: 100.w,
              //   height: 85.h,
              //   padding: const EdgeInsets.all(15),
              //   child: NestedScrollView(
              //     headerSliverBuilder: (_, ch) {
              //       return [];
              //     },
              //     body: GridView.builder(
              //       itemCount: 5,
              //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //         childAspectRatio: 1,
              //         crossAxisCount: 1,
              //         mainAxisSpacing: 10,
              //         mainAxisExtent: 15.h,
              //       ),
              //       itemBuilder: (_, i) {
              //         return Container(
              //           decoration: BoxDecoration(
              //             color: white,
              //             borderRadius: BorderRadius.circular(10)
              //           ),
              //           padding: const EdgeInsets.all(5),
              //           child: Row(
              //             children: [
              //               Container(
              //                 padding: const EdgeInsets.all(5),
              //                 decoration: BoxDecoration(
              //                   borderRadius: BorderRadius.circular(20),
              //                   color: white,
              //                   boxShadow: const [
              //                     BoxShadow(
              //                       blurRadius: 4,
              //                       color: Color(0x33000000),
              //                       offset: Offset(3, 5),
              //                       spreadRadius: 1,
              //                     )
              //                   ],
              //                 ),
              //                 child: const Icon(
              //                   Icons.done_outline_sharp,
              //                   size: 35,
              //                   color: green,
              //                 ),
              //               ),
              //               SizedBox(
              //                 width: 67.w,
              //                 child: Column(
              //                   mainAxisAlignment: MainAxisAlignment.center,
              //                   children: [
              //                     SizedBox(height: 1.h),
              //                     Row(
              //                       mainAxisAlignment: MainAxisAlignment.center,
              //                       children: [
              //                         Text(
              //                           "Session ${i+1}",
              //                           overflow: TextOverflow.clip,
              //                           textAlign: TextAlign.center,
              //                           style: TextStyle(
              //                             fontSize: 22.sp,
              //                             fontWeight: FontWeight.bold,
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                     Row(
              //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                       children: [
              //                         Container(
              //                           alignment: Alignment.center,
              //                           width: 65.w,
              //                           margin: EdgeInsets.only(bottom: .5.h,),
              //                           padding: const EdgeInsets.all(5),
              //                           child: Text(
              //                             "Use puzzle 20 peices",
              //                             overflow: TextOverflow.clip,
              //                             textAlign: TextAlign.center,
              //                             style: TextStyle(
              //                               fontSize: 20.sp,
              //                             ),
              //                           ),
              //                         ),
              //                       ],
              //                     ),
              //                   ],
              //                 ),
              //               ),
              //             ]
              //           ),
              //         );
              //       }
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
