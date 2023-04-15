import 'package:flutter/material.dart';
import 'package:login_one/Auth/RegisterPage.dart';
import 'package:lottie/lottie.dart';

import '../components/custom_button.dart';
import '../components/custom_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 137, 225, 236),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(children: [
            const Text(
              'Primer Parcial de Sw1',
              style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'RobotoMono',
                  fontWeight: FontWeight.w800),
            ),

            //animacion
            Container(
              width: width * 0.9,
              height: height / 3,
              child: Lottie.network(
                  'https://assets8.lottiefiles.com/datafiles/W116cFFh27OXPMl/data.json'),
            ),
            const SizedBox(
              height: 20,
            ),
            //text font field
            const Text(
              "Autentciaion",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold),
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
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Quiere registrarse?",
                  style: TextStyle(color: Colors.blue),
                ),
                const SizedBox(
                  width: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),

            //have account
            //button
            const SizedBox(
              height: 25,
            ),
            const CustomButton(
              btnText: 'Logearce',
            )
          ]),
        ),
      )),
    );
  }
}
