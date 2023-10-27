import 'package:flutter/material.dart';

class Product3View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.shopping_bag,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // Handle bag icon action
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                  'https://nordgreen.com/cdn/shop/collections/CP_Male_Native_961fa23a-161f-4a6d-ad4d-fc4ca0ddec96_970x.webp?v=1673502035',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Classy Watch',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'Trendy Fashion',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          for (int i = 0; i < 5; i++)
                            Icon(Icons.star, color: Colors.yellow, size: 20),
                          Text(
                            ' (270 Reviews)',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey,
                              padding: EdgeInsets.symmetric(
                                vertical: 8.0,
                                horizontal: 8.0,
                              ),
                            ),
                            onPressed: () {
                              // Handle size button click
                            },
                            child: Text('- 1 +',
                                style: TextStyle(color: Colors.white)),
                          ),
                          SizedBox(height: 9),
                          Text(
                            'Available in Stock',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Add size and letters in circles
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Size',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox (height: 6),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Text('L', style: TextStyle(color: Colors.white)),
                        backgroundColor: Colors.grey,
                        radius: 20,
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        child: Text('M', style: TextStyle(color: Colors.white)),
                        backgroundColor: Colors.grey,
                        radius: 20,
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        child: Text('N', style: TextStyle(color: Colors.white)),
                        backgroundColor: Colors.grey,
                        radius: 20,
                      ),
                      SizedBox(width: 15),
                      CircleAvatar(
                        child: Text('S', style: TextStyle(color: Colors.white)),
                        backgroundColor: Colors.grey,
                        radius: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Add description of the bag
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Description',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'This stylish trendy fashion watch is perfect for your daily needs. It comes in various sizes (L, M, N, S) to suit your preferences. The watch is made with high-quality materials and has received excellent reviews.',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            // Add Total Price and Add to Cart button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Price',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      Text(
                         '\$880.89',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Add to Cart button click
                    },
                    style: ElevatedButton.styleFrom(
                       shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                      primary: Colors.black,
                      minimumSize: Size(120, 60),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: Colors.white,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Add to Cart',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
