import 'package:bookly/Core/utils/app_router.dart';
import 'package:bookly/Core/utils/assets.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:get/get.dart';

import 'scliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> SclidingAnimation;
  @override
  void initState() {
    super.initState();
    initSclidingAnimation();

    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();

    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 5,
        ),
        SclidingText(SclidingAnimation: SclidingAnimation),
      ],
    );
  }

  void initSclidingAnimation() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    SclidingAnimation = Tween<Offset>(begin: (Offset(0, 2)), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    // SclidingAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 3), () {
      // Get.to(const HomeView(),
      //     transition: Transition.fade, duration: KTransitionDuration);
      GoRouter.of(context).push(AppRouter.KHomeView);
    });
  }
}
