import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';
import 'package:password_manager/src/screens/home_screen.dart';
import 'package:password_manager/src/screens/login_screen.dart';

enum AppRoute{
  home,
  login,
  register,
  passwordDetails,
}

final goRouter = GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      redirect: (context, state) {
        final isLoggedIn = FirebaseAuth.instance.currentUser != null;
        // final isLoggedIn = AppUser(arguments pour construire l'objet de test de connexion);
        if(isLoggedIn) {
          if(state.uri.path == '/login'){
            return '/';
          }
        } else {
          if(state.uri.path == '/'){
            return '/login';
          }
          return null;
        }
      },
      routes: [
        // Faire des sous-routes à /home quand la page des détails des mdp sera faite
        GoRoute(
          path: '/', 
          name: AppRoute.home.name,
          builder: (context, state) => HomeScreen(),
          routes: [],
          ),
        GoRoute(
          path: '/login', 
          name: AppRoute.login.name,
          builder: (context, state) => LoginScreen()
        ),
      ],
      );