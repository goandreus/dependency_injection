import 'package:dependency_injection/blocs/auth/auth_bloc.dart';
import 'package:dependency_injection/repositories/auth_repository.dart';
import 'package:dependency_injection/repositories/notification_repository.dart';
import 'package:injector/injector.dart';

class Register {
  void regist() {
    final injector = Injector.appInstance;

    injector.registerDependency<AuthRepository>(() {
      final _authRepository = AuthRepository(null);
      return _authRepository;
    });

    injector.registerDependency<NotificationRepository>(
        () => NotificationRepository());

    injector.registerSingleton<AuthBloc>(
      () => AuthBloc(
        injector.get<AuthRepository>(),
        injector.get<NotificationRepository>(),
      ),
    );
  }
}
