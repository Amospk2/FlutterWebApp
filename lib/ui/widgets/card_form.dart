import 'package:flutter/material.dart';
import 'package:webtest/ui/widgets/custom_elevated_button.dart';
import 'package:webtest/ui/widgets/row_form_item.dart';
import 'package:webtest/ui/widgets/single_form_item.dart';

class CardForm extends StatelessWidget {
  const CardForm({
    super.key,
    required this.animationControllerOne,
    required this.screenSize,
  });

  final AnimationController animationControllerOne;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: animationControllerOne.value,
      child: AnimatedSlide(
        duration: const Duration(milliseconds: 300),
        offset: animationControllerOne.value > 0.1
            ? Offset.zero
            : Offset.fromDirection(0.0, -0.1),
        child: Align(
          child: SizedBox(
            width: screenSize.width / 2,
            child: Card(
              margin: const EdgeInsets.all(15),
              color: const Color.fromARGB(106, 28, 0, 105),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(10),
                    children: [
                      const RowFormItem(titles: ["Name", "Email"]),
                      const SizedBox(
                        height: 25,
                      ),
                      const SingleFormItem(title: "Password"),
                      const SizedBox(
                        height: 30,
                      ),
                      const SingleFormItem(title: "Confirm Password"),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: screenSize.width / 30,
                        width: screenSize.height / 8,
                        child: CustomElevatedButton(callback: () {}),
                      )
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

