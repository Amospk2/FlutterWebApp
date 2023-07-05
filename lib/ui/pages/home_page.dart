import 'package:flutter/material.dart';
import 'package:webtest/core/utils.dart';
import 'package:webtest/ui/widgets/card_form.dart';
import 'package:webtest/ui/widgets/card_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController animationControllerOne;
  late AnimationController animationControllerTwo;
  final PageController _pageController = PageController();
  List<double> animationFlags = [0.0, 0.0];

  @override
  initState() {
    super.initState();
    animationControllerOne = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    animationControllerTwo = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );

    animationControllerOne.forward();
    animationControllerOne.addListener(() {
      if (animationControllerOne.value > 0.5 &&
          animationControllerTwo.isDismissed) {
        animationControllerTwo.forward();
      } else {
        setState(() {});
      }
    });

    animationControllerTwo.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(106, 28, 0, 105),
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                // for smaller screen sizes
                backgroundColor: const Color.fromARGB(220, 0, 199, 43),
                elevation: 0,
                title: Text(
                  'EXPLORE',
                  style: TextStyle(
                    color: Colors.blueGrey.shade100,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 3,
                  ),
                ),
              )
            : PreferredSize(
                preferredSize: Size(screenSize.width, 1000),
                child: Container(
                  color: const Color.fromARGB(106, 28, 0, 105),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Flutter Simple Register',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
        body: Row(
          children: [
            CardForm(
                animationControllerOne: animationControllerOne,
                screenSize: screenSize
            ),
            CardInfo(
                animationControllerTwo: animationControllerTwo,
                screenSize: screenSize,
                pageController: _pageController,
                animationControllerOne: animationControllerOne
            ),
          ],
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
