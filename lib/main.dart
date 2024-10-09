import 'package:flutter/material.dart'; 
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(RockyBoyApp());
}

class RockyBoyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RockyBoy Tech For-You',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: RockyBoyHomePage(),
    );
  }
}

class RockyBoyHomePage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RockyBoy Tech For-You'),
      ),
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.png'), // Replace with your image
                fit: BoxFit.fill,
              ),
            ),
          ),
          // Content
          SingleChildScrollView(
            controller: _scrollController,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Welcome RockyBoy Tech For-You YouTube Channel',
                          textStyle: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          speed: Duration(milliseconds: 100),
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    
                    'Stay tuned for exciting content and make sure to subscribe to stay updated!',
                    style: TextStyle(fontSize: 20, color: Colors.white), // Text color adjusted for visibility
                  ),
                  SizedBox(height: 10),
                  Text(
                    '''1. Paid service available for increasing your YouTube watchtime and subscribers.
2. Watch Time should be >1000 hours only & Subscribers should be >500 only.
3. For details, visit my website: https://rockyboytechforyou.com
4. NOTE: Don’t skip the video!
5. If OK, contact me at +91 9642081393.''',
                    style: TextStyle(fontSize: 16, color: Colors.white), // Text color adjusted for visibility
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 30),
                  Text(
                    'Connect with me on Social Media:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white), // Adjusted color
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // IconButton(
                      //   icon: FaIcon(FontAwesomeIcons.facebook, color: Colors.white), // Adjusted icon color
                      //   onPressed: () {
                      //     launch('https://facebook.com/yourprofile');
                      //   },
                      // ),
                      // IconButton(
                      //   icon: FaIcon(FontAwesomeIcons.instagram, color: Colors.white), // Adjusted icon color
                      //   onPressed: () {
                      //     launch('https://instagram.com/yourprofile');
                      //   },
                      // ),
                      IconButton(
                        icon: FaIcon(FontAwesomeIcons.twitter, color: Colors.white), // Adjusted icon color
                        onPressed: () {
                          launch('https://twitter.com/yourprofile');
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Latest Video:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white), // Adjusted color
                  ),
                  SizedBox(height: 10),
                  Container(
                    child: TextButton(
                      onPressed: () {
                        launch('https://youtu.be/E2iIg-B6ZQg?si=2BjVGwfwhTy1Xaha');
                      }, 
                      child: Text(
                        'Click here',
                        style: TextStyle(fontSize: 20, color: Colors.white), // Adjusted text color
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Testimonials:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white), // Adjusted color
                  ),
                  Column(
                    children: [
                     Column(
                      children: [ 
                        Text(
                    '''1. Great YouTube channel!
2. Awesome tutorials
3. I learned a lot about gadgets and tech.''',
                    style: TextStyle(fontSize: 16, color: Colors.white), // Text color adjusted for visibility
                       ),
                      ],
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Contact Me:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white), // Adjusted color
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Your Name', fillColor: Colors.white),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Your Message', fillColor: Colors.white),
                          maxLines: 4,
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Process form submission
                            }
                          },
                          child: Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Positioned Subscribe Button
          Positioned(
            top: 20, // Adjust top padding
            right: 20, // Adjust right padding
            child: ElevatedButton(
              onPressed: () {
                launch('https://www.youtube.com/c/RockyBoyTechForYou');
              },
              child: Text('Subscribe'),
              // style: ElevatedButton.styleFrom(
              // // iconColor : Color(Colors.red),
              //   textStyle: TextStyle(fontSize: 20),
              // ),
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     _scrollController.animateTo(
      //       0,
      //       duration: Duration(seconds: 1),
      //       curve: Curves.easeOut,
      //     );
      //   },
      //   child: Icon(Icons.arrow_upward),
      //   backgroundColor: Colors.red,
      // ),
    );
  }
}
