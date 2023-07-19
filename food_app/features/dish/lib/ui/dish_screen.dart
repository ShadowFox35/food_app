import 'package:auto_route/auto_route.dart';
import 'package:core_ui/core_ui.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';

import 'widget/dish_counter.dart';

class DishScreen extends StatelessWidget {
  final MenuItemEntity _model;

  const DishScreen({
    super.key,
    required MenuItemEntity model,
  }) : _model = model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: <Widget>[
                Image.network(
                  _model.image,
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Container(
                    width: AppDimens.size_40,
                    height: AppDimens.size_40,
                    decoration: BoxDecoration(
                      color: AppColors.orange,
                      borderRadius: BorderRadius.circular(AppDimens.radius_20),
                    ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: AppColors.lightGrey,
                      ),
                      onPressed: () {
                        context.router.pop();
                      },
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppDimens.padding_25),
              margin: const EdgeInsets.only(top: AppDimens.padding_10),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _model.name,
                      style: GoogleFonts.poppins(textStyle: AppFonts.normal_20)
                          .copyWith(color: AppColors.black),
                    ),
                    Text(
                      _model.details,
                      style: GoogleFonts.poppins(textStyle: AppFonts.normal_16)
                          .copyWith(color: AppColors.darkGrey),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: AppDimens.padding_10),
                      child: Text(
                        AppConstants.ingredients,
                        style:
                            GoogleFonts.poppins(textStyle: AppFonts.normal_18)
                                .copyWith(color: AppColors.darkGrey),
                      ),
                    ),
                    Text(
                      _model.ingredients,
                      style: GoogleFonts.poppins(textStyle: AppFonts.normal_16)
                          .copyWith(color: AppColors.darkGrey),
                    ),
                  ]),
            ),
            const DishCounter(),
            Container(
              margin: const EdgeInsets.only(bottom: AppDimens.padding_20),
              child: Text(
                '${_model.cost.toString()} \$',
                style: GoogleFonts.poppins(textStyle: AppFonts.normal_20)
                    .copyWith(color: AppColors.orange),
                textAlign: TextAlign.center,
              ),
            ),
            const Align(child: AddButton()),
          ],
        ),
      ),
    );
  }
}
