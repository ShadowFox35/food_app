part of 'menu_bloc.dart';

abstract class MenuListState {}

class MenuState {
  final bool isLoading;
  final List<DishEntity> dishesList;
  final Object? error;
  final bool isAdded;

  const MenuState({
    this.isLoading = true,
    this.dishesList = const [],
    this.error,
    this.isAdded = false,
  });

  MenuState copyWith({
    List<DishEntity>? dishesList,
    bool? isLoading,
    Object? error,
    bool? isAdded,
  }) {
    return MenuState(
      dishesList: dishesList ?? this.dishesList,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      isAdded: isAdded ?? this.isAdded,
    );
  }
}
