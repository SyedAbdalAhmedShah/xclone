import 'package:xclone_client/xclone_client.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://$localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData.dark(useMaterial3: true),
      home: const MyHomePage(title: 'Serverpod Example'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  List<Post>? _posts;
  Exception? _connectionException;

  void _connectionFailed(dynamic exception) {
    setState(() {
      _posts = null;
      _connectionException = exception;
    });
  }

  Future<void> _loadPosts() async {
    try {
      final posts = await client.post.getAllPost();
      setState(() {
        _posts = posts;
      });
    } catch (e) {
      _connectionFailed(e);
    }
  }

  @override
  void initState() {
    _loadPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _posts != null
          ? ListView.builder(
              itemCount: _posts!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(_posts![index].caption),
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
