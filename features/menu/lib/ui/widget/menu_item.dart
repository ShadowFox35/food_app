import 'package:core/core.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:menu/bloc/menu_bloc.dart';

class MenuItem extends StatefulWidget {
  final DishEntity menuItem;

  // final String name;
  // final String ingredients;
  // final String image;
  // final double cost;

  // const MenuItem({
  //   required this.name,
  //   required this.ingredients,
  //   required this.image,
  //   required this.cost,
  //   super.key,
  // });

  const MenuItem({
    super.key,
    required this.menuItem,
  });

  @override
  State<MenuItem> createState() => _MenuItemState();
}

class _MenuItemState extends State<MenuItem> {
  @override
  Widget build(BuildContext context) {
    final menuItem = widget.menuItem;

    return Row(
      children: <Widget>[
        SizedBox(
          width: AppDimens.size_110,
          height: AppDimens.size_110,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(AppDimens.radius_10),
            child: Image.network(menuItem.image),
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: AppDimens.padding_20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  menuItem.name,
                  style: GoogleFonts.poppins(textStyle: AppFonts.normal_18),
                ),
                Text(
                  menuItem.ingredients,
                  softWrap: true,
                  style: GoogleFonts.poppins(textStyle: AppFonts.normal_16),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: AppDimens.padding_10,
                  ),
                  child: Row(
                    children: <Widget>[
                      Text(
                        '${menuItem.cost} \$',
                        style: GoogleFonts.poppins(
                                textStyle: AppFonts.normal_14)
                            .copyWith(color: Theme.of(context).primaryColor),
                      ),
                      Container(
                        width: AppDimens.size_30,
                        height: AppDimens.size_30,
                        margin:
                            const EdgeInsets.only(left: AppDimens.padding_10),
                        child: ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<MenuBloc>(context)
                                .add(AddToCartEvent(menuItem: menuItem));
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Theme.of(context).primaryColor,
                          ),
                          child: const Icon(
                            Icons.add,
                            size: AppDimens.size_20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
