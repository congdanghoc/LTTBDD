import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    StorePage(),
    MyCartPage(),
    FavoritesPage(),
    ProfilePage(),
    MorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    if (_currentIndex >= _pages.length) {
      _currentIndex = 0;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'Công Shop',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Perform search action
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Perform notification action
            },
          ),
        ],
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Store',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
        backgroundColor: Colors.green,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey[400],
        showUnselectedLabels: true,
      ),
    );
  }
}

class StorePage extends StatefulWidget {
  @override
  _StorePageState createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  List<bool> heartPressedList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 236, 235, 235),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Categories',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View All >',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCircleAvatar(Icons.house, ' Household >'),
                _buildCircleAvatar(Icons.shopping_cart, '  Grocery >'),
                _buildCircleAvatar(Icons.wine_bar, '  Liquor >'),
                _buildCircleAvatar(Icons.ac_unit, '  Chilled >'),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nexus Member Deals',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View All >',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSquareBox(
                    Icons.shopping_basket, '1KG', 0, 'Dưa hấu\n 10.000 VNĐ'),
                _buildSquareBox(
                    Icons.shopping_cart, '1KG', 1, 'Dâu tây\n 100.000 VNĐ'),
                _buildSquareBox(
                    Icons.shopping_bag, '1KG', 2, 'Chuối\n 20.000 VNĐ'),
              ],
            ),
            SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Keells Deals',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'View All >',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSquareBox(
                    Icons.shopping_basket, '1KG', 0, 'Gừng\n 30.000 VNĐ'),
                _buildSquareBox(
                    Icons.shopping_cart, '1KG', 1, 'Tỏi\n 25.000 VNĐ'),
                _buildSquareBox(
                    Icons.shopping_bag, '1KG', 2, 'Hành\n 20.000 VNĐ'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSquareBox(IconData icon, String text, int index, String str) {
    return InkWell(
      onTap: () {
        setState(() {
          heartPressedList[index] = !heartPressedList[index];
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 110,
            height: 110,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0, top: 8.0),
                    child: Text(
                      text,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 8.0, bottom: 8.0),
                    child: Icon(
                      Icons.favorite,
                      color:
                          heartPressedList[index] ? Colors.green : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(
              str,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildCircleAvatar(IconData iconData, String label) {
  return Column(
    children: [
      CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white,
        child: Icon(
          iconData,
          color: Colors.black,
        ),
      ),
      SizedBox(height: 12.0),
      Text(
        label,
        style: TextStyle(
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

class MyCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'My Cart Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Favorites Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Profile Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'More Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
