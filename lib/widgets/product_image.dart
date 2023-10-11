import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  //const ProductImage({Key? key}) : super(key: key);
  final String image;

  ProductImage({required this.image});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        height: size.width * .8,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Container(
            height: size.width * .7,
            width: size.width * .7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            fit: BoxFit.cover,
            height: size.width * .75,
            width: size.width * .75,
          ),
        ]),
      ),
    );
  }
}
