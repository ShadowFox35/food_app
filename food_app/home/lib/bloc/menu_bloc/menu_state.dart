part of 'menu_bloc.dart';

class MenuState {}

class MenuStateInitial extends MenuState {}

class MenuStateLoading extends MenuState {}

class MenuStateLoaded extends MenuState {
  final List<MenuItemEntity> menuListLoaded;
  MenuStateLoaded({required this.menuListLoaded});
}

class MenuStateFail extends MenuState {
  final String errorMessage;

  MenuStateFail({required this.errorMessage});
}
