part of 'menu_bloc.dart';

abstract class MenuEvent {}

class LoadMenuList extends MenuEvent {
  final int page;
  LoadMenuList(this.page);
}

class NavigateToDishEvent extends MenuEvent {
  final DishEntity menuItem;
  NavigateToDishEvent({required this.menuItem});
}

class AddToCartEvent extends MenuEvent {
  final DishEntity menuItem;
  AddToCartEvent({required this.menuItem});
}
