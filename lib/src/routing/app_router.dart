import 'package:go_router/go_router.dart';
import 'package:password_manager/src/screens/home_screen.dart';
import 'package:password_manager/src/screens/login_screen.dart';

final goRouter = GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: [
        GoRoute(path: '/', builder: (context, state) => LoginScreen()),
        // Faire des sous-routes à /home quand la page des détails des mdp sera faite
        GoRoute(path: '/home', builder: (context, state) => HomeScreen())
      ],
      );