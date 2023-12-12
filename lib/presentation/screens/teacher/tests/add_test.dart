part of '../../screens.dart';

class TecherAddTestScreen extends StatefulWidget {
  const TecherAddTestScreen({super.key});

  @override
  State<TecherAddTestScreen> createState() => _TecherAddTestScreenState();
}

class _TecherAddTestScreenState extends State<TecherAddTestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: yellowBck,
          leading: IconButton(
            icon: Icon(
              FontAwesomeIcons.chevronLeft,
              color: Colors.black,
              size: 22.sp,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
              icon: Icon(
                FontAwesomeIcons.plus,
                color: Colors.black,
                size: 22.sp,
              ),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
          centerTitle: true,
          title: Text(
            "Add Test",
            style: TextStyle(
              fontSize: 23.sp,
              color: black,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: yellowBck,
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }
}
