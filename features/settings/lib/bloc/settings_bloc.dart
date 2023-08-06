import 'package:core/core.dart';
import 'package:domain/domain.dart';

part 'settings_state.dart';
part 'settings_event.dart';

class SettingsBloc extends Bloc<ThemeEvent, SettingsState> {
  final SetThemeUseCase _setThemeUseCase;
  final GetThemeUseCase _getThemeUseCase;

  SettingsBloc(
      {required SetThemeUseCase setThemeUseCase,
      required GetThemeUseCase getThemeUseCase})
      : _setThemeUseCase = setThemeUseCase,
        _getThemeUseCase = getThemeUseCase,
        super(SettingsState(isDark: true)) {
    on<SetThemeEvent>(_setTheme);
    on<GetThemeEvent>(_getTheme);
    add(GetThemeEvent());
  }

  void _setTheme(SetThemeEvent event, Emitter<SettingsState> emit) {
    _setThemeUseCase.execute(event.isDark);
    emit(SettingsState(isDark: event.isDark));
  }

  void _getTheme(GetThemeEvent event, Emitter<SettingsState> emit) async {
    emit(
      SettingsState(
        isDark: await _getThemeUseCase.execute(const NoParams()),
      ),
    );
  }
}
