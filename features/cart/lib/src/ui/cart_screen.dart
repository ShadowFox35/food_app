import 'package:cart/src/bloc/cart_bloc.dart';
import 'package:cart/src/ui/cart_item.dart';
import 'package:core_ui/core_ui.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  final List<CartItemEntity> cartList;
  const CartScreen(this.cartList, {super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CartBloc(
        getItemsUseCase: appLocator<GetItemsUseCase>(),
        changeItemsCountUseCase: appLocator<ChangeItemsCountUseCase>(),
        clearCartUseCase: appLocator<ClearCartUseCase>(),
      ),
      child: BlocBuilder<CartBloc, CartState>(
        builder: (BuildContext context, CartState state) {
          if (state.isLoading) {
            return const CircularProgressIndicator();
          }
          // double finalToPay() {
          //   List<double> toPay = [];
          //   double total = 0;
          //   for (CartItemEntity item in state.itemsList) {
          //     total += item.totalCost;
          //     toPay.add(total);
          //   }
          //   double finalToPay =
          //       toPay.reduce((value, element) => value + element);
          //   return finalToPay;
          // }

          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              centerTitle: true,
              title: Text(
                AppConstants.cartTitle,
                style: AppFonts.normal_18.copyWith(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              actions: <Container>[
                Container(
                  margin: const EdgeInsets.only(right: AppDimens.padding_10),
                  child: BlocBuilder<CartBloc, CartState>(
                    builder: (context, state) {
                      return IconButton(
                        color: Theme.of(context).primaryColor,
                        iconSize: AppDimens.size_20,
                        icon: const Icon(Icons.clear_rounded),
                        onPressed: () => BlocProvider.of<CartBloc>(context).add(
                          ClearCartEvent(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            body: Container(
              padding: const EdgeInsets.all(AppDimens.padding_25),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.separated(
                      itemCount: state.itemsList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return CartItem(
                          item: CartItemEntity(
                            dishEntity: state.itemsList[index].dishEntity,
                            count: state.itemsList[index].count,
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider(height: AppDimens.padding_40);
                      },
                    ),
                  ),
                  Text(
                    'total: ${state.finalToPay()} \$',
                    style: GoogleFonts.poppins(textStyle: AppFonts.normal_18),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
