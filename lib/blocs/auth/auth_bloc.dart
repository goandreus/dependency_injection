import 'package:bloc/bloc.dart';
import 'package:dependency_injection/repositories/auth_repository.dart';
import 'package:dependency_injection/repositories/notification_repository.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final NotificationRepository _notificationRepository;

  AuthBloc(
    this._authRepository,
    this._notificationRepository,
  ) : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
