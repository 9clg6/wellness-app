// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_happen_actions.usecase.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for GetHappenActionsUseCase

@ProviderFor(getHappenActionsUseCase)
const getHappenActionsUseCaseProvider = GetHappenActionsUseCaseProvider._();

/// Provider for GetHappenActionsUseCase

final class GetHappenActionsUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<GetHappenActionsUseCase>,
          GetHappenActionsUseCase,
          FutureOr<GetHappenActionsUseCase>
        >
    with
        $FutureModifier<GetHappenActionsUseCase>,
        $FutureProvider<GetHappenActionsUseCase> {
  /// Provider for GetHappenActionsUseCase
  const GetHappenActionsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getHappenActionsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getHappenActionsUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<GetHappenActionsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<GetHappenActionsUseCase> create(Ref ref) {
    return getHappenActionsUseCase(ref);
  }
}

String _$getHappenActionsUseCaseHash() =>
    r'0185c35b3cd0390e62ef0e985639412e6e88b542';
