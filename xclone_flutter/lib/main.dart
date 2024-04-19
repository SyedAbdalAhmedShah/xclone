import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:xclone_client/xclone_client.dart';
import 'package:xclone_flutter/blocs/feed_bloc/feed_bloc.dart';
import 'package:xclone_flutter/pages/auth/create_account.dart';
import 'package:xclone_flutter/pages/home/feed_screen.dart';
import 'package:xclone_flutter/repositories/post_repository.dart';

late Client client;
late SessionManager sessionManager;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  client = Client('http://$localhost:8080/',
      authenticationKeyManager: FlutterAuthenticationKeyManager())
    ..connectivityMonitor = FlutterConnectivityMonitor();

  sessionManager = SessionManager(caller: client.modules.auth);
  await sessionManager.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final PostRepository postRepository = PostRepository(client: client);
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(
          value: postRepository,
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeedBloc(postRepository: postRepository)
              ..add(
                const FeedLoadEvent(),
              ),
          ),
        ],
        child: MaterialApp(
          title: 'X Clone',
          theme: ThemeData.dark(useMaterial3: true),
          initialRoute: '/createAccount',
          routes: {
            '/feed': (context) => const FeedScreen(),
            '/createAccount': (context) => const CreateAccountPage(),
          },
        ),
      ),
    );
  }
}
