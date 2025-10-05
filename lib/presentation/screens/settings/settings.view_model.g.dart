// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Settings view model

@ProviderFor(SettingsViewModel)
const settingsViewModelProvider = SettingsViewModelProvider._();

/// Settings view model
final class SettingsViewModelProvider
    extends $AsyncNotifierProvider<SettingsViewModel, SettingsViewModel> {
  /// Settings view model
  const SettingsViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'settingsViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$settingsViewModelHash();

  @$internal
  @override
  SettingsViewModel create() => SettingsViewModel();
}

String _$settingsViewModelHash() => r'cfe67477ce694801084e15df2bd74f73eba661bd';

/// Settings view model

abstract class _$SettingsViewModel extends $AsyncNotifier<SettingsViewModel> {
  FutureOr<SettingsViewModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<SettingsViewModel>, SettingsViewModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<SettingsViewModel>, SettingsViewModel>,
              AsyncValue<SettingsViewModel>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
