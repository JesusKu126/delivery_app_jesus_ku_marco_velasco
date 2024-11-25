import 'package:delivery_app_jesus_ku_marco_velasco/auth/login_or_register_page.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //user is logged in
          if (snapshot.hasData) {
            return const HomePage();
          }

          //user not logged in
          else {
            return const LoginOrRegisterPage();
          }
        },
      ),
    );
  }
}
