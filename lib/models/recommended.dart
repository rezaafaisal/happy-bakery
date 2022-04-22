class RecommendedBakery {
  String image;
  String name;
  String price;

  RecommendedBakery({
    required this.image,
    required this.name,
    required this.price,
  });
}

var RecommendBakeryList = [
  RecommendedBakery(image: 'images/bread1.png', name: 'Bread Roll', price: '\$20'),
  RecommendedBakery(image: 'images/bread2.png', name: 'Brioche', price: '\$22'),
  RecommendedBakery(image: 'images/bread3.png', name: 'Sweet Bund', price: '\$22'),
  RecommendedBakery(image: 'images/bread4.png', name: 'Cornbread', price: '\$10'),
  RecommendedBakery(image: 'images/bread5.png', name: 'Yeast Bread', price: '\$35'),
  RecommendedBakery(image: 'images/bread6.png', name: 'Flat Bread', price: '\$41'),
  RecommendedBakery(image: 'images/bread7.png', name: 'Pancake', price: '\$5'),
];
