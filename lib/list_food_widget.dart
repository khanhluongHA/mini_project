import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_mini/food_item_widget.dart';
import 'package:project_mini/main_content_widget.dart';
import 'package:project_mini/models/food_entity.dart';
import 'package:project_mini/models/items_food_entity.dart';

class ListFoodWidget extends StatelessWidget {
  const ListFoodWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 160,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: listFood.length,
                separatorBuilder: (context, index) => const SizedBox(
                  width: 10,
                ),
                itemBuilder: (context, index) {
                  return FoodItemWidget(
                    foodInfo: listFood[index],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'Sort by',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
                Spacer(),
                Text(
                  'Most Popular',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.unfold_more,
                  color: Colors.red,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 700,
              child: GridView.builder(
                padding: const EdgeInsets.all(0),
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisExtent: 200,
                  mainAxisSpacing: 15,
                ),
                itemCount: dishLists.length,
                itemBuilder: (context, index) {
                  return MainContentWidget(
                    listFood: dishLists[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
