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
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 48),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.splashBg.path),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: state.when(
            data: (AuthenticationState data) => Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        TextVariant(
                          LocaleKeys.authentication_devenezUnWelly.tr(),
                          variantType: TextVariantType.headlineLarge,
                          style: const TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: 1.5,
                          ),
                        ),
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextVariant(
                                LocaleKeys
                                    .authentication_devenezUnWellyDescription
                                    .tr(),
                                variantType: TextVariantType.titleLarge,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(32),
                Column(
                  children: <Widget>[
                    if (Platform.isIOS)
                      SignInWithAppleButton(
                        onPressed: () => viewModel.loginWithApple(
                          onFinished: widget.onFinished,
                        ),
                        text: LocaleKeys.authentication_loginWithApple.tr(),
                      ),
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
                                padding: const EdgeInsets.only(right: 4),
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
                    Center(
                      child: TextButton(
                        onPressed: widget.onFinished,
                        child: TextVariant(
                          LocaleKeys.authentication_skip.tr(),
                          color: Colors.white,
                          variantType: TextVariantType.titleMedium,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            error: ErrorPlaceholder.new,
            loading: CustomLoader.new,
          ),
        ),
      ),
    );
  }
}
