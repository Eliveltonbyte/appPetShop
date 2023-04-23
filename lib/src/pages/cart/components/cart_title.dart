import 'package:flutter/material.dart';

import 'package:quitanda/src/models/cart_item_model.dart';
import 'package:quitanda/src/pages/common_widgets/qunatity_widgets.dart';
import 'package:quitanda/src/services/utils_services.dart';

class CartTitle extends StatefulWidget {
  const CartTitle({super.key, required this.cartItem, required this.remove});
  final CartItemModel cartItem;
  final Function(CartItemModel) remove;

  @override
  State<CartTitle> createState() => _CartTitleState();
}

class _CartTitleState extends State<CartTitle> {
  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      color: Colors.white,
      child: ListTile(
        //Image
        leading: Image.asset(
          widget.cartItem.item.imgUrl,
          height: 60,
          width: 60,
        ),
        //Nome
        title: Text(
          widget.cartItem.item.itemName,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          utilsServices.priceToCurrency(widget.cartItem.totalPrice()),
          style: const TextStyle(
              color: Colors.black38, fontWeight: FontWeight.bold),
        ),

        trailing: QuantityWidget(
            value: widget.cartItem.quantity,
            suffixText: widget.cartItem.item.unit,
            isRemoved: true,
            result: (quantity) {
              setState(() {
                widget.cartItem.quantity = quantity;
                if (quantity == 0) {
                  widget.remove(widget.cartItem);
                }
              });
            }),
      ),
    );
  }
}
