import 'package:flutter/material.dart';

import 'package:whatsappui/widgets/category_card.dart';
import 'package:whatsappui/widgets/product_card.dart';
import 'package:whatsappui/widgets/product_details_screen.dart';

import 'card_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = [
    "All",
    "Electronics",
    "Fashion",
    "Home",
    "Beauty",
    "Sports",
  ];

  final List<Map<String, dynamic>> products = [
    {
      "name": "Wireless Headphones",
      "price": 99.99,
      "image": "assets/products/headphones.jpg",
      "rating": 4.5,
    },
    {
      "name": "Smart Watch",
      "price": 199.99,
      "image": "assets/products/smartwatch.jpg",
      "rating": 4.2,
    },
    {
      "name": "Running Shoes",
      "price": 79.99,
      "image": "assets/products/shoes.jpg",
      "rating": 4.7,
    },
    {
      "name": "Bluetooth Speaker",
      "price": 59.99,
      "image": "assets/products/speaker.jpg",
      "rating": 4.3,
    },
  ];
  final List<Color> colorPalette = [
    Colors.red[100]!,
    Colors.blue[100]!,
    Colors.green[100]!,
    Colors.yellow[100]!,
    Colors.purple[100]!,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12, // Light background for whole screen
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header with search - Changed to light background
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white, // Changed from black to white
                        borderRadius: BorderRadius.circular(24),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search products...",
                          hintStyle: TextStyle(
                            color: Colors.grey[600],
                          ), // Darker hint
                          border: InputBorder.none,
                          icon: Icon(Icons.search, color: Colors.grey[600]),
                        ),
                        style: TextStyle(color: Colors.black), // Dark text
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    icon: Icon(
                      Icons.notifications_none,
                      color: Colors.grey[700],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),

            // Promo banner - Enhanced contrast
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary, // Solid color now
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Summer Sale",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color:
                                Colors
                                    .white, // White text on colored background
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Up to 50% off on selected items",
                          style: TextStyle(
                            color: Colors.white.withOpacity(
                              0.9,
                            ), // Slightly transparent
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset("assets/promo.png", height: 80),
                ],
              ),
            ),

            // Categories section
            Container(
              color: Colors.white, // White background for categories
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87, // Dark text
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 100,

                    child: ListView.builder(

                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      itemBuilder: (context, index) {
                        return CategoryCard(

                          name: categories[index],
                          isSelected: index == 0,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Featured Products section
            Container(
              color: Colors.white, // White background for products
              padding: EdgeInsets.only(top: 20, bottom: 16),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Featured Products",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See All",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GridView.builder(
                    padding: EdgeInsets.all(16),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.7,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: colorPalette[index % colorPalette.length],
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                        ),
                        child: ProductCard(
                          product: products[index],
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailScreen(
                                  product: products[index],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
