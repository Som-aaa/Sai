import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RockyBoy Tech For-You',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome RockyBoy Tech For-You YouTube Channel',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              backgroundColor: Colors.red,
              minimumSize: const Size(150, 50),
            ),
            child: const Text(
              'Subscribe',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.png"), // Your background image path
                fit: BoxFit.fill, // Make the background image fill the entire screen
              ),
            ),
          ),

          // Main content
          const SingleChildScrollView(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 8),
                Text(
                  'Welcome to RockyBoy Tech For-You! This channel is dedicated to providing the latest tech tutorials, reviews, and tips. Stay tuned for exciting content and make sure to subscribe to stay updated!',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1. Paid service available for increasing your YouTube watchtime and subscribers.',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      '2. Watch Time should be >1000 hours only & Subscribers should be >500 only.',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      '3. For details, visit my website: https://rockyboytechforyou.com',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      '4. NOTE: Don’t skip the video!',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      '5. If OK, contact me at +91 9999999999.',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Floating image
          Positioned(
            right: 20,
            bottom: 20, // Adjust the position as needed
            child: Image.asset(
              "assets/floating_image.png", // Your floating image path
              width: 100, // Adjust size as needed
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
