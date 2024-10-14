import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

void showSnackBar(BuildContext context) {
  // oculta el snackbar q este del contexto
  ScaffoldMessenger.of(context).removeCurrentSnackBar();
  // snackbar personalizado
  final SnackBar snackBar = 
    SnackBar(
      duration: const Duration(seconds: 1),
    content: const Text('This is a snackbar'),
    action: SnackBarAction(
      label: 'Undo' , 
      onPressed: (){}
      ),
  );
  // manda el snackbar al contexto.
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: const _NotificationsView(),
      floatingActionButton: 
      FloatingActionButton(
      onPressed: () {
        showSnackBar(context);
      },
      child: const Icon(Icons.add),
      ),
    );
  }
}

class _NotificationsView extends StatelessWidget {
  const _NotificationsView({
    super.key,
  });

// dialog costumizado. se utiliza para el doble check de alguna operacion
void showCustomDialog(BuildContext context) {
 showDialog(
  // barrierDismissible  obliga al usuario a elegir una opcion
  barrierDismissible: false,
  context: context, 
  builder: (context) => AlertDialog(
    // titulo
    title: const Text('Are you sure?'),
    // body contenido.
    content: const Text('Do you want to delete this item?'),
    // botones
    actions: [
      TextButton(
        onPressed: (){
          // vuelvo a la pantalla anterior (oculto el dialog/modal)
          context.pop();
        }, 
        child: const Text('No')
        ),
        FilledButton(
        onPressed: (){

        }, 
        child: const Text('Yes')
        )
    ],
  )
  );
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
            onPressed: () {
              // se utiliza como una alerta showAboutDialog
              showAboutDialog(
                context: context, 
                children:[ 
                  const Text('LASDDASASDDASSDA')
                ],
              );
            },
            child: const Text('About me')
            ),
          FilledButton(
            onPressed: () {
              showCustomDialog(context);
            },
            child: const Text('Custom Dialog')
            ),
        ],
      ),
    );
  }
}