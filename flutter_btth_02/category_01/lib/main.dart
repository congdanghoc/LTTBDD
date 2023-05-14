import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Categories App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoriesPage(),
    );
  }
}

class CategoriesPage extends StatelessWidget {
  // Danh sách các danh mục
  final List<CategoryItem> categories = [
    CategoryItem(
      title: 'Fashion',
      icon: Icons.shopping_bag,
    ),
    CategoryItem(
      title: 'Beauty',
      icon: Icons.face,
    ),
    CategoryItem(
      title: 'Electronics',
      icon: Icons.devices,
    ),
    CategoryItem(
      title: 'Jewellery',
      icon: Icons.wallet_giftcard,
    ),
    CategoryItem(
      title: 'Footwear',
      icon: Icons.man,
    ),
    CategoryItem(
      title: 'Toys',
      icon: Icons.toys,
    ),
    CategoryItem(
      title: 'Furniture',
      icon: Icons.chair,
    ),
    CategoryItem(
      title: 'Mobile',
      icon: Icons.phone_android,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Xử lý sự kiện khi nhấn nút kính lúp
            },
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {
              // Xử lý sự kiện khi nhấn nút trái tim
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Xử lý sự kiện khi nhấn nút giỏ hàng
            },
          ),
        ],
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[300],
              child: Column(
                children: categories
                    .map((category) => Expanded(
                          child: GestureDetector(
                            onTap: () {
                              // Xử lý sự kiện khi danh mục được chọn
                              print('Selected category: ${category.title}');
                              // Đổi màu nền của danh mục
                              category.isSelected = !category.isSelected;
                            },
                            child: Container(
                              color: category.isSelected
                                  ? Colors.red
                                  : Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(category.icon),
                                  SizedBox(height: 8),
                                  Text(category.title),
                                ],
                              ),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.white,
              child: GridView.count(
                crossAxisCount: 2,
                children: categories
                    .map((category) => GestureDetector(
                          onTap: () {
                            // Xử lý sự kiện khi danh mục được chọn
                            print('Selected category: ${category.title}');
                            // Đổi màu nền của danh mục
                            category.isSelected = !category.isSelected;
                          },
                          child: Container(
                            color: category.isSelected
                                ? Colors.red
                                : Colors.transparent,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(category.icon),
                                SizedBox(height: 8),
                                Text(category.title),
                              ],
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryItem {
  final String title;
  final IconData icon;
  bool isSelected;

  CategoryItem({
    required this.title,
    required this.icon,
    this.isSelected = false,
  });
}
