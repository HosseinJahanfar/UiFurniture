import 'package:flutter/material.dart';
import 'package:uifurniture/features/features_product/model/product_model.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            //*Background Clicked Item
            backgroundItem(size),
            //*Button arrow_back
            buttonArrorBack(context),
            //*Card Information Product
            informationProduct()
          ],
        ),
      ),
    );
  }

//!informationProduct
  Positioned informationProduct() {
    return Positioned(
      bottom: 75,
      left: 20,
      right: 20,
      child: Card(
        color: Colors.white,
        elevation: 15,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    productModel.image,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Text(
                    productModel.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      productModel.price,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(horizontal: 50)),
                      onPressed: () {},
                      child: const Text(
                        "Buy Now",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

//!buttonArrorBack
  Positioned buttonArrorBack(BuildContext context) {
    return Positioned(
      top: 10,
      left: 10,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Card(
          color: Colors.grey[900],
          elevation: 15,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

//!backgroundItem
  Opacity backgroundItem(Size size) {
    return Opacity(
      opacity: 0.8,
      child: Image.asset(
        productModel.image,
        width: double.infinity,
        height: size.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
