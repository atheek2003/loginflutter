import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
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
            image: AssetImage('assets/background.jpg'),
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
                  imagePath: 'assets/image1.jpg',
                  buttonText: 'Button 1',
                ),
                SizedBox(height: 20.0),
                BoxWidget(
                  imagePath: 'assets/image2.jpg',
                  buttonText: 'Button 2',
                ),
                SizedBox(height: 20.0),
                BoxWidget(
                  imagePath: 'assets/image3.jpg',
                  buttonText: 'Button 3',
                ),
                SizedBox(height: 20.0),
                BoxWidget(
                  imagePath: 'assets/image4.jpg',
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
