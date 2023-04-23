import 'package:flutter/material.dart';
import 'package:quitanda/src/models/item_model.dart';
import 'package:quitanda/src/services/utils_services.dart';

class ProductItem extends StatelessWidget {
  ProductItem({super.key, required this.item});

  final ItemModel item;
  final UtilsServices utilsServices = UtilsServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 200, 200).withAlpha(230),
      body: Stack(
        //Conteudo
        children: [
          SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Hero(
                    tag: item.imgUrl,
                    child: Image.asset(item.imgUrl),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(32),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(50),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade600,
                            offset: const Offset(0, 2)),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        //NOme - QTd
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                item.itemName,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              height: 30,
                              width: 70,
                              color: Colors.blue,
                            )
                          ],
                        ),

                        //Preco
                        Text(
                          utilsServices.priceToCurrency(item.price),
                          style: const TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 22, 105, 143)),
                        ),

                        // des
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: SingleChildScrollView(
                                child: Text(
                              item.description,
                              style: const TextStyle(height: 1.5),
                            )),
                          ),
                        ),

                        //botao
                        SizedBox(
                          height: 55,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32),
                              ),
                            ),
                            onPressed: () {},
                            icon: const Icon(Icons.shopping_cart_outlined),
                            label: const Text(
                              'Adicionar ao Carrinho',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 10,
            top: 10,
            child: SafeArea(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
          )
        ],
      ),
    );
  }
}
