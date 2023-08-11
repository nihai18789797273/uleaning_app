import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uleaning_app/pages/sign_up/notifier/register_state.dart';

part 'register_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return RegisterState();
  }

  void onUserNameChange(String name) {
    state = state.copyWith(userName: name);
  }

  void onEmailChange(String name) {
    state = state.copyWith(userName: name);
  }

  void onPasswordChange(String name) {
    state = state.copyWith(userName: name);
  }

  void onConfirmPasswordChange(String name) {
    state = state.copyWith(userName: name);
  }
}
