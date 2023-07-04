import 'package:domain/domain.dart';
import 'package:core/core.dart';

part 'menu_state.dart';
part 'menu_event.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  final GetMenuListUseCase _getMenuListUsecase;

  MenuBloc(this._getMenuListUsecase) : super(MenuStateInitial()) {
    on<LoadMenuList>(_getMenu);

    add(LoadMenuList(0));
  }

  void _getMenu<LoadMenuList>(event, emit) async {
    emit(MenuStateLoading());
    try {
      emit(MenuStateLoaded(
          menuListLoaded: await _getMenuListUsecase.execute(event.page)));
    } catch (e) {
      emit(MenuStateFail(errorMessage: e.toString()));
    }
  }
}
