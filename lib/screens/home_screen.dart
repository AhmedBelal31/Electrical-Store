import 'package:electrical_store_app/screens/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants.dart';
import '../models/product_model.dart';
import '../widgets/product_cart.dart';

class HomeScreen extends StatelessWidget {
  //const HomeScreen({Key? key}) : super(key: key);
  var appbarFontStyle = GoogleFonts.almarai(
    fontSize: 20,
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homaAppBar(),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 90),
                  decoration: const BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )),
                ),
                ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) => ProductCart(
                    product: products[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsScreen(product: products[index]),
                      ),
                    ),
                  ),
                  itemCount: products.length,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

AppBar homaAppBar() => AppBar(
      title: Text(
        "مرحبا بكم بمتجر الالكترونيات ",
        style: GoogleFonts.getFont(
          'Almarai',
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.all(12.0),
          child: Icon(Icons.menu),
        ),
      ],
      backgroundColor: kPrimaryColor,
      foregroundColor: Colors.white,
      elevation: 0,
    );
