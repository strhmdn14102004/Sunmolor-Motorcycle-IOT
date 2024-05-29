import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sunmolor_iot/api/api_manager.dart';
import 'package:sunmolor_iot/api/endpoint/merchant/merchant_item.dart';
import 'package:sunmolor_iot/api/endpoint/product/product_item.dart';
import 'package:sunmolor_iot/module/home/home_event.dart';
import 'package:sunmolor_iot/module/home/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ApiManager apiManager;

  HomeBloc({required this.apiManager}) : super(HomeInitial()) {
    on<LoadMerchantData>(_onLoadMerchantData);
    on<LoadMenuData>(_onLoadMenuData);
    on<AddToCart>(_onAddToCart);
  }

  Future<void> _onLoadMerchantData(
      LoadMerchantData event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final response = await apiManager.getMerchantData();

      if (response != null && response is Map<String, dynamic>) {
        MerchantItem merchantData = MerchantItem.fromJson(response);
        emit(HomeLoaded(merchantData: [merchantData]));
      } else {
        emit(HomeError(
            message: "Failed to load merchant data: Invalid response"));
      }
    } catch (e, stackTrace) {
      print("Error: $e\nStack trace:\n$stackTrace");
      emit(HomeError(
          message:
              "Ada sesuatu yang salah, coba lagi beberapa saat kemudian."));
    }
  }

  Future<void> _onLoadMenuData(
      LoadMenuData event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final response = await apiManager.getMenuData();

      if (response != null && response is Map<String, dynamic>) {
        ProductItem menuData = ProductItem.fromJson(response);
        emit(MenuLoaded(menuData: menuData));
      } else {
        emit(HomeError(message: "Failed to load menu data: Invalid response"));
      }
    } catch (e, stackTrace) {
      print("Error: $e\nStack trace:\n$stackTrace");
      emit(HomeError(message: "Something went wrong. Please try again later."));
    }
  }

  Future<void> _onAddToCart(AddToCart event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      for (var cartItem in event.cartItems) {
        await apiManager.addToCart(cartItem.toJson());
      }
      emit(CartItemAddedSuccessfully());
    } catch (e, stackTrace) {
      print("Error: $e\nStack trace:\n$stackTrace");
      emit(HomeError(
          message:
              "Gagal menambahkan item ke keranjang. Silakan coba lagi nanti."));
    }
  }
}
