import 'package:auto_route/auto_route.dart';
import 'package:bavito_mobile_app/data/repository/user_repository.dart';
import 'package:bavito_mobile_app/di/locator.dart';
import 'package:bavito_mobile_app/services/user_service.dart';
import 'package:bavito_mobile_app/ui/common/show_snackbar.dart';
import 'package:bavito_mobile_app/ui/pages/auth/bloc/auth_bloc.dart';
import 'package:bavito_mobile_app/ui/pages/auth/widgets/login_button.dart';
import 'package:bavito_mobile_app/ui/pages/auth/widgets/login_input.dart';
import 'package:bavito_mobile_app/ui/pages/auth/widgets/login_title.dart';
import 'package:bavito_mobile_app/utils/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 47.h, right: 15, left: 15, bottom: 49.h),
          decoration: const BoxDecoration(),
          child: BlocProvider(
            create: (_) => AuthBloc(
              userService: getIt<UserService>(),
              userRepository: getIt<UserRepository>(),
            ),
            child: LoginScreentView(
              phoneNumberController: _phoneNumberController,
            ),
          ),
        ),
      ),
    );
  }
}

class LoginScreentView extends StatelessWidget {
  final TextEditingController phoneNumberController;

  const LoginScreentView({
    required this.phoneNumberController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const LoginTitle(),
        SizedBox(
          height: 64.h,
        ),
        BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            if (state is AuthLoadingFailure) {
              showSnackBar(context: context, message: state.msg);
            }

            if (state is AuthLoadingDone) {
              context.router.push(const HomePageRoute());
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Expanded(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 36.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 16.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 47.h,
                  ),
                  LoginInput(phoneNumberController: phoneNumberController),
                  SizedBox(
                    height: 27.h,
                  ),
                  BlocBuilder<AuthBloc, AuthState>(
                    builder: (context, state) {
                      return LoginButton(
                        text: 'Войти',
                        onPressed: () {
                          final phoneNumber = phoneNumberController.text;

                          context.read<AuthBloc>().add(
                                AuthInProgress(
                                  phone: phoneNumber,
                                ),
                              );
                        },
                        isLoading: state is AuthLoading,
                      );
                    },
                  ),
                  SizedBox(
                    height: 27.h,
                  ),
                  LoginButton(
                    text: 'Войти как гость',
                    onPressed: () {
                      context.router.push(const HomePageRoute());
                    },
                    isLoading: false,
                  ),
                ],
              );
            }
          },
        ),
      ],
    );
  }
}
