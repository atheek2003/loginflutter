/*import 'package:flutter/material.dart';

void main() {
  runApp(MenuPage());
}

class MenuPage extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(
      name: 'FRIED RICE',
      description: 'A delicious dish done by Rice',
      price: '60',
      image: 'assets/images/rice.jpeg',
    ),
    MenuItem(
      name: 'MASALA DOSA',
      description: 'MASALA + DOSA = MASALA DOSA',
      price: '50',
      image: 'assets/images/dosa.jpeg',
    ),
    MenuItem(
      name: 'IDLI ',
      description: 'Nice to eat ',
      price: '35',
      image: 'assets/images/idli.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView.builder(
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          return _buildMenuItem(context, menuItems[index]);
        },
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, MenuItem menuItem) {
    return ListTile(
      leading: Image.asset(
        menuItem.image,
        width: 60,
        height: 60,
        fit: BoxFit.cover,
      ),
      title: Text(menuItem.name),
      subtitle: Text(menuItem.description),
      trailing: Text('\$${menuItem.price}'),
      onTap: () {
        // Handle menu item selection
        // You can navigate to a detailed page or perform any other action
        print('Selected: ${menuItem.name}');
      },
    );
  }
}

class MenuItem {
  final String name;
  final String description;
  final String price;
  final String image;

  MenuItem({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
  });
}*/
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
        title: Text('PESU E- COUNTER'),
      ),
      body: Center(
        child: Text(
          'ORDER HERE',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
