import 'package:core/core.dart';
import 'package:domain/domain.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final ChangeItemsCountUseCase _changeItemsCountUseCase;
  final GetItemsUseCase _getItemsUseCase;
  final ClearCartUseCase _clearCartUseCase;

  CartBloc({
    required ChangeItemsCountUseCase changeItemsCountUseCase,
    required GetItemsUseCase getItemsUseCase,
    required ClearCartUseCase clearCartUseCase,
  })  : _changeItemsCountUseCase = changeItemsCountUseCase,
        _getItemsUseCase = getItemsUseCase,
        _clearCartUseCase = clearCartUseCase,
        super(
          CartState(itemsList: <CartItemEntity>[]),
        ) {
    on<InitialEvent>(_init);
    on<ClearCartEvent>(_clearCart);
    on<IncrementEvent>(_incrementItem);
    on<DecrementEvent>(_decrementItem);

    add(InitialEvent());
  }

  void _init(InitialEvent event, Emitter<CartState> emit) {
    emit(state.copyWith(isLoading: true));
    try {
      final List<CartItemEntity> itemsList =
          _getItemsUseCase.execute(const NoParams());
      emit(state.copyWith(
        isLoading: false,
        itemsList: itemsList,
      ));
    } catch (e) {
      emit(
        state.copyWith(
          isLoading: false,
        ),
      );
    }
  }

  Future<void> _decrementItem(
      DecrementEvent event, Emitter<CartState> emit) async {
    int index = state.itemsList.indexWhere((CartItemEntity element) =>
        element.dishEntity.id == event.item.dishEntity.id);
    CartItemEntity currElement = state.itemsList[index]
        .copyWith(count: state.itemsList[index].count - 1);
    await _changeItemsCountUseCase.execute(currElement);
    if (currElement.count != 0) {
      state.itemsList[index] = currElement;
    } else {
      state.itemsList.removeAt(index);
    }
    emit(state.copyWith(itemsList: state.itemsList));
  }

  Future<void> _incrementItem(
      IncrementEvent event, Emitter<CartState> emit) async {
    int index = state.itemsList.indexWhere((CartItemEntity element) =>
        element.dishEntity.id == event.item.dishEntity.id);
    CartItemEntity currElement = state.itemsList[index]
        .copyWith(count: state.itemsList[index].count + 1);
    await _changeItemsCountUseCase.execute(currElement);
    state.itemsList[index] = currElement;
    emit(state.copyWith(itemsList: state.itemsList));
  }

  void _clearCart(ClearCartEvent event, Emitter<CartState> emit) async {
    await _clearCartUseCase.execute(const NoParams());
    add(InitialEvent());
  }
}
