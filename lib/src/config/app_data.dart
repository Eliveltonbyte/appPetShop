import 'package:quitanda/src/models/cart_item_model.dart';
import 'package:quitanda/src/models/item_model.dart';
import 'package:quitanda/src/models/user_model.dart';

import '../models/order_models.dart';

ItemModel racao = ItemModel(
  description: 'Ração Golden Premium 15KG Adulto',
  imgUrl: 'assets/produt/racao-golden.png',
  itemName: 'Ração',
  price: 149.50,
  unit: 'kg',
);

ItemModel brinquedo = ItemModel(
  description: 'Brinquedo',
  imgUrl: 'assets/produt/brinq.png',
  itemName: 'Briquendo',
  price: 7.35,
  unit: 'un',
);

ItemModel cama = ItemModel(
  description: 'Cama para Cães porte Pequeno',
  imgUrl: 'assets/produt/cama.png',
  itemName: 'Cama Pequena',
  price: 50.99,
  unit: 'un',
);

ItemModel shampoo = ItemModel(
  description: 'Shampoo Sanol Neutro',
  imgUrl: 'assets/produt/sanol.png',
  itemName: 'Shampoo',
  price: 15.00,
  unit: 'un',
);

ItemModel remedio = ItemModel(
  description: 'Bravecto Anti-Pulgas 20KG',
  imgUrl: 'assets/produt/anti.png',
  itemName: 'Remedio contra pulgas',
  price: 120.00,
  unit: 'un',
);

List<ItemModel> items = [
  racao,
  brinquedo,
  cama,
  shampoo,
  remedio,
];

List<String> categories = [
  'Brinquedos',
  'Roupas',
  'Higiêne',
  'Rações',
  'Fármacia',
  'Outros',
];

List<CartItemModel> cartItens = [
  CartItemModel(
    item: racao,
    quantity: 1,
  ),
  CartItemModel(
    item: remedio,
    quantity: 1,
  ),
  CartItemModel(
    item: brinquedo,
    quantity: 4,
  ),
];

UserModel user = UserModel(
  name: 'Elivelton',
  email: 'elivelton@gmail.com',
  phone: '75 98181-7628',
  cpf: '123.567.321.98',
  password: '12345',
);

List<OderModel> order = [
  OderModel(
    copyAndPast: 'uururue5',
    creatDateTime: DateTime.parse('2023-04-24 11:45:10.408'),
    overdueDateTime: DateTime.parse('2023-04-30 10:45:10.408'),
    id: 'aaa254785de',
    status: 'aguardando pagamento',
    total: 7.35,
    items: [
      CartItemModel(
        item: brinquedo,
        quantity: 1,
      ),
      CartItemModel(
        item: racao,
        quantity: 1,
      ),
    ],
  ),
];
