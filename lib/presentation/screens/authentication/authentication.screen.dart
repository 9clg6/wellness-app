import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:welly/core/localization/generated/locale_keys.g.dart';
import 'package:welly/gen/assets.gen.dart';
import 'package:welly/presentation/screens/authentication/authentication.state.dart';
import 'package:welly/presentation/screens/authentication/authentication.view_model.dart';
import 'package:welly/presentation/widgets/custom_loader.dart';
import 'package:welly/presentation/widgets/error_placeholder.dart';
import 'package:welly/presentation/widgets/tappable_componenent.dart';
import 'package:welly/presentation/widgets/text_variant.dart';

/// Authentication Screen
@RoutePage()
class AuthenticationScreen extends ConsumerStatefulWidget {
  /// Constructor
  const AuthenticationScreen({this.onFinished, super.key});

  /// On finished
  final void Function()? onFinished;

  /// Create State
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AuthenticationScreenState();
}

class _AuthenticationScreenState extends ConsumerState<AuthenticationScreen> {
  @override
  Widget build(BuildContext context) {
    final Authentication viewModel = ref.watch(authenticationProvider.notifier);
    final AsyncValue<AuthenticationState> state = ref.watch(
      authenticationProvider,
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: state.when(
            data: (AuthenticationState data) => Form(
              key: GlobalKey<FormState>(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Gap(96),
                  if (Platform.isIOS)
                    SignInWithAppleButton(
                      onPressed: () => viewModel.loginWithApple(
                        onFinished: widget.onFinished,
                      ),
                      text: LocaleKeys.authentication_loginWithApple.tr(),
                    ),
                  const Gap(16),
                  SizedBox(
                    width: double.infinity,
                    child: TappableComponent(
                      onTap: () => viewModel.loginWithGoogle(
                        onFinished: widget.onFinished,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      splashColor: Colors.grey.withAlpha(30),
                      boxShadow: const <BoxShadow>[
                        BoxShadow(
                          color: Color(0x1A000000),
                          blurRadius: 2,
                          offset: Offset(0, 1),
                        ),
                      ],
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: const Color(0xFFE0E0E0)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 8),
                              child: Image.asset(
                                Assets.images.google.path,
                                height: 20,
                                width: 20,
                                fit: BoxFit.cover,
                              ),
                            ),
                            TextVariant(
                              LocaleKeys.authentication_loginWithGoogle.tr(),
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Gap(16),
                  TextButton(
                    onPressed: widget.onFinished,
                    child: TextVariant(LocaleKeys.authentication_skip.tr()),
                  ),
                ],
              ),
            ),
            error: ErrorPlaceholder.new,
            loading: CustomLoader.new,
          ),
        ),
      ),
    );
  }
}
