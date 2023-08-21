import 'package:domain/domain.dart';
import 'package:core/core.dart';

part 'menu_state.dart';
part 'menu_event.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final GetMenuListUseCase _getMenuListUsecase;
  final SaveItemsUseCase _saveItemsUsecase;

  MenuBloc({
    required GetMenuListUseCase getMenuListUsecase,
    required SaveItemsUseCase saveItemsUsecase,
  })  : _getMenuListUsecase = getMenuListUsecase,
        _saveItemsUsecase = saveItemsUsecase,
        super(const MenuState()) {
    on<NavigateToDishEvent>(_onNavigateToDish);
    on<LoadMenuList>(_getMenu);
    on<AddToCartEvent>(_addToCart);
    add(LoadMenuList(0));
  }

  Future<void> _getMenu(LoadMenuList event, Emitter<MenuState> emit) async {
    try {
      emit(
        state.copyWith(isLoading: true, error: null),
      );
      final List<DishEntity> dishes =
          await _getMenuListUsecase.execute(event.page);
      emit(state.copyWith(
          dishesList: [...state.dishesList, ...dishes], isLoading: false));
    } catch (e) {
      emit(
        state.copyWith(error: e, isLoading: false),
      );
    }
  }

  Future<void> _onNavigateToDish(
      NavigateToDishEvent event, Emitter<MenuState> emit) async {
    appLocator<AppRouter>().push(DishRoute(entity: event.menuItem));
  }

  Future<void> _addToCart(AddToCartEvent event, Emitter<MenuState> emit) async {
    _saveItemsUsecase.execute(
      CartItemEntity(
        count: 1,
        dishEntity: event.menuItem,
      ),
    );
    emit(state.copyWith(isAdded: true));
  }
}
