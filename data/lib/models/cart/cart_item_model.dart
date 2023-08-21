import 'package:data/data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'cart_item_model.freezed.dart';
part 'cart_item_model.g.dart';

@freezed
@HiveType(typeId: 0)
class CartItemModel with _$CartItemModel {
  const factory CartItemModel({
    @HiveField(0) required DishModel dishModel,
    @HiveField(1) required int count,
  }) = _CartItemModel;

  factory CartItemModel.fromJson(Map<String, dynamic> json) =>
      _$CartItemModelFromJson(json);
}
