import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kusoed_demo_app/core/constants.dart';
import 'package:kusoed_demo_app/pages/login.dart';
import 'package:kusoed_demo_app/pages/home.dart';
import 'package:kusoed_demo_app/core/services/auth_session_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'KUSOED APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: AppColors.primaryBlue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: FutureBuilder<bool>(
        future: AuthSessionStorage.isLoggedIn(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          final loggedIn = snapshot.data == true;
          return loggedIn ? const HomePage() : const LoginPage();
        },
      ),
    );
  }

}