import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_mini/list_food_widget.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back),
                SizedBox(
                  width: 10,
                ),
                Text('Salad'),
              ],
            ),
            Icon(
              Icons.search,
              size: 30,
            )
          ],
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          return Future.delayed(
            const Duration(seconds: 5),
          );
        },
        child: ListFoodWidget(),
      ),
    );
  }
}
