part of '../../screens.dart';

class TeacherTestsScreen extends StatefulWidget {
  const TeacherTestsScreen({super.key});

  @override
  State<TeacherTestsScreen> createState() => _TeacherTestsScreenState();
}

class _TeacherTestsScreenState extends State<TeacherTestsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: orangeBtn,
          leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.chevronLeft,
              color: Colors.black,
              size: 22.sp,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          centerTitle: true,
          title: Text(
            "Test Lists",
            style: TextStyle(
              fontSize: 23.sp,
              color: black,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Get.toNamed(screenTeacherAddTests),
          backgroundColor: orange,
          child: const Icon(
            FontAwesomeIcons.plus,
            color: black,
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: yellowBck,
          child: Column(
            children: [
              SizedBox(
                width: 100.w,
                height: 85.h,
                child: NestedScrollView(
                  headerSliverBuilder: (_, ch) {
                    return [];
                  },
                  body: GridView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: 2,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1,
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 15.h,
                    ),
                    itemBuilder: (_, i) {
                      return Container(
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(5)
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 20.w,
                              height: 15.h,
                              padding: const EdgeInsets.all(5),
                              child: CachedNetworkImage(
                                imageUrl: "https://thumbs.dreamstime.com/b/d-small-people-conduct-test-conducting-pushing-red-button-control-board-having-word-rendering-isolated-white-background-156566429.jpg",
                                errorWidget: (_, i, e) {
                                  return Icon(
                                    FontAwesomeIcons.image,
                                    size: 13.sp,
                                    color: Colors.grey,
                                  );
                                },
                              ),
                            ),
                            Text(
                              "Test #${i+1}",
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 10.w,
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: orange,
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.edit_note, color: black),
                                    color: orange,
                                    focusColor: white,
                                    autofocus: true,
                                    padding: EdgeInsets.all(5),
                                    onPressed: (){},
                                  ),
                                ),
                                SizedBox(width: 3.w),
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
                                    padding: EdgeInsets.all(5),
                                    onPressed: (){},
                                  ),
                                ),
                                SizedBox(width: 3.w),
                              ],
                            ),
                          ],
                        ),
                      );
                    }
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
