import 'package:flutter/material.dart';
import 'package:glowmoure_mobile/screens/login.dart';
import 'package:glowmoure_mobile/screens/menu.dart';
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_){
        CookieRequest request = CookieRequest();
        return request;  
      },
      child:MaterialApp(
        title: 'Glowmoure',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
                primarySwatch: Colors.brown,
          ).copyWith(secondary: const Color.fromARGB(255, 247, 198, 130)),
        ),
        home: const LoginPage(),
      ),
    );
  }
}