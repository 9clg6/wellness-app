// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.service.provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider for NotificationService

@ProviderFor(notificationService)
const notificationServiceProvider = NotificationServiceProvider._();

/// Provider for NotificationService

final class NotificationServiceProvider
    extends
        $FunctionalProvider<
          AsyncValue<NotificationService>,
          NotificationService,
          FutureOr<NotificationService>
        >
    with
        $FutureModifier<NotificationService>,
        $FutureProvider<NotificationService> {
  /// Provider for NotificationService
  const NotificationServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'notificationServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$notificationServiceHash();

  @$internal
  @override
  $FutureProviderElement<NotificationService> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<NotificationService> create(Ref ref) {
    return notificationService(ref);
  }
}

String _$notificationServiceHash() =>
    r'8e3a2692b34c6d9e31553a59c42ef3fa20d10854';
