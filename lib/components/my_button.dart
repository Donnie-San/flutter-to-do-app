import "package:flutter/material.dart";

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Colors.purple[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: const Color.fromARGB(0, 0, 0, 0), width: 2),
      ),
      child: Text(
        text,
        style: TextStyle(color: Color.fromARGB(255, 27, 27, 27), fontSize: 16),
      ),
    );
  }
}
