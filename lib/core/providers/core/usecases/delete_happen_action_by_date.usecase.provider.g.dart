// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_happen_action_by_date.usecase.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for DeleteHappenActionByDateUseCase

@ProviderFor(deleteHappenActionByDateUseCase)
const deleteHappenActionByDateUseCaseProvider =
    DeleteHappenActionByDateUseCaseProvider._();

/// Provider for DeleteHappenActionByDateUseCase

final class DeleteHappenActionByDateUseCaseProvider
    extends
        $FunctionalProvider<
          AsyncValue<DeleteHappenActionByDateUseCase>,
          DeleteHappenActionByDateUseCase,
          FutureOr<DeleteHappenActionByDateUseCase>
        >
    with
        $FutureModifier<DeleteHappenActionByDateUseCase>,
        $FutureProvider<DeleteHappenActionByDateUseCase> {
  /// Provider for DeleteHappenActionByDateUseCase
  const DeleteHappenActionByDateUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'deleteHappenActionByDateUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$deleteHappenActionByDateUseCaseHash();

  @$internal
  @override
  $FutureProviderElement<DeleteHappenActionByDateUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DeleteHappenActionByDateUseCase> create(Ref ref) {
    return deleteHappenActionByDateUseCase(ref);
  }
}

String _$deleteHappenActionByDateUseCaseHash() =>
    r'b6dfe1aa9e63ed28820b3132585c78555cae1c0e';
