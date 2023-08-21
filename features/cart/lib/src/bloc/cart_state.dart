part of 'cart_bloc.dart';

class CartState {
  final bool isLoading;
  final List<CartItemEntity> itemsList;

  CartState({
    this.isLoading = false,
    required this.itemsList,
  });

  double totalCost() {
    double total = 0;
    for (CartItemEntity item in itemsList) {
      total += item.totalCost;
    }
    return total;
  }

  double finalToPay() {
    List<double> toPay = [0];
    double total = 0;
    for (CartItemEntity item in itemsList) {
      total += item.totalCost;
      toPay.add(total);
    }
    double finalToPay = toPay.reduce((value, element) => value + element);
    return finalToPay;
  }

  CartState copyWith({
    bool? isLoading,
    List<CartItemEntity>? itemsList,
  }) {
    return CartState(
      isLoading: isLoading ?? this.isLoading,
      itemsList: itemsList ?? this.itemsList,
    );
  }
}
