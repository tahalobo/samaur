import 'package:flutter/material.dart';
import 'package:flutter_application_22/main.dart';
import 'package:shimmer/shimmer.dart'; // package for the animation (upload in yaml)
import 'package:lottie/lottie.dart';
import 'package:animated_gradient/animated_gradient.dart'; // gradent backround (upload im yaml)

// This is the main screen for the app (Taha)
class Taha extends StatelessWidget {
  const Taha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // A Stack widget allows overlapping widgets
        children: [
          // Background with animated gradient effect
          const AnimatedGradient(
            colors: [
              Color(0xFF00F260), // Gradient start color (greenish)
              Color(0xFF0575E6), // Gradient end color (blueish)
            ],
            child: SizedBox(
              width: double
                  .infinity, // Makes the gradient take the full width of the screen
              height: double
                  .infinity, // Makes the gradient take the full height of the screen
            ),
          ),

          // Center content in the screen
          Center(
            child: Container(
              padding: const EdgeInsets.all(
                  20), // Padding inside the container to space out the content
              color: Colors
                  .transparent, // Transparent background to allow gradient to show
              child: Column(
                mainAxisSize: MainAxisSize
                    .min, // The column will only take up as much space as it needs
                children: [
                  // Lottie animation showing a restaurant animation, centered at the top
                  Lottie.asset(
                    'images/1.json', // This should be the path to your Lottie animation file
                    width: 360, // Lottie animation width
                    height: 360, // Lottie animation height
                  ),
                  const SizedBox(
                    height: 5, // Space between Lottie animation and text
                  ),

                  // Transparent container with shimmer effect on the title text
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent, // Transparent background
                        border: Border.all(
                            color: Colors
                                .white)), // White border around the text container
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10, // Space between the border and text
                        ),

                        // Shimmer effect applied to the main title (text "اهلا بك")
                        Shimmer.fromColors(
                          baseColor: Colors.white, // Base shimmer color
                          highlightColor:
                              Colors.yellow, // Highlight shimmer color
                          child: const Center(
                            child: Text(
                              'اهلا بك', // Main greeting text in Arabic
                              style: TextStyle(
                                fontSize: 30, // Text size
                                fontWeight: FontWeight.bold, // Bold text
                                color: Colors.white, // Text color
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                            height: 10), // Space between title and subtitle

                        // Shimmer effect applied to the subtitle text
                        Shimmer.fromColors(
                          baseColor: Colors.white, // Base shimmer color
                          highlightColor:
                              Colors.yellow, // Highlight shimmer color
                          child: const Center(
                            child: Text(
                              'اهلا بك في متجرنا', // Subtitle text in Arabic
                              style: TextStyle(
                                fontSize: 18, // Smaller font size for subtitle
                                color: Colors
                                    .white70, // Slightly lighter white color
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10, // Space after the subtitle
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      height: 40), // Space between the subtitle and button

                  // Transparent, square button with shimmer effect
                  Shimmer.fromColors(
                    baseColor: Colors.white, // Base shimmer color
                    highlightColor: Colors.yellow, // Highlight shimmer color
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(

                                /// navigate and myapp is page 2
                                builder: (context) => const MyApp()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors
                            .transparent, // Transparent background for the button
                        overlayColor:
                            Colors.white, // Overlay color when pressed (white)
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 30), // Square button size
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius
                              .zero, // Ensures button has square corners (no round edges)
                        ),
                        side: const BorderSide(
                            color:
                                Colors.white), // White border around the button
                      ),
                      child: const Text(
                        'البدأ الأن', // Text on the button (Arabic)
                        style: TextStyle(
                          fontSize: 20, // Font size of the button text
                          fontWeight: FontWeight.bold, // Bold button text
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
