import 'package:domain/usecases/usecases.dart';
import 'package:equatable/equatable.dart';

import '../entities/menu_item_entity.dart';
import '../repositories/menu_item_repository.dart';

class GetMenuList extends IUseCase<List<MenuItemEntity>, PageParams> {
  final MenuItemRepository menuItemRepository;

  GetMenuList(this.menuItemRepository);

  @override
  Future<List<MenuItemEntity>> call(PageParams params) async {
    return await menuItemRepository.getMenuList(params.page);
  }
}

class PageParams extends Equatable {
  final int page;

  const PageParams({required this.page});

  @override
  List<Object> get props => [page];
}
