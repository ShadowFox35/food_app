import 'package:data/data.dart';
import 'package:domain/domain.dart';

class DishMapper {
  static DishModel toModel(DishEntity entity) {
    return DishModel(
      image: entity.image,
      name: entity.name,
      type: entity.type,
      ingredients: entity.ingredients,
      details: entity.details,
      cost: entity.cost,
      id: entity.id,
    );
  }

  static DishEntity toEntity(DishModel model) {
    return DishEntity(
      image: model.image ?? '',
      name: model.name ?? '',
      type: model.type ?? '',
      ingredients: model.ingredients ?? '',
      details: model.details ?? '',
      cost: model.cost ?? 0,
      id: model.id ?? '',
    );
  }
}
