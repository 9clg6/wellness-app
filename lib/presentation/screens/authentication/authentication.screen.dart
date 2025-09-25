import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:welly/presentation/screens/authentication/authentication.state.dart';
import 'package:welly/presentation/screens/authentication/authentication.view_model.dart';
import 'package:welly/presentation/widgets/custom_loader.dart';
import 'package:welly/presentation/widgets/error_placeholder.dart';

/// Authentication Screen
@RoutePage()
class AuthenticationScreen extends ConsumerStatefulWidget {
  /// Constructor
  const AuthenticationScreen({super.key});

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
              key: viewModel.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Gap(96),
                  if (Platform.isIOS)
                    SignInWithAppleButton(onPressed: viewModel.loginWithApple),
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
