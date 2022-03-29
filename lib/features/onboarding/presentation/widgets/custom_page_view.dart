import 'package:flutter/material.dart';
import 'package:fruits_market/features/onboarding/presentation/widgets/page_view_items.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, @required this.pageController})
      : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageViewItem(
          title: 'E Shopping',
          subtitle: 'Explore top Phone Accesory',
          image: 'assets/images/onboarding1.png',
        ),
        PageViewItem(
          title: 'Best price',
          subtitle: 'Find your product with the best price',
          image: 'assets/images/onboarding2.png',
        ),
        PageViewItem(
          title: 'Deliverry Time',
          subtitle: 'Fast delivering to your Place',
          image: 'assets/images/onboarding3.png',
        ),
      ],
    );
  }
}
