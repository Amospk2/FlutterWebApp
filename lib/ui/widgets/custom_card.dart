import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String text;
  final Icon icon;
  final void Function()? callback;
  const CustomCard({
    super.key,
    required this.text,
    required this.icon, this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(15),
      color: const Color.fromARGB(106, 28, 0, 105),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          Text(
            text,
            style: const TextStyle(
                color: Color.fromARGB(255, 163, 161, 212), fontSize: 25),
          ),
          TextButton(
            onPressed: () {},
            child: const Text("See More"),
          )
        ],
      ),
    );
  }
}
