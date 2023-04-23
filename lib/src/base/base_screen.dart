import 'package:flutter/material.dart';
import 'package:quitanda/src/home/home_tab.dart';

class BaseScrenn extends StatefulWidget {
  const BaseScrenn({super.key});

  @override
  State<BaseScrenn> createState() => _BaseScrennState();
}

class _BaseScrennState extends State<BaseScrenn> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: [
          const HomeTab(),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.yellow,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            pageController.jumpToPage(index);
          });
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(238, 100, 173, 233),
        selectedItemColor: Colors.black,
        unselectedItemColor:
            const Color.fromARGB(255, 92, 92, 92).withAlpha(100),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Carrinho'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Pedidos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: 'Perfil'),
        ],
      ),
    );
  }
}
