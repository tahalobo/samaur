import 'package:flutter/material.dart';
import 'package:flutter_application_22/home_page/appbar.dart';
import 'ProductCard .dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'الصفحة الرئيسية', // Arabic title for the home page

        isCentered: true, // Center the app bar title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the grid
        child: GridView.count(
          crossAxisCount: 2, // Two cards per row
          crossAxisSpacing: 16, // Horizontal spacing between cards
          mainAxisSpacing: 16, // Vertical spacing between cards
          childAspectRatio: 0.7, // Adjust card height/width ratio
          children: const [
            // Use the ProductCard class to display product cards
            ProductCard(
              name: 'جهاز ابل ايفون 15', // Product name
              price: '1,140,000 د.ع', // Product price
              icon: Icons.phone_iphone, // Product icon
            ),
            ProductCard(
              name: 'جهاز ابل ايفون 16', // Product name
              price: '1,490,000 د.ع', // Product price
              icon: Icons.phone_android, // Product icon
            ),
            ProductCard(
              name: 'جهاز ابل ايفون 14', // Product name
              price: '990,000 د.ع', // Product price
              icon: Icons.tablet_android, // Product icon
            ),
            ProductCard(
              name: 'جهاز سامسونج', // Product name
              price: '1,200,000 د.ع', // Product price
              icon: Icons.phone_android, // Product icon
            ), // Use the ProductCard class to display product cards
            ProductCard(
              name: 'جهاز ابل ايفون 15', // Product name
              price: '1,140,000 د.ع', // Product price
              icon: Icons.phone_iphone, // Product icon
            ),
            ProductCard(
              name: 'جهاز ابل ايفون 16', // Product name
              price: '1,490,000 د.ع', // Product price
              icon: Icons.phone_android, // Product icon
            ),
            ProductCard(
              name: 'جهاز ابل ايفون 14', // Product name
              price: '990,000 د.ع', // Product price
              icon: Icons.tablet_android, // Product icon
            ),
            ProductCard(
              name: 'جهاز سامسونج', // Product name
              price: '1,200,000 د.ع', // Product price
              icon: Icons.phone_android, // Product icon
            ),
          ],
        ),
      ),
    );
  }
}
