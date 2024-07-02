import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(left: 24.0, right: 24, top: 35, bottom: 25),
      child: Row(
        children: [
          Image.asset(
            AssetsData.logo,
            height: 18.1, //16.1
            width: 75,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            ),
            color: Colors.white,
            iconSize: 24,
          )
        ],
      ),
    );
  }
}
