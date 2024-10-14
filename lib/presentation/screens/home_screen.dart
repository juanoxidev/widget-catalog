import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_catalogo/core/router/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Catalog'),
      ),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
   _HomeView({
    super.key,
  });

  final listMenuItem = menu; 
  @override
  Widget build(BuildContext context) {
    // ListView.builder me permite crear una lista de widget a traves de una lista de objetos.
    return ListView.builder(
          itemCount: listMenuItem.length , 
          itemBuilder: (context, index) 
          {return _ItemMenuView(item:listMenuItem[index]);});
  }
}

class _ItemMenuView extends StatelessWidget {
  const _ItemMenuView({
    super.key,
    required this.item
  });

final MenuItem item;
  @override
  Widget build(BuildContext context) {
    return ListTile(
            title: Text(item.title),
            subtitle: Text(item.description),
            // icono de la izquierda
            leading: Icon(item.icon),
            // icono de siguiente a la derecha
            trailing: const Icon(Icons.arrow_forward),
            // on click/tap para navegar a la siguiente pantalla context.push
            onTap: () => context.push(item.link) ,
            );
  }
}