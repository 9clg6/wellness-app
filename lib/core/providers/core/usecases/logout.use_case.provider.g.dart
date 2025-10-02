// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout.use_case.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Logout Use Case provider

@ProviderFor(logoutUseCase)
const logoutUseCaseProvider = LogoutUseCaseProvider._();

/// Logout Use Case provider

final class LogoutUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<LogoutUseCase>,
          LogoutUseCase,
          FutureOr<LogoutUseCase>
        >
    with $FutureModifier<LogoutUseCase>, $FutureProvider<LogoutUseCase> {
  /// Logout Use Case provider
  const LogoutUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logoutUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logoutUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<LogoutUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<LogoutUseCase> create(Ref ref) {
    return logoutUseCase(ref);
  }
}

String _$logoutUseCaseHash() => r'725125cc67e26efc2badf59083a93c37605e35ce';
