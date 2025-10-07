import "package:flutter/material.dart";
import "package:to_do_app/components/my_button.dart";

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Create a new task",
        style: TextStyle(
          color: Color.fromARGB(255, 167, 167, 167),
          fontSize: 24,
        ),
      ),
      icon: Icon(Icons.add_alert, size: 38),
      backgroundColor: Color.fromARGB(255, 27, 27, 27),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            style: TextStyle(
              color: Color.fromARGB(255, 167, 167, 167),
              fontSize: 16,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Type a new task",
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(text: "Save", onPressed: onSave),
              SizedBox(width: 10),
              MyButton(text: "Cancel", onPressed: onCancel),
            ],
          ),
        ],
      ),
    );
  }
}
