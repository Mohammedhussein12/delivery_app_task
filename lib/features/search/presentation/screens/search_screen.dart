import 'package:delivery_app_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SearchScreen extends SearchDelegate<String> {
  SearchScreen();

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () => close(context, ''),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: Icon(
            Icons.clear,
            color: AppColors.lightGreyColor,
          ),
          onPressed: () => query = '',
        ),
    ];
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text('You searched for "$query"'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty ? [] : List.generate(3, (index) => query);

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (_, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index];
            showResults(context);
          },
        );
      },
    );
  }
}
