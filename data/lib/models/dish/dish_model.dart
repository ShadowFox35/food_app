import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'dish_model.freezed.dart';
part 'dish_model.g.dart';

@freezed
@HiveType(typeId: 1)
class DishModel with _$DishModel {
  @JsonSerializable(explicitToJson: true)
  factory DishModel({
    @Default('') @HiveField(0) String? image,
    @Default('') @HiveField(1) String? name,
    @Default('') @HiveField(2) String? type,
    @Default('') @HiveField(3) String? ingredients,
    @Default('') @HiveField(4) String? details,
    @Default(0) @HiveField(5) double? cost,
    @Default('') @HiveField(6) String? id,
  }) = _DishModel;

  factory DishModel.fromJson(Map<String, dynamic> json) =>
      _$DishModelFromJson(json);
}
