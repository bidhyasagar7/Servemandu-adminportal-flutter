import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:servemandu_admin_web_portal1/authentication/login_screen.dart';
import 'package:servemandu_admin_web_portal1/main_screens/home_screen.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: 'AIzaSyBGXJR5wHn806JtwwQmheop2OkRAWMunfQ',
        appId: '1:1050133925599:web:1e5c5a53a6cee45330636a',
        messagingSenderId: '1050133925599',
        projectId: 'servemandu-c8218',
        authDomain: 'servemandu-c8218.firebaseapp.com',
        storageBucket: 'servemandu-c8218.appspot.com',
        measurementId: 'G-TVZ857Z0XQ',
      )
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Web Portal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FirebaseAuth.instance.currentUser == null ? const LoginScreen() : const HomeScreen(),
    );
  }
}


