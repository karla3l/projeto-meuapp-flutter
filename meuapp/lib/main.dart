// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:meuapp/slideshow.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.yellow,
      ),
      home: Home(),
    );
  }
}

class Menuzinho extends StatelessWidget {
  const Menuzinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Fulano de Souza"),
            accountEmail: Text("fulano@gmail.com"),
            currentAccountPicture: Perfil(),
          ),
          ListTile(
            leading: Icon(Icons.folder),
            title: Text("Meus Arquivos"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Compartilhado Comigo"),
            onTap: () {},
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text("Lixeira"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class Botaozinho extends StatelessWidget {
  const Botaozinho({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("CLIQUE AQUI"),
      onPressed: () {},
      style: ElevatedButton.styleFrom(),
    );
  }
}

class Perfil extends StatelessWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String url = "https://randomuser.me/api/portraits/men/62.jpg";
    // return Image.network(url);
    return CircleAvatar(
      backgroundImage: NetworkImage(url),
    );
  }
}
