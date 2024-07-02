import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingAndItsNumber extends StatelessWidget {
  const RatingAndItsNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          '4.8',
          style: styles.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(3468)',
          style: styles.textStyle14.copyWith(color: Color(0xff707070)),
        )
      ],
    );
  }
}
