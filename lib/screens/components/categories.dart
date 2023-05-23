import 'package:flutter/material.dart';

import '../../constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Handbag", "Jewellery", "Footwear", "Dresses"];
  int isSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 28,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) => buildCategory(index)),
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
        onTap: () {
          setState(() {
            isSelectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                categories[index],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isSelectedIndex == index
                        ? kTextColor
                        : kTextLightColor),
              ),
              Container(
                  margin: const EdgeInsets.only(top: kDefaultPaddin / 4),
                  height: 2,
                  width: 30,
                  color: isSelectedIndex == index
                      ? Colors.black
                      : Colors.transparent)
            ],
          ),
        ),
      );
}
