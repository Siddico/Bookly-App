import 'package:bookly/Core/utils/functions/launch_url.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../Core/widgets/custom_action_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
            text: 'Free',
            backGroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          )),
          Expanded(
              child: CustomButton(
            onpressed: () async {
              // Uri uri = Uri.parse(bookModel.volumeInfo!.previewLink!);
              // if (await canLaunchUrl(uri)) {
              //   await launchUrl(uri);
              // }
              launchCustomUrl(context, bookModel.volumeInfo!.previewLink!);
            },
            text: getText(bookModel),
            fontsize: 16,
            backGroundColor: Color(0xffef8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ))
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return "Not Available";
    } else {
      return "Free Preview";
    }
  }
}
