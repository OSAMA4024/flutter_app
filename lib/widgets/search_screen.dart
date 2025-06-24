import 'package:flutter/material.dart';

import 'package:whatsappui/widgets/product_card.dart';
import 'package:whatsappui/widgets/product_details_screen.dart';

import '../card_screen.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  final List<Map<String, dynamic>> _searchResults = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: "Search products...",
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  _searchController.clear();
                },
              ),
            ),
            onChanged: (value) {
              // Implement search functionality
            },
          ),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.7,
        ),
        itemCount: _searchResults.length,
        itemBuilder: (context, index) {
          return ProductCard(
            product: _searchResults[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailScreen(
                    product: _searchResults[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}