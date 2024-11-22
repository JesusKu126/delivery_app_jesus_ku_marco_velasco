import 'package:delivery_app_jesus_ku_marco_velasco/components/my_button.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/components/my_textfield.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.lock_open_rounded,
                size: 100, color: Theme.of(context).colorScheme.inversePrimary),
            const SizedBox(height: 25),

            // message app slogan

            Text(
              'Los Repas App',
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 25,
            ),
            MyTextfield(
                controller: emailController,
                hintText: 'Correo electrónico',
                obsecureText: false),
            const SizedBox(
              height: 25,
            ),

            MyTextfield(
                controller: passwordController,
                hintText: 'Contraseña',
                obsecureText: true),

            const SizedBox(
              height: 25,
            ),

            MyButton(onTap: login, text: 'Iniciar sesión'),

            const SizedBox(
              height: 25,
            ),

            Text(
              '¿No eres miembro aún?',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(
              width: 4,
            ),

            GestureDetector(
              onTap: widget.onTap,
              child: Text(
                'Registrate ahora',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ));
  }
}
