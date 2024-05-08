import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SafeArea(
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              NewsListViewBuilder(
                category: category,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
