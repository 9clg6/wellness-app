// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai.repository.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// AI repository provider

@ProviderFor(aiRepository)
const aiRepositoryProvider = AiRepositoryProvider._();

/// AI repository provider

final class AiRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<AIRepository>,
          AIRepository,
          FutureOr<AIRepository>
        >
    with $FutureModifier<AIRepository>, $FutureProvider<AIRepository> {
  /// AI repository provider
  const AiRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<AIRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<AIRepository> create(Ref ref) {
    return aiRepository(ref);
  }
}

String _$aiRepositoryHash() => r'9d7f48c7af429c9bb604aee0c72820acd07d98c5';
