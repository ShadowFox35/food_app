part of 'menu_bloc.dart';

class MenuEvent {}

class LoadMenuList extends MenuEvent {
  final int page;
  LoadMenuList(this.page);
}
