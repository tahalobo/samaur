import 'package:flutter/material.dart';

// This is the custom app bar class that will be used to display a title and an optional icon.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  // Declare the required parameters for the app bar
  final String title; // The title text of the app bar.
  final bool
      isCentered; // Boolean to decide if the title should be centered or not.
  final Widget?
      icon; // Optional icon to be displayed on the left side of the app bar.

  // Constructor to initialize the app bar's properties.
  const CustomAppBar({
    super.key,
    required this.title, // The title is required and must be provided when the app bar is created.
    this.isCentered =
        true, // Default value is true, meaning the title will be centered by default.
    this.icon, // Icon is optional, hence the `?` making it nullable.
  });

  // The build method is called to construct the widget tree for the app bar.
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // `centerTitle` controls whether the title is centered in the app bar.
      // If `isCentered` is true, the title will be centered. If false, it will be aligned to the left.
      centerTitle: isCentered,

      // The `title` of the app bar is displayed as a text widget.
      title: Text(
        title, // Use the `title` parameter provided to the constructor.
        style: const TextStyle(
          fontSize: 20, // Set font size for the title text.
          fontWeight: FontWeight.bold, // Make the title text bold.
        ),
      ),

      // The `leading` widget is placed on the left side of the app bar.
      // We use the `icon` parameter here, but if it's null (no icon is provided),
      // we use an empty container (meaning no icon will be displayed).
      leading:
          icon ?? Container(), // If no icon is passed, show an empty container.
    );
  }

  // The `preferredSize` is required when implementing `PreferredSizeWidget`.
  // The `AppBar` needs to know its size, and we return the standard size for app bars.
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
