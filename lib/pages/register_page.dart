import 'package:delivery_app_jesus_ku_marco_velasco/components/my_button.dart';
import 'package:delivery_app_jesus_ku_marco_velasco/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    //Controllers
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPassController = TextEditingController();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.lock_open_rounded,
                size: 100, color: Theme.of(context).colorScheme.inversePrimary),

            const SizedBox(
              height: 25,
            ),

            // message app slogan
            Text(
              'Estamos creando una cuenta para ti',
              style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),

            const SizedBox(
              height: 25,
            ),

            // email textfields
            MyTextfield(
                controller: emailController,
                hintText: 'Correo electrónico',
                obsecureText: false),

            const SizedBox(
              height: 25,
            ),

            //password textfield
            MyTextfield(
                controller: passwordController,
                hintText: 'Contraseña',
                obsecureText: true),

            const SizedBox(
              height: 25,
            ),

            //Confirm password textfield
            MyTextfield(
                controller: confirmPassController,
                hintText: 'Confirma tu contraseña',
                obsecureText: true),

            const SizedBox(
              height: 25,
            ),

            //sign Up button
            MyButton(onTap: () {}, text: 'Registrarse'),

            const SizedBox(
              height: 25,
            ),

            // already have an account? Login now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '¿Ya tienes una cuenta?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    'Iniciar sesión',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
