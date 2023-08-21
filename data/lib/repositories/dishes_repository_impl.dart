import 'package:data/mappers/dish_mapper.dart';
import 'package:data/models/dish/dish_model.dart';
import 'package:data/providers/remote/firebase_provider.dart';
import 'package:domain/domain.dart';

class DishesRepository implements IDishesRepository {
  final FirebaseProvider _firebaseProvider;

  DishesRepository(this._firebaseProvider);

  @override
  Future<List<DishEntity>> getMenuList(int page) async {
    final List<DishModel> result = await _firebaseProvider.fetchMenuItems();
    return result.map((DishModel e) => DishMapper.toEntity(e)).toList();
  }
}
