import 'package:quitanda/src/models/cart_item_model.dart';

class OderModel {
  String id;
  DateTime creatDateTime;
  List<CartItemModel> items;
  DateTime overdueDateTime;
  String status;
  String copyAndPast;
  double total;

  OderModel(
      {required this.id,
      required this.creatDateTime,
      required this.items,
      required this.status,
      required this.copyAndPast,
      required this.overdueDateTime,
      required this.total});
}
