// abstract final class Routes {
//   static const String onboarding = '/onboarding';
//   static const String login = '/login';
// }

enum Routes {
  splash(path: 'splash'),
  onboarding(path: '/onboarding'),
  login(path: '/login');

  const Routes({required this.path});

  final String path;
}
