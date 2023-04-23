import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:quitanda/src/config/custom_colors.dart';

import 'components/category_title.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> categories = [
    'Brinquedos',
    'Roupas',
    'Higiêne',
    'Rações',
    'Fármacia',
    'Outros',
  ];

  String selectedCategory = 'Brinquedos';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //app bar
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 1,
        centerTitle: true,
        title: Text.rich(
          TextSpan(
            style: const TextStyle(fontSize: 30),
            children: [
              const TextSpan(
                text: 'Pet',
                style: TextStyle(color: Colors.blueAccent),
              ),
              TextSpan(
                text: 'App',
                style: TextStyle(color: CustomColors.customContrastColor),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
              right: 15,
            ),
            child: GestureDetector(
              onTap: () {},
              child: Badge(
                badgeColor: CustomColors.customContrastColor,
                badgeContent: const Text(
                  '2',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 12,
                  ),
                ),
                child: const Icon(
                  Icons.shopping_cart,
                  color: Colors.blueAccent,
                ),
              ),
            ),
          ),
        ],
      ),

      //campo de pesquisa
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                isDense: true,
                hintText: 'Pesquise aqui...',
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 14,
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 8, 88, 153),
                  size: 21,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                  borderSide:
                      const BorderSide(width: 0, style: BorderStyle.none),
                ),
              ),
            ),
          ),

          //Categoria
          Container(
            padding: const EdgeInsets.only(left: 25),
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return CategoryTitle(
                  onPressed: () {
                    setState(() {
                      selectedCategory = categories[index];
                    });
                  },
                  category: categories[index],
                  isSelected: categories[index] == selectedCategory,
                );
              },
              separatorBuilder: (_, index) => const SizedBox(
                width: 10,
              ),
              itemCount: categories.length,
            ),
          ),
        ],
      ),
    );
  }
}
