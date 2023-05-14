import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoriesScreen(),
    );
  }
}

class CategoriesScreen extends StatelessWidget {
  List<Category> categories = [
    Category('Fashion', Icons.accessibility_new, Colors.red),
    Category('Beauty', Icons.favorite, Colors.blue),
    Category('Electronics', Icons.phone_android, Colors.green),
    Category('Jewellery', Icons.access_alarm, Colors.pink),
    Category('Footwear', Icons.accessible, Colors.purple),
    Category('Toys', Icons.toys, Colors.orange),
    Category('Furniture', Icons.weekend, Colors.yellow),
    Category('Mobiles', Icons.mobile_friendly, Colors.teal),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Thực hiện hành động khi nhấp vào icon kính lúp
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              // Thực hiện hành động khi nhấp vào icon trái tim
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Thực hiện hành động khi nhấp vào icon giỏ hàng
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) {
                  final category = categories[index];

                  return Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: category.color,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 40.0,
                          height: 40.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            category.icon,
                            size: 30.0,
                            color: category.color,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          category.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Category {
  final String name;
  final IconData icon;
  final Color color;

  Category(this.name, this.icon, this.color);
}
