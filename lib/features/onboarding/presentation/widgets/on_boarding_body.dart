import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/size_config.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/features/onboarding/presentation/widgets/custom_indicator.dart';
import 'package:fruits_market/features/onboarding/presentation/widgets/custom_page_view.dart';

class OnBoardinViewBody extends StatefulWidget {
  const OnBoardinViewBody({Key? key}) : super(key: key);

  @override
  State<OnBoardinViewBody> createState() => _OnBoardinViewBodyState();
}

class _OnBoardinViewBodyState extends State<OnBoardinViewBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.defaultSize! * 15,
          child: CustomIndicator(
            dotIndex: hasClientCheck() ? pageController!.page : 0,
          ),
        ),
        Visibility(
          visible: hasClientCheck()
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 10,
            right: 32,
            child: const Text(
              'Skip',
              style: TextStyle(
                fontSize: 14,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          bottom: SizeConfig.defaultSize! * 5,
          child: CustomGeneralButton(
            text: hasClientCheck()
                ? (pageController?.page == 2 ? 'Get Started' : 'Next')
                : 'Next',
          ),
        ),
      ],
    );
  }

  bool hasClientCheck() => pageController!.hasClients;
}
