import 'package:domain/usecases/usecases.dart';
import 'package:equatable/equatable.dart';

import '../entities/menu_item_entity.dart';
import '../repositories/menu_item_repository.dart';

class FindMenuList extends IUseCase<List<MenuItemEntity>, SearchItem> {
  final MenuItemRepository menuItemRepository;

  FindMenuList(this.menuItemRepository);

  @override
  Future<List<MenuItemEntity>> call(SearchItem params) async {
    return await menuItemRepository.findMenuItem(params.query);
  }
}

class SearchItem extends Equatable {
  final String query;

  const SearchItem({required this.query});

  @override
  List<Object> get props => [query];
}
