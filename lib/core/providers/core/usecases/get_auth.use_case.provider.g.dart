// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_auth.use_case.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Get user use case provider

@ProviderFor(getAuthUseCase)
const getAuthUseCaseProvider = GetAuthUseCaseProvider._();

/// Get user use case provider

final class GetAuthUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetAuthUseCase>,
          GetAuthUseCase,
          FutureOr<GetAuthUseCase>
        >
    with $FutureModifier<GetAuthUseCase>, $FutureProvider<GetAuthUseCase> {
  /// Get user use case provider
  const GetAuthUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAuthUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAuthUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetAuthUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetAuthUseCase> create(Ref ref) {
    return getAuthUseCase(ref);
  }
}

String _$getAuthUseCaseHash() => r'2998d9a8e4bf648d27666fc1f667e4dc51703e9c';
