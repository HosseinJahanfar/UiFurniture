class ProductModel {
  final int id;
  final String name;
  final String image;
  final String point;
  final String price;

  ProductModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.point,
      required this.price});
}

List<ProductModel> product = [
  ProductModel(
      id: 1,
      name: 'Modern Chair',
      image: 'assets/images/pic1.jpg',
      point: '4.5',
      price: '\$ 300'),
  ProductModel(
      id: 2,
      name: 'Dining Chairs',
      image: 'assets/images/pic2.jpg',
      point: '3.1',
      price: '\$ 500'),
  ProductModel(
      id: 3,
      name: 'Velmont Chair',
      image: 'assets/images/pic3.jpg',
      point: '4.5',
      price: '\$ 1000'),
  ProductModel(
      id: 4,
      name: 'Dining Chair',
      image: 'assets/images/pic4.jpg',
      point: '4.5',
      price: '\$ 750'),
  ProductModel(
      id: 5,
      name: 'Bed',
      image: 'assets/images/pic5.jpg',
      point: '4.5',
      price: '\$ 750'),
];
