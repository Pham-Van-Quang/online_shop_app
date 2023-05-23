import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';

import '../../models/product.dart';
import 'categories.dart';
import 'item_cart.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Container(
          color: const Color.fromRGBO(33, 150, 243, 1),
          child: Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.75,
                    mainAxisExtent: kDefaultPaddin,
                    mainAxisSpacing: kDefaultPaddin,
                  ),
                  itemBuilder: (context, index) => ItemCard(
                        press: null,
                        product: products[index],
                      )),
            ),
          ),
        )
      ],
    );
  }
}
