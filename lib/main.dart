import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wsos_women_safety/db/share_pref.dart';
// import 'package:wsos_women_safety/child/bottom_screens/child_home_page.dart';
import 'package:wsos_women_safety/child/child_login_screen.dart';
import 'package:wsos_women_safety/firebase_options.dart';
import 'package:wsos_women_safety/parent/parent_home_screen.dart';
import 'package:wsos_women_safety/utils/constants.dart';
import 'child/bottom_page.dart';

final navigatorkey = GlobalKey<ScaffoldMessengerState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await MySharedPrefference.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WSOS Women Safety',
      // scaffoldMessengerKey: navigatorkey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.firaSansTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: MySharedPrefference.getUserType(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.data == "") {
            return LoginScreen();
          }
          if (snapshot.data == "child") {
            return BottomPage();
          }
          if (snapshot.data == "parent") {
            return ParentHomeScreen();
          }

          return progressIndicator(context);
        },
      ),
    );
  }
}

// class CheckAuth extends StatelessWidget {
//   // const CheckAuth({Key? key}) : super(key: key);

//   checkData() {
//     if (MySharedPrefference.getUserType() == 'parent') {}
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
