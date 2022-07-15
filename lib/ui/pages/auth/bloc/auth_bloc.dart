import 'package:bavito_mobile_app/data/entity/client.dart';
import 'package:bavito_mobile_app/data/repository/user_repository.dart';
import 'package:bavito_mobile_app/services/user_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserService userService;
  final UserRepository userRepository;

  AuthBloc({
    required this.userService,
    required this.userRepository,
  }) : super(AuthInitial()) {
    on<AuthInProgress>((event, emit) async {
      try {
        emit(AuthLoading());

        final phone = event.phone;
        final user = await userRepository.login(phone);
        userService.createUser(user);

        emit(AuthLoadingDone(user));
      } catch (e) {
        print(event.phone);
        emit(AuthLoadingFailure('Что-то пошло не так!'));
      }
    });
  }
}
