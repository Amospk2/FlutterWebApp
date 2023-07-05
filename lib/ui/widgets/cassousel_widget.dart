import 'package:flutter/material.dart';
import 'package:webtest/ui/widgets/custom_card.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    super.key,
    required PageController pageController,
    required this.animationControllerOne,
    required this.animationControllerTwo,
  }) : _pageController = pageController;

  final PageController _pageController;
  final AnimationController animationControllerOne;
  final AnimationController animationControllerTwo;

  @override
  Widget build(BuildContext context) {
    return PageView(controller: _pageController, children: [
      CustomCard(
        icon: const Icon(
          Icons.menu_book_sharp,
          color: Colors.white,
          size: 150,
        ),
        text: "Create Your New Account",
        callback: () {},
      ),
      CustomCard(
        icon: const Icon(
          Icons.coffee,
          color: Colors.white,
          size: 150,
        ),
        text: "Take a coup of coffee",
        callback: () {},
      ),
      CustomCard(
        icon: const Icon(
          Icons.question_mark_rounded,
          color: Colors.white,
          size: 150,
        ),
        text: "Any Question?",
        callback: () {},
      )
    ]);
  }
}
