import 'package:domain/domain.dart';
import 'package:core/core.dart';

part 'menu_state.dart';
part 'menu_event.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final GetMenuList _fetchDishesUsecase;

  MenuBloc(this._fetchDishesUsecase) : super(MenuStateInitial()) {
    on<LoadMenuList>(_getMenu);
  }

  void _getMenu<LoadMenuList>(event, emit) async {
    emit(MenuStateLoading());
    try {
      emit(MenuStateLoaded(
          menuListLoaded: await _fetchDishesUsecase.call(event.page)));
    } catch (e) {
      emit(MenuStateFail(errorMessage: e.toString()));
    }
  }
}
