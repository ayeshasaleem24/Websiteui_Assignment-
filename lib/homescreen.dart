import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController _pageController = PageController();
  final List<String> cardImageUrls = [
    'https://static.vecteezy.com/system/resources/previews/006/388/760/original/women-happy-with-shopping-on-mobile-pay-by-credit-card-shopping-online-in-an-online-store-on-a-website-or-mobile-application-concept-loves-shopping-design-for-sale-banner-digital-marketing-vector.jpg',
    'https://beechtree.pk/cdn/shop/files/Web_Sale_Tile_accessories_d0a65401-473f-420f-9ae5-eccce52e1084.jpg?v=1693399339',
  ];

  final List<String> productImageUrls = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi1ruOdfEbeIntj4FS2g44LdzOhnsxH2BKJw&usqp=CAU',
    'https://rukminim1.flixcart.com/image/450/500/xif0q/shoe/7/2/m/6-tm-12-6-trm-white-original-imagjqyzz8z9jrgf.jpeg?q=90&crop=false',
    'https://nordgreen.com/cdn/shop/collections/CP_Male_Native_961fa23a-161f-4a6d-ad4d-fc4ca0ddec96_970x.webp?v=1673502035',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView( // Make the entire page scrollable
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200, // Adjust the height as needed
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: cardImageUrls.map((imageUrl) {
                  return buildImage(imageUrl);
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Arrival',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Container(
              height: 200, // Adjust the height as needed
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  buildProductCard(productImageUrls[0], 'Axel Arigato', 'Clean 90 Triple Sneakers', '\$250.38'),
                  buildProductCard(productImageUrls[1], 'The Marc Jacobs', 'Traveler Tote', '\$110.89'),
                  buildProductCard(productImageUrls[2], 'Classy Watch', 'Trandy Fashion', '\$880.89'),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
           SizedBox(height: 16),
// Add the ListTile with a square picture here
ListTile(
  leading: Container(
    width: 60, // Adjust the width as needed for a square shape
    height: 60, // Adjust the height as needed for a square shape
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://www.oxford.com.pk/cdn/shop/files/Gray_2_55ae4a2d-c680-437c-93c9-c9f182a3f4d7.jpg?v=1685971535&width=600'),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(10), // You can adjust the radius value to make it rounder
    ),
  ),
  title: Text("Gia Borghini", style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold)), // Set fontWeight to FontWeight.bold
  subtitle: Text("RHW Rosie 1 Shirt", style: TextStyle(color: Colors.grey[600])),
  trailing: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.yellow, size: 20),
      Text("(4.5)"),
      SizedBox(width: 5),
      Text("\$200.50", style: TextStyle(fontWeight: FontWeight.bold)),
    ],
  ),
),
SizedBox(height: 6),
// Add the ListTile with a square picture here
ListTile(
  leading: Container(
    width: 60, // Adjust the width as needed for a square shape
    height: 60, // Adjust the height as needed for a square shape
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://rukminim1.flixcart.com/image/450/500/xif0q/shoe/7/2/m/6-tm-12-6-trm-white-original-imagjqyzz8z9jrgf.jpeg?q=90&crop=false'),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(10), // You can adjust the radius value to make it rounder
    ),
  ),
  title: Text("Top Shoes", style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold)), // Set fontWeight to FontWeight.bold
  subtitle: Text("RHW Rosie 1 Shoes", style: TextStyle(color: Colors.grey[600])),
  trailing: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.yellow, size: 20),
      Text("(5.0)"),
      SizedBox(width: 5),
      Text("\$400.56", style: TextStyle(fontWeight: FontWeight.bold)),
    ],
  ),
),
SizedBox(height: 6),
// Add the ListTile with a square picture here
ListTile(
  leading: Container(
    width: 60, // Adjust the width as needed for a square shape
    height: 60, // Adjust the height as needed for a square shape
    decoration: BoxDecoration(
      image: DecorationImage(
        image: NetworkImage('https://www.creedfragrances.co.uk/cdn/shop/articles/oud2.jpg?v=1695487535&width=1100'),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(10), // You can adjust the radius value to make it rounder
    ),
  ),
  title: Text("Perfume", style: TextStyle(color: Colors.grey[800], fontWeight: FontWeight.bold)), // Set fontWeight to FontWeight.bold
  subtitle: Text("Perfumic Fragnance", style: TextStyle(color: Colors.grey[600])),
  trailing: Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Icon(Icons.star, color: Colors.yellow, size: 20),
      Text("(4.6)"),
      SizedBox(width: 5),
      Text("\$700.56", style: TextStyle(fontWeight: FontWeight.bold)),
    ],
  ),
),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String imageUrl) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0),
      width: 300.0, // Adjust the width as needed
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildProductCard(String productUrl, String brand, String product, String price) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 16.0),
      width: 200.0, // Adjust the width as needed
      child: Card(
        child: Column(
          children: [
            Container(
              height: 100.0, // Adjust the height as needed
              width: double.infinity,
              child: Image.network(
                productUrl,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  brand,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 9),
                Text(
                  product,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

