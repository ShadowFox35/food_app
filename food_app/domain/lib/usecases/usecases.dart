// import '../entities/menu_item_entity.dart';

// abstract class IUseCase<Type, int> {
//   Future<List<MenuItemEntity>> call(int page);
// }

// final class SignInRequest {
//   final String email;
//   final String password;

//   SignInRequest({
//     required this.email,
//     required this.password,
//   });
// }

// class IsAppInitUseCase extends UseCase<bool, SignInRequest> {
//   final UserRepository _userRepository;

//   IsAppInitUseCase({
//     required UserRepository userRepository,
//   }) : _userRepository = userRepository;

//   @override
//   SignInRequest execute(NoParams input) {
//     return _userRepository.isAppInit;
//   }
// }

abstract class UseCase<OutputT, InputT> {
  OutputT execute(InputT input);
}

abstract class FutureUseCase<OutputT, InputT> {
  Future<OutputT> execute(InputT input);
}

abstract class StreamUseCase<OutputT, InputT> {
  Stream<OutputT> execute(InputT input);
}

class NoParams {}
