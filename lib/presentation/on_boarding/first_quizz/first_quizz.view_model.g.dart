// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_quizz.view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// First quizz view model

@ProviderFor(FirstQuizzViewModel)
const firstQuizzViewModelProvider = FirstQuizzViewModelProvider._();

/// First quizz view model
final class FirstQuizzViewModelProvider
    extends $NotifierProvider<FirstQuizzViewModel, FirstQuizzState> {
  /// First quizz view model
  const FirstQuizzViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'firstQuizzViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$firstQuizzViewModelHash();

  @$internal
  @override
  FirstQuizzViewModel create() => FirstQuizzViewModel();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirstQuizzState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirstQuizzState>(value),
    );
  }
}

String _$firstQuizzViewModelHash() =>
    r'e1a8168476dc6818d31917752353244eb8f3e3e9';

/// First quizz view model

abstract class _$FirstQuizzViewModel extends $Notifier<FirstQuizzState> {
  FirstQuizzState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FirstQuizzState, FirstQuizzState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FirstQuizzState, FirstQuizzState>,
              FirstQuizzState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
