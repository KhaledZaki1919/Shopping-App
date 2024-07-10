import 'package:flutter/material.dart';
import 'package:shoping/src/utils/custom_buttom.dart';
import 'package:shoping/src/views/screens/home_screen/login_page.dart';
import 'package:shoping/src/views/widgets/build_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoarding extends StatelessWidget {
  OnBoarding({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: PageView(
                controller: _controller,
                children: [
                  BuildScreen(
                      Title_Text:
                          'Your gateway to a world of exceptional footwear, where you can find the latest releases from global brands at the touch of a button.'),
                  BuildScreen(
                      Title_Text:
                          'With the Sneakers app, say goodbye to long shopping trips! Shop for the shoes you dream of from the comfort of your own home and enjoy a hassle-free and fast shopping experience.'),
                  BuildScreen(
                      Title_Text:
                          'More than just a store, Sneakers is a destination for fashion and style enthusiasts, offering tips and recommendations to suit your style and taste.'),
                ],
              ),
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: const ExpandingDotsEffect(activeDotColor: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: CustomButtom(
              text: 'SHOP NOW',
              function: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
