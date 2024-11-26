import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  // Variables for product properties
  final String name; // Product name
  final String price; // Product price
  final IconData icon; // Product icon (instead of an image)

  // Constructor to initialize the product card's required properties
  const ProductCard({
    required this.name,
    required this.price,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // Rounded corners for a polished look
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 3, // Shadow for the card
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align content to the left
        children: [
          // Top section with the icon and wishlist heart
          Stack(
            children: [
              // Icon Container
              Container(
                height: 120, // Fixed height for the top section
                width: double.infinity, // Full width of the card
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(12), // Round only the top corners
                  ),
                  color: Colors.grey[200], // Light grey background for the icon
                ),
                child: Center(
                  child: Icon(
                    icon, // The product icon
                    size: 60, // Size of the icon
                    color: Colors.grey[800], // Color of the icon
                  ),
                ),
              ),
              // Heart icon for wishlist
              Positioned(
                top: 8, // Position the heart at the top-right
                right: 8,
                child: Icon(
                  Icons.favorite_border, // Heart icon
                  size: 24, // Size of the heart icon
                  color: Colors.grey[600], // Color of the heart icon
                ),
              ),
            ],
          ),
          // Product details section
          Padding(
            padding: const EdgeInsets.all(8.0), // Padding around the text
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align text to the left
              children: [
                // Product name
                Text(
                  name, // Display the product name
                  style: const TextStyle(
                    fontSize: 14, // Font size for the name
                    fontWeight: FontWeight.bold, // Bold font for emphasis
                  ),
                  maxLines: 2, // Limit to 2 lines to avoid overflow
                  overflow: TextOverflow
                      .ellipsis, // Show "..." if the name is too long
                ),
                const SizedBox(
                    height: 4), // Small spacing between name and price
                // Product price
                Text(
                  price, // Display the product price
                  style: const TextStyle(
                    fontSize: 14, // Font size for the price
                    color: Colors.black, // Black color for visibility
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
