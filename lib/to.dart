import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5), // Set the duration of the splash screen
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'lib/images/food2.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            /*child: Text(
            "SATISFY YOUR CRAVINGS WITH A TAP",
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),*/
            ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PESU CANTEENS'),
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 235, 192, 19),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                BoxWidget(
                  imagePath: '',
                  buttonText: 'Button 1',
                ),
                SizedBox(height: 20.0),
                BoxWidget(
                  imagePath: '',
                  buttonText: 'Button 2',
                ),
                SizedBox(height: 20.0),
                BoxWidget(
                  imagePath: '',
                  buttonText: 'Button 3',
                ),
                SizedBox(height: 20.0),
                BoxWidget(
                  imagePath: '',
                  buttonText: 'Button 4',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  final String imagePath;
  final String buttonText;

  const BoxWidget({required this.imagePath, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: 200.0,
          width: 200.0,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 10.0),
        ElevatedButton(
          onPressed: () {
            // Button click logic goes here
            print('Button clicked: $buttonText');
          },
          child: Text(buttonText),
        ),
      ],
    );
  }
}
