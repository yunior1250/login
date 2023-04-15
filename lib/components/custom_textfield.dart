import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  customTextField({
    super.key,
    required this.controller,
    required this.obscure,
    required this.hintText,
    required this.icono,
  });
  TextEditingController controller = TextEditingController();
  final bool obscure;
  final String hintText;
  final Icon icono;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        cursorColor: const Color.fromARGB(255, 166, 109, 105),
        obscureText: obscure,
        controller: controller,
        decoration: InputDecoration(
            icon: icono,
            hintText: hintText,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                  style: BorderStyle.solid,
                  color: Color.fromARGB(255, 76, 190, 235)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.cyan),
            ),
            fillColor: const Color.fromARGB(255, 192, 214, 233),
            filled: true,
            hintStyle: const TextStyle(color: Colors.blue)),
      ),
    );
  }
}
