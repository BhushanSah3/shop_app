import "package:flutter/material.dart";
import "package:shop_app/pages/cart_page.dart";
import "package:shop_app/pages/product_list.dart";

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentpage = 0;
  List<Widget> pages = const [ProductList(), CartPage()];

  @override
  Widget build(BuildContext context) {
    // safe areas ignores the top notch as well as the bottom notch

    return Scaffold(
      body: IndexedStack(
        index: currentpage,
        children: pages,
      ),
      //  body: currentpage==0? ProductList (): CartPage(),

      bottomNavigationBar: BottomNavigationBar(
        iconSize: 35,
        selectedFontSize: 0,
        unselectedFontSize: 0, // to see less under the 
          onTap: (value) {
            setState(() {
              currentpage = value;
            });
          },
          currentIndex: currentpage,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),
            label: "",),// without label it wont function as it will be null
          ]),
    );
  }
}
