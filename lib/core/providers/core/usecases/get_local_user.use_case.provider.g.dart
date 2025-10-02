// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_local_user.use_case.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Get local user use case provider

@ProviderFor(getLocalUserUseCase)
const getLocalUserUseCaseProvider = GetLocalUserUseCaseProvider._();

/// Get local user use case provider

final class GetLocalUserUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetLocalUserUseCase>,
          GetLocalUserUseCase,
          FutureOr<GetLocalUserUseCase>
        >
    with
        $FutureModifier<GetLocalUserUseCase>,
        $FutureProvider<GetLocalUserUseCase> {
  /// Get local user use case provider
  const GetLocalUserUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getLocalUserUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getLocalUserUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetLocalUserUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetLocalUserUseCase> create(Ref ref) {
    return getLocalUserUseCase(ref);
  }
}

String _$getLocalUserUseCaseHash() =>
    r'ebe0051cecae2667ce89195f2f68ef0cada73051';
