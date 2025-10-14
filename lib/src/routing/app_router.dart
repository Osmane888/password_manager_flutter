import 'package:go_router/go_router.dart';
import 'package:password_manager/src/screens/home_screen.dart';
import 'package:password_manager/src/screens/login_screen.dart';

final goRouter = GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: [
        GoRoute(path: '/', builder: (context, state) => LoginScreen()),
        GoRoute(path: '/home', builder: (context, state) => HomeScreen())
      ],
      );