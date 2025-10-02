// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review.view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Review view model

@ProviderFor(ReviewViewModel)
const reviewViewModelProvider = ReviewViewModelProvider._();

/// Review view model
final class ReviewViewModelProvider
    extends $AsyncNotifierProvider<ReviewViewModel, ReviewState> {
  /// Review view model
  const ReviewViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'reviewViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$reviewViewModelHash();

  @$internal
  @override
  ReviewViewModel create() => ReviewViewModel();
}

String _$reviewViewModelHash() => r'6f7676d074d367f9fe7aaec34ffb4b3a6f9ae542';

/// Review view model

abstract class _$ReviewViewModel extends $AsyncNotifier<ReviewState> {
  FutureOr<ReviewState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ReviewState>, ReviewState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ReviewState>, ReviewState>,
              AsyncValue<ReviewState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
