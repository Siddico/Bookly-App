import 'package:bookly/Core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingAndItsNumber extends StatelessWidget {
  const RatingAndItsNumber(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
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
        Opacity(
          opacity: 0.50,
          child: Text('(3468)',
              style: styles.textStyle14.copyWith(fontWeight: FontWeight.w600)),
        )
      ],
    );
  }
}
