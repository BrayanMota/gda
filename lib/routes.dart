import 'package:flutter/material.dart';

import 'package:gda/apps/auth/pages/login.dart';
import 'package:gda/apps/auth/pages/register.dart';
import 'package:gda/apps/auth/pages/forgot_password.dart';
import 'package:gda/apps/user/pages/profile.dart';
import 'package:gda/pages/home.dart';

class RoutePaths {
  static const String home = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot_password';

  static const String profile = '/profile';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomePage(),
      login: (context) => const LoginPage(),
      register: (context) => const RegisterPage(),
      forgotPassword: (context) => const ForgotPasswordPage(),
      
      profile: (context) => const ProfilePage(),
    };
  }
}
