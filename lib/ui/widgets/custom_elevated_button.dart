import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final void Function()? callback;
  const CustomElevatedButton({
    Key? key,
    this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: callback,
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(const Color.fromARGB(106, 28, 0, 105)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
                side: BorderSide(color: Color.fromARGB(255, 148, 140, 140)))),
        side: MaterialStateProperty.all(
          const BorderSide(
            color: Color.fromARGB(255, 189, 186, 186),
            width: 2,
          ),
        ),
      ),
      child: const Text(
        "Send Data",
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
