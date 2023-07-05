import 'package:flutter/material.dart';

class SingleFormItem extends StatelessWidget {
  final String title;
  const SingleFormItem({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
    Text(
      title,
      style:
          const TextStyle(color: Colors.white, fontSize: 25),
    ),
    const TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
      ],
    );
  }
}
