// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class RowFormItem extends StatelessWidget {
  final List<String> titles;
  const RowFormItem({
    Key? key,
    required this.titles,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Column(
          children: [
            Text(
              titles[0],
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
            const TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                focusColor: Colors.white,
                labelStyle: TextStyle(color: Colors.white),
                fillColor: Colors.white,
                iconColor: Colors.white,
                hoverColor: Colors.white,
                prefixIconColor: Colors.white,
                suffixIconColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                  
                ),
              ),
            ),
          ],
        )),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              titles[1],
              style: const TextStyle(color: Colors.white, fontSize: 25),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ],
        )),
      ],
    );
  }
}
