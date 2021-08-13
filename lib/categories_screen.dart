import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nom Nom Meals'),
      ),
      body: SafeArea(
        child: GridView(
          padding: const EdgeInsets.all(25),
          children: [
            ...DUMMY_CATEGORIES
                .map(
                  (catData) => CategoryItem(
                    color: catData.color,
                    title: catData.title,
                    id: catData.id,
                  ),
                )
                .toList(),
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    );
  }
}
