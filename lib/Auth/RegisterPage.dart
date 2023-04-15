import 'package:flutter/material.dart';
import 'package:login_one/components/custom_button.dart';
import 'package:login_one/components/custom_textfield.dart';
import 'package:lottie/lottie.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 137, 225, 236),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: width * 0.9,
              height: height / 3,
              child: Lottie.network(
                  'https://assets8.lottiefiles.com/packages/lf20_rlnfpru3.json'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Registrarse",
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ),
            const SizedBox(
              height: 15,
            ),
            customTextField(
              controller: emailController,
              hintText: 'Email',
              icono: const Icon(Icons.alternate_email),
              obscure: false,
            ),
            const SizedBox(
              height: 20,
            ),
            customTextField(
              controller: passwordController,
              hintText: 'Password',
              icono: const Icon(Icons.lock),
              obscure: true,
            ),
            const SizedBox(
              height: 20,
            ),
            customTextField(
              controller: confirmPasswordController,
              hintText: 'Confirmar Password',
              icono: const Icon(Icons.lock),
              obscure: true,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Ya tiene cuenta?",
                  style: TextStyle(color: Colors.blue),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Ingrezar',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomButton(btnText: "Registrarce")
          ],
        ),
      )),
    );
  }
}
