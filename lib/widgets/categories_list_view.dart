import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.jpg',name: 'Business'),
    CategoryModel(image: 'assets/entertainment.avif',name: 'Entertainment'),
    CategoryModel(image: 'assets/science.avif',name: 'Science'),
    CategoryModel(image: 'assets/health.avif',name: 'Health'),
    CategoryModel(image: 'assets/sports.jpg',name: 'Sports'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return  CategoryCard(
            category: categories[index],
          );
        },
        separatorBuilder: (context, index) => SizedBox(width: 10,),
        itemCount: categories.length,
      ),
    );
  }
}