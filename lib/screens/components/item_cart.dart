import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function? press;

  const ItemCard({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(kDefaultPaddin),
          decoration: BoxDecoration(
              color: product.color, borderRadius: BorderRadius.circular(16)),
          child: Image.asset(product.image),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
          child: Text(
            product.title,
            style: const TextStyle(color: kTextLightColor),
          ),
        ),
        Text(
          "\$${product.price}",
          style: const TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
