import 'package:bookly/Core/utils/styles.dart';
import 'package:bookly/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
      child: Column(
        children: [
          const CustomSearchTextField(),
          const SizedBox(
            height: 15,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Result', style: styles.textStyle18)),
          const SizedBox(
            height: 10,
          ),
          Expanded(child: const SearchResultListView())
        ],
      ),
    );
  }
}
