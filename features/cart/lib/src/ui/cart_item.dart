import 'package:cart/src/bloc/cart_bloc.dart';
import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final CartItemEntity _item;

  const CartItem({
    required CartItemEntity item,
    super.key,
  }) : _item = item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: AppDimens.padding_20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _item.dishEntity.name,
                  style: GoogleFonts.poppins(textStyle: AppFonts.normal_18),
                ),
                Text(
                  _item.dishEntity.ingredients,
                  style: GoogleFonts.poppins(textStyle: AppFonts.normal_16),
                ),
                Text(
                  'total: ${_item.totalCost} \$',
                  style: GoogleFonts.poppins(textStyle: AppFonts.normal_14)
                      .copyWith(color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
        ),
        Container(
            margin: const EdgeInsets.only(left: AppDimens.padding_10),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<CartBloc>(context).add(
                      IncrementEvent(item: _item),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: AppDimens.padding_5),
                    height: AppDimens.size_20,
                    width: AppDimens.size_20,
                    child: const MoreButton(),
                  ),
                ),
                Text(
                  '${_item.count}',
                  style: GoogleFonts.poppins(
                      textStyle: AppFonts.normal_20,
                      color: Theme.of(context).primaryColor),
                ),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<CartBloc>(context).add(
                      DecrementEvent(item: _item),
                    );
                  },
                  child: Container(
                      margin: const EdgeInsets.only(top: AppDimens.padding_5),
                      height: AppDimens.size_20,
                      width: AppDimens.size_20,
                      child: const LessButton()),
                ),
              ],
            )),
      ],
    );
  }
}
