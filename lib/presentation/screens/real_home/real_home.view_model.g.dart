// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_home.view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Real home view model

@ProviderFor(RealHomeViewModel)
const realHomeViewModelProvider = RealHomeViewModelProvider._();

/// Real home view model
final class RealHomeViewModelProvider
    extends $AsyncNotifierProvider<RealHomeViewModel, RealHomeState> {
  /// Real home view model
  const RealHomeViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'realHomeViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$realHomeViewModelHash();

  @$internal
  @override
  RealHomeViewModel create() => RealHomeViewModel();
}

String _$realHomeViewModelHash() => r'a70fb1ce20a84401dac16fdb77388f807d89a189';

/// Real home view model

abstract class _$RealHomeViewModel extends $AsyncNotifier<RealHomeState> {
  FutureOr<RealHomeState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<RealHomeState>, RealHomeState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<RealHomeState>, RealHomeState>,
              AsyncValue<RealHomeState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
