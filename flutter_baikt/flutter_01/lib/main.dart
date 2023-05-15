import 'package:flutter/material.dart';

class Product {
  final String image;
  final String name;
  final String description;
  final double price;

  Product({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  // Danh sách sản phẩm
  final List<Product> products = [
    Product(
      image: 'assets/img/dau.jpg',
      name: 'Dâu',
      description: 'Ngon ngọt và nhiều vitamin',
      price: 15,
    ),
    Product(
      image: 'assets/img/sale.jpg',
      name: 'Sale',
      description: 'Giảm tới 50% tất cả các sản phẩm',
      price: 50,
    ),
    Product(
      image: 'assets/img/cam.jpg',
      name: 'Cam',
      description: 'Nhiều nước và ngọt',
      price: 30.000,
    ),
    Product(
      image: 'assets/img/nho.jpg',
      name: 'Nho',
      description: 'Nhiều nước và ngọt',
      price: 70,
    ),
    Product(
      image: 'assets/img/dau.jpg',
      name: 'Apple',
      description: 'Nhiều nước và ngọt',
      price: 3.9,
    ),
    Product(
      image: 'assets/img/nho.jpg',
      name: 'Nho',
      description: 'Nhiều nước và ngọt',
      price: 1.99,
    ),
    // Thêm các sản phẩm khác vào đây
  ];

  // Phương thức để lấy sản phẩm tại một vị trí cụ thể
  Product getProductAtIndex(int index) {
    return products[index];
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text(''),
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.all(8),
            child: Material(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Colors.lightBlueAccent,
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {},
                child: Container(
                  width: 40,
                  height: 40,
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(8),
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: Colors.lightBlueAccent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(8),
                  onTap: () {},
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'All'),
              Tab(text: 'Fruits'),
              Tab(text: 'Vegetables'),
              Tab(text: 'Green'),
              Tab(text: 'Bake'),
            ],
            labelColor: Colors.black,
            indicatorColor: Colors.red,
          ),
        ),
        body: Container(
          color: Color.fromARGB(255, 240, 249, 250),
          child: TabBarView(
            children: [
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: products.length,
                itemBuilder: (BuildContext context, int index) {
                  Product product = products[index];
                  return Container(
                    margin: EdgeInsets.all(10),
                    width: 150,
                    height: 200,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Image.asset(
                            product.image,
                            width: 100,
                            height: 100,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          product.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(product.description),
                        SizedBox(height: 5),
                        Text(
                          '${product.price}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
              Center(child: Text('Fruits Page')),
              Center(child: Text('Vegetables Page')),
              Center(child: Text('Green Page')),
              Center(child: Text('Bake Page')),
            ],
          ),
        ),
      ),
    );
  }
}
