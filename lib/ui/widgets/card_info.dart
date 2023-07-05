import 'package:flutter/material.dart';
import 'package:webtest/ui/widgets/cassousel_widget.dart';

class CardInfo extends StatelessWidget {
  const CardInfo({
    super.key,
    required this.animationControllerTwo,
    required this.screenSize,
    required PageController pageController,
    required this.animationControllerOne,
  }) : _pageController = pageController;

  final AnimationController animationControllerTwo;
  final Size screenSize;
  final PageController _pageController;
  final AnimationController animationControllerOne;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: animationControllerTwo.value,
      child: AnimatedSlide(
        duration: const Duration(milliseconds: 300),
        offset: animationControllerTwo.value > 0.1
            ? Offset.zero
            : Offset.fromDirection(0.0, -0.1),
        child: Stack(
          children: [
            SizedBox(
              width: screenSize.width / 2,
              child: CarouselWidget(pageController: _pageController, animationControllerOne: animationControllerOne, animationControllerTwo: animationControllerTwo),
            ),
            Center(
                child: SizedBox(
              width: screenSize.width / 2 - 15,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: screenSize.height / 2,
                    color: const Color.fromARGB(29, 199, 199, 199),
                    margin: const EdgeInsets.only(left: 15),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _pageController.previousPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                    ),
                  ),
                  Container(
                    height: screenSize.height / 2,
                    color: const Color.fromARGB(29, 199, 199, 199),
                    margin: const EdgeInsets.only(left: 15),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeIn);
                      },
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

