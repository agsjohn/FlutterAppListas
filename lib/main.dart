import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 58, 183, 146)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Lista'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(30.0),
                  children: const <Widget>[
                    ListTile(
                      title: Text("Facebook"),
                      leading: ImageIcon(AssetImage("images/facebook.png")),
                    ),
                    ListTile(
                      title: Text("Google"),
                      leading: ImageIcon(AssetImage("images/search.png")),
                    ),
                    ListTile(
                      title: Text("Instagram"),
                      leading: ImageIcon(AssetImage("images/instagram.png")),
                    ),
                    ListTile(
                      title: Text("Youtube"),
                      leading: ImageIcon(AssetImage("images/youtube.png")),
                    ),
                    ListTile(
                      title: Text("Whatsapp"),
                      leading: ImageIcon(AssetImage("images/whatsapp.png")),
                    ),
                    ListTile(
                      title: Text("Apple"),
                      leading: ImageIcon(AssetImage("images/apple.png")),
                    ),
                    ListTile(
                      title: Text("Discord"),
                      leading: ImageIcon(AssetImage("images/discord.png")),
                    ),
                    ListTile(
                      title: Text("Github"),
                      leading: ImageIcon(AssetImage("images/github.png")),
                    ),
                    ListTile(
                      title: Text("Spotify"),
                      leading: ImageIcon(AssetImage("images/spotify.png")),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
