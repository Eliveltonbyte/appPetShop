import 'package:quitanda/src/models/cart_item_model.dart';
import 'package:quitanda/src/models/item_model.dart';
import 'package:quitanda/src/models/user_model.dart';

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
