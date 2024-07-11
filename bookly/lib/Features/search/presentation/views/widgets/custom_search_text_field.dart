import 'package:bookly/Features/search/presentation/manager/searched_books_cubit/searched_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../Core/utils/service_locator.dart';
import '../../../../../Core/utils/styles.dart';
import '../../../../home/data/repos/home_repo_implement.dart';
import 'search_result_list_view.dart';

class CustomSearchTextField extends StatefulWidget {
  CustomSearchTextField({super.key});

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  var SearchController = TextEditingController();
  String searchValue = '';
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {
        searchValue = value;
        setState(() {});

        searchValue == value
            ? BlocProvider.of<SearchedBooksCubit>(context)
                .fetchSearchedBooks(searchValue)
            : const Center(child: Text('Not Found'));
        // var title = widget.bookModel.volumeInfo.title;
        // print('title$title');
        // _searchController.clear();
      },
      controller: SearchController,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputMethod(),
        focusedBorder: buildOutlineInputMethod(),
        hintText: 'Search',
        hintStyle: styles.textStyle18,
        suffixIcon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputMethod() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: Colors.white));
  }
}
