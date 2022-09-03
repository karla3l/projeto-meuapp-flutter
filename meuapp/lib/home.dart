import 'package:flutter/material.dart';
import 'package:meuapp/slideshow.dart';

class  extends StatelessWidget {
  const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Meu Aplicativo"),
        ),
        drawer: Menuzinho(),
        endDrawer: Menuzinho(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add, size: 40),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Início",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Busca",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Ajustes",
            ),
          ],
        ),
        body: ListView(
          children: [
            Slideshow(),
            ListTile(
              leading: Perfil(),
              title: Text("Título do ListTile"),
              subtitle: Text("Subtítulo secundário"),
              trailing: Icon(Icons.chevron_right, size: 40),
              onTap: () {
                print("Clicou no ListTile 1");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.home, size: 40),
              title: Text("Título do ListTile"),
              subtitle: Text("Subtítulo secundário"),
              trailing: Icon(Icons.chevron_right, size: 40),
              onTap: () {
                print("Clicou no ListTile 2");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings, size: 40),
              title: Text("Título do ListTile"),
              subtitle: Text("Subtítulo secundário"),
              trailing: Icon(Icons.chevron_right, size: 40),
              onTap: () {
                print("Clicou no ListTile 3");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings, size: 40),
              title: Text("Título do ListTile"),
              subtitle: Text("Subtítulo secundário"),
              trailing: Icon(Icons.chevron_right, size: 40),
              onTap: () {
                print("Clicou no ListTile 3");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings, size: 40),
              title: Text("Título do ListTile"),
              subtitle: Text("Subtítulo secundário"),
              trailing: Icon(Icons.chevron_right, size: 40),
              onTap: () {
                print("Clicou no ListTile 3");
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings, size: 40),
              title: Text("Título do ListTile"),
              subtitle: Text("Subtítulo secundário"),
              trailing: Icon(Icons.chevron_right, size: 40),
              onTap: () {
                print("Clicou no ListTile 3");
              },
            ),
          ],
        ),
      ),
      
    );
  }
}