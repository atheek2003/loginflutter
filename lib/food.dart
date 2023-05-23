import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Menu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Menu'),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/25.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: MenuPage(),
        ),
      ),
    );
  }
}

class MenuPage extends StatelessWidget {
  final List<MenuItem> menuItems = [
    MenuItem(
      name: 'FRIED RICE',
      description:
          'A savory stir-fried rice dish with a medley of vegetables and seasonings.',
      price: '60',
      image: 'lib/images/rice.jpeg',
    ),
    MenuItem(
      name: 'MASALA DOSA',
      description:
          'A crispy South Indian crepe filled with flavorful spiced potato masala.',
      price: '50',
      image: 'lib/images/dosa.jpeg',
    ),
    MenuItem(
      name: 'IDLI ',
      description:
          'Soft and fluffy steamed rice cakes, a popular South Indian breakfast dish.',
      price: '35',
      image: 'lib/images/idli.jpeg',
    ),
    MenuItem(
      name: 'NOODLES',
      description:
          'Thin, elongated strands made from wheat or rice, cooked and enjoyed in various flavorful sauces or broths.',
      price: '60',
      image: 'lib/images/noodles.jpeg',
    ),
    MenuItem(
      name: 'MAGGIE',
      description: 'A famous 2 min dish with flavours.',
      price: '30',
      image: 'lib/images/maggie.jpeg',
    ),
    MenuItem(
      name: 'UPMA',
      description: 'A delicious dish done with rava and vegetables.',
      price: '40',
      image: 'lib/images/upma.jpeg',
    ),
    MenuItem(
      name: 'GOBI MANCHURIAN',
      description:
          'Crispy cauliflower florets tossed in a tangy and spicy Indo-Chinese sauce, creating a delightful fusion dish.',
      price: '60',
      image: 'lib/images/gobi.jpeg',
    ),
    MenuItem(
      name: 'CHHOLE BATURE',
      description: 'A delicious north indian dish.  ',
      price: '50',
      image: 'lib/images/chole.jpeg',
    ),
    MenuItem(
      name: 'VEG BIRIYANI',
      description:
          'A aromatic and delectable rice dish made with fragrant basmati rice, mixed vegetables, and a blend of spices, cooked to perfection. ',
      price: '60',
      image: 'lib/images/biryani.jpeg',
    ),
    MenuItem(
      name: 'MASALA PURI',
      description:
          ' A flavorful Indian street food snack consisting of crispy puris topped with a tangy and spicy masala sauce. ',
      price: '50',
      image: 'lib/images/masalapuri.jpeg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menuItems.length,
      itemBuilder: (context, index) {
        return _buildMenuItem(context, menuItems[index]);
      },
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
}
