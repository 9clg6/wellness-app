// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user.use_case.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Get user use case provider

@ProviderFor(getUserUseCase)
const getUserUseCaseProvider = GetUserUseCaseProvider._();

/// Get user use case provider

final class GetUserUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetUserUseCase>,
          GetUserUseCase,
          FutureOr<GetUserUseCase>
        >
    with $FutureModifier<GetUserUseCase>, $FutureProvider<GetUserUseCase> {
  /// Get user use case provider
  const GetUserUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getUserUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getUserUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetUserUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetUserUseCase> create(Ref ref) {
    return getUserUseCase(ref);
  }
}

String _$getUserUseCaseHash() => r'2becafb19cbbbbfa9fe076e561da63985617d5de';
