//!ItemsCardWidget
import 'package:flutter/material.dart';
import 'package:uifurniture/features/features_detail/screen/detail_screen.dart';
import 'package:uifurniture/features/features_product/model/product_model.dart';

class ItemsCardWidget extends StatelessWidget {
  const ItemsCardWidget({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        margin:
            EdgeInsets.only(left: index == 0 ? 15 : 10, top: 5.0, bottom: 10.0),
        child: InkWell(
          onTap: () {
            //!Navigate Page DetailScreen
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                return DetailScreen(
                  productModel: product[index],
                );
              },
            ));
          },
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  product[index].image,
                  height: 130,
                  width: 130,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  product[index].name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product[index].price,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.normal),
                    ),
                    Row(
                      children: [
                        Text(
                          product[index].point,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.yellow,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
