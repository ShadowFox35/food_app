part of 'cart_bloc.dart';

abstract class CartEvent {}

class InitialEvent extends CartEvent {}

class IncrementEvent extends CartEvent {
  final CartItemEntity item;

  IncrementEvent({required this.item});
}

class DecrementEvent extends CartEvent {
  final CartItemEntity item;

  DecrementEvent({required this.item});
}

class ClearCartEvent extends CartEvent {}
