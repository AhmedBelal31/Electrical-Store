import 'package:electrical_store_app/models/product_model.dart';
import 'package:electrical_store_app/screens/details_screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ProductCart extends StatelessWidget {
  int? itemId;
  final Product product;
  final Function() press;

  ProductCart({this.itemId, required this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: press,
      child: Container(
        height: 190,
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 25),
                      blurRadius: 30,
                      color: Colors.black12)
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 160.0,
                width: 200.0,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Text(
                        product.subTitle,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 5),
                        // width: 100,
                        // alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22.0),
                        ),
                        child: Text(
                          'السعر : \$${product.price}',
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// Widget ProductCart(BuildContext context, Product model) {
//   Size size = MediaQuery.of(context).size;
//   return Container(
//     height: 190,
//     margin: const EdgeInsets.all(20),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(40.0),
//     ),
//     child: Stack(
//       alignment: Alignment.bottomCenter,
//       children: [
//         GestureDetector(
//           onTap: () {
//             Navigator.push(context,
//               MaterialPageRoute(builder:(context )=>DetailsScreen(id: model.id,) ),
//             );
//           },
//           child: Container(
//             height: 166,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(20.0),
//               boxShadow: const [
//                 BoxShadow(
//                     offset: Offset(0, 25),
//                     blurRadius: 30,
//                     color: Colors.black12)
//               ],
//             ),
//           ),
//         ),
//         Positioned(
//           top: 0,
//           left: 0,
//           child: Container(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             height: 160.0,
//             width: 200.0,
//             child: Image.asset(
//               model.image,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//         Positioned(
//           right: 0,
//           bottom: 0,
//           child: SizedBox(
//             height: 136,
//             width: size.width - 200,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Text(
//                     model.title,
//                     style: Theme.of(context).textTheme.bodyLarge,
//                   ),
//                 ),
//                 const Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Text(
//                     model.subTitle,
//                     style: Theme.of(context).textTheme.bodySmall,
//                   ),
//                 ),
//                 const Spacer(),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Container(
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
//                     // width: 100,
//                     // alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       color: kSecondaryColor,
//                       borderRadius: BorderRadius.circular(22.0),
//                     ),
//                     child: Text('\$ ${model.price}السعر'),
//                   ),
//                 ),
//                 const Spacer(),
//               ],
//             ),
//           ),
//         )
//       ],
//     ),
//   );
// }
