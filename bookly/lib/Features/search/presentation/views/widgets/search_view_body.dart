import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  SearchViewBody({super.key});
  var SearchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 15,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Result', style: styles.textStyle18)),
          SizedBox(
            height: 10,
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
