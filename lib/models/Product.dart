import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final List<Color> colors;
  // final double rating;
  final bool isFavourite, isPopular;

  Product({
    required this.id,
    required this.images,
    required this.colors,
    //this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    //  required this.price,
    required this.description,
  });
}

// Our demo Products

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/blog2.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title:
        "Building a security culture within the organization and promoting awareness about the importance of cybersecurity.",
    // price: 64.99,
    description: description,
    // rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/blog2.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "How About Facebook Securities?",
    // price: 50.5,
    description: description,
    // rating: 4.1,
    isPopular: true,
  ),
  Product(
    id: 3,
    images: [
      "assets/images/blog.webp",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "How About Instagram Securities?",
    //  price: 36.55,
    description: description,
//rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/blog2.jpg",
    ],
    colors: [
      const Color(0xFFF6625E),
      const Color(0xFF836DB8),
      const Color(0xFFDECB9C),
      Colors.white,
    ],
    title: "See Latest Update about CyberSecurites",
    // price: 20.20,
    description: description,
    // rating: 4.1,
    isFavourite: true,
  ),
];

const String description =
    "Definition: Facebook Posts are public messages posted to a Facebook user's entire audience or on a specific person's profile page . Businesses utilize posts to continually provide a presence to their audience and potentially attract new followers. Regular posts are the first step to facilitating engagement with past and future customers on Facebook, and companies that successfully leverage the world's most popular social media platform master the art of crafting posts that connect with users.";
