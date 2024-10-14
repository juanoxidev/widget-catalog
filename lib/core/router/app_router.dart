import 'package:go_router/go_router.dart';
import 'package:widget_catalogo/presentation/screens/buttons_screen.dart';
import 'package:widget_catalogo/presentation/screens/home_screen.dart';
import 'package:widget_catalogo/presentation/screens/notifications_screen.dart';
import 'package:widget_catalogo/presentation/screens/ui_controls_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/home-screen',
  routes: [
  GoRoute(path: '/home-screen', 
          builder: (context, state) => const HomeScreen()),
  GoRoute(path: '/buttons', 
          builder: (context, state) => const ButtonsScreen()),
  GoRoute(path: '/controls', 
          builder: (context, state) => const UiControlsScreen()),
  GoRoute(path: '/notifications', 
          builder: (context, state) => const NotificationScreen()),  
]);