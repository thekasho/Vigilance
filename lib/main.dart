import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get_storage/get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:vig/binding/initial_binding.dart';
import 'package:vig/helpers/helpers.dart';
import 'package:vig/screens/screens.dart';

void main() async {
  await GetStorage.init();

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orient, type) {
        return GetMaterialApp(
          title: kAppName,
          debugShowCheckedModeBanner: false,
          initialBinding: InitialBinding(),
          initialRoute: '/',
          getPages: [
            GetPage(name: screenHome, page: () => const HomeScreen()),
            GetPage(name: screenChooseType, page: () => const ChooseTypeScreen())
          ],
        );
      }
    );
  }
}
