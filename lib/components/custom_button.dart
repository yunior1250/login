import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.btnText,
  });
  final String btnText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Clikeado');
      },
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 38, 157, 212),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            btnText,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
