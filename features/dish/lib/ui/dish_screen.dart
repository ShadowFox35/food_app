import 'package:core_ui/core_ui.dart';
import 'package:core/core.dart';
import 'package:domain/domain.dart';

import 'package:flutter/material.dart';

import 'widget/dish_counter.dart';

class DishScreen extends StatelessWidget {
  final DishEntity dishEntity;

  const DishScreen({
    super.key,
    required DishEntity entity,
  }) : dishEntity = entity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: <Widget>[
                Image.network(
                  dishEntity.image,
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
                      color: Theme.of(context).primaryColor,
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
                    dishEntity.name,
                    style: GoogleFonts.poppins(textStyle: AppFonts.normal_20),
                  ),
                  Text(
                    dishEntity.details,
                    style: GoogleFonts.poppins(textStyle: AppFonts.normal_16),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: AppDimens.padding_10),
                    child: Text(
                      AppConstants.ingredients,
                      style: GoogleFonts.poppins(textStyle: AppFonts.normal_18),
                    ),
                  ),
                  Text(
                    dishEntity.ingredients,
                    style: GoogleFonts.poppins(textStyle: AppFonts.normal_16),
                  ),
                ],
              ),
            ),
            const DishCounter(),
            Container(
              margin: const EdgeInsets.only(bottom: AppDimens.padding_20),
              child: Text(
                '${dishEntity.cost.toString()} \$',
                style: GoogleFonts.poppins(textStyle: AppFonts.normal_20)
                    .copyWith(color: Theme.of(context).primaryColor),
                textAlign: TextAlign.center,
              ),
            ),
            Align(
              child: GestureDetector(
                onTap: () {
                  null;
                },
                child: const AddButton(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
