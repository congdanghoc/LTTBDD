import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Information',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              // Xử lý sự kiện khi nhấn vào nút mũi tên bên trái
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.star),
              onPressed: () {
                // Xử lý sự kiện khi nhấn vào nút ngôi sao bên phải
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Image.asset(
                  'assets/img/dau.jpg',
                  width: 200,
                  height: 200,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Color.fromARGB(255, 224, 248, 248),
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dâu tây',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            // Xử lý sự kiện khi nhấn vào nút giảm số lượng
                          },
                        ),
                        Text(
                          '1', // Số lượng hiện tại (có thể thay đổi thành biến nếu cần)
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            // Xử lý sự kiện khi nhấn vào nút tăng số lượng
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      '100.000 VNĐ', // Giá sản phẩm (có thể thay đổi thành biến nếu cần)
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Ngon ngọt nhập khẩu từ đà lạt cunng cấp đầy đủ vitamin bảo vệ sức khẻo của bạn', // Mô tả sản phẩm (có thể thay đổi thành biến nếu cần)
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(
              icon: IconTheme(
                data: IconThemeData(
                  color: Colors.grey, // Đặt màu xám cho biểu tượng
                ),
                child: Icon(Icons.more_horiz_rounded),
              ),
              label: 'More',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_offer),
              label: 'Tag',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 50, // Đặt kích thước chiều rộng của Container
                height: 50, // Đặt kích thước chiều cao của Container
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      ),
    );
  }
}
