import 'package:flutter/material.dart';

import 'screens/login_screen.dart';
import 'screens/navigation_screen.dart';
import 'screens/chat_screen.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      title: 'Travel Buddy',

      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

      initialRoute: '/',

      routes: {

        '/': (context) =>
        const LoginScreen(),

        '/navigation': (context) =>
        const NavigationScreen(),

        '/chat': (context) =>
        const ChatScreen(),
      },
    );
  }
}