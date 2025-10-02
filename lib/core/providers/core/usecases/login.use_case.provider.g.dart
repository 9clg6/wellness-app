// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.use_case.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Login Use Case provider

@ProviderFor(loginUseCase)
const loginUseCaseProvider = LoginUseCaseProvider._();

/// Login Use Case provider

final class LoginUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<LoginUseCase>,
          LoginUseCase,
          FutureOr<LoginUseCase>
        >
    with $FutureModifier<LoginUseCase>, $FutureProvider<LoginUseCase> {
  /// Login Use Case provider
  const LoginUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<LoginUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LoginUseCase> create(Ref ref) {
    return loginUseCase(ref);
  }
}

String _$loginUseCaseHash() => r'8bc7fc52ecee96124c025be6d599fc9987e7c86d';
