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
      child: Stack(
        children: [
          Column(
            children: [
              FractionallySizedBox(
                widthFactor: 1.0,
                child: AspectRatio(
                  aspectRatio: 1.0,
                  child: SizedBox(
                    // height: AppDimens.size_245,
                    child: Image.network(
                      _model.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppDimens.padding_25),
                margin: const EdgeInsets.only(top: AppDimens.padding_10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _model.name,
                        style: AppFonts.normal_18,
                      ),
                      Text(
                        _model.details,
                        style: AppFonts.normal_16,
                      ),
                      Text(_model.ingredients, style: AppFonts.normal_16),
                    ]),
              ),
              const DishCounter(),
              const AddButton(),
            ],
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: const IconThemeData(
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
