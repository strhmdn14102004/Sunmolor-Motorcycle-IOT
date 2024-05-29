import 'package:sunmolor_iot/api/endpoint/keranjang/item_request.dart';

abstract class HomeEvent {}

class LoadMerchantData extends HomeEvent {}

class LoadMenuData extends HomeEvent {}

class AddToCart extends HomeEvent {
  final List<CartProdukitem> cartItems;

  AddToCart(this.cartItems);
}

