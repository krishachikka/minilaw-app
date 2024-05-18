import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:minilaw/firebase_options.dart';
import 'package:minilaw/src/common_widgets/loader.dart';
import 'package:minilaw/src/features/authentication/screen/homepage/homepage.dart';
import 'package:minilaw/src/repo/auth_repo/authrepo.dart';
import 'package:minilaw/src/repo/user_repo/userrepo.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepo()));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        defaultTransition: Transition.rightToLeftWithFade,
        transitionDuration: const Duration(milliseconds: 500),
        initialRoute: '/',
        getPages: [
          GetPage(name: '/', page: () => HomePage()),
        ],
        initialBinding: InitialBinding(),
        home: MyLoader(),
    );
  }

}
class InitialBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(userRepo());
  }
}