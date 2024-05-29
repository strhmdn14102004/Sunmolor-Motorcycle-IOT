import 'package:sunmolor_iot/api/endpoint/merchant/merchant_item.dart';
import 'package:sunmolor_iot/api/endpoint/product/product_item.dart';

abstract class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<MerchantItem> merchantData;

  HomeLoaded({required this.merchantData});
}

class MenuLoaded extends HomeState {
  final ProductItem menuData;

  MenuLoaded({required this.menuData});
}

class HomeError extends HomeState {
  final String message;

  HomeError({required this.message});
}

class CartItemAddedSuccessfully extends HomeState {}
