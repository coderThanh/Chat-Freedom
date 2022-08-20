import 'package:flutter/material.dart';

import '../views/screens/chat_message_screen.dart/middleware_chat_message.dart';
import '../views/screens/conversation_screen/middleware_conversation_screen.dart';
import '../views/screens/people_screen/people_screen.dart';
import '../views/screens/search_chat_screen/search_chat_screen.dart';
import '../views/screens/welcome/welcome_screen.dart';
import '../views/screens/change_password_screen/change_password_screen.dart';
import '../views/screens/chats/chats_screen.dart';
import '../views/screens/forgot_password/forgot_password_screen.dart';
import '../views/screens/login/login_screen.dart';
import '../views/screens/signin/sigin_screen.dart';
import '../views/screens/signup/signup_screen.dart';

class ThemeRoute {
  static String welcome = '/welcome';
  static String login = '/login';
  static String signin = '/signin';
  static String signup = '/signup';
  static String forgotPassword = '/forgot-password';
  static String changPassword = '/change-password';
  static String chats = '/';
  static String chatMessage = '/chat-message';
  static String search = '/search';
  static String conversation = '/conversation';
  static String people = '/people';

  static Map<String, WidgetBuilder> routes = {
    welcome: (context) => const WelcomeScreen(),
    login: (context) => const LoginScreen(),
    signin: (context) => const SigninScreen(),
    signup: (cotext) => const SignupScreen(),
    forgotPassword: (context) => const ForgotPassWordScreen(),
    changPassword: (context) => const ChangePasswordScreen(),
    chats: (context) => const ChatsScreen(),
    chatMessage: (context) => const MiddlewareChatMessageScreen(),
    search: (context) => const SearchChatScreen(),
    conversation: (context) => const MiddleWareConverStaionScreen(),
    people: (context) => const PeopleScreen(),
  };
}
