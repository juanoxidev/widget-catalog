import 'package:flutter/material.dart';

enum PayType{cash,bankTransfer}

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UiControlsView()
    );
  }
}
// cuando trabajo con widget que interactuan con variables tengo que usar stateswidgets
class _UiControlsView extends StatefulWidget {
   const _UiControlsView({
    super.key,
  });

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloperMode = false;
  bool isLaunch = false;
  bool isBreakfast = false;
   PayType selectedPayType = PayType.cash; 

  @override
  Widget build(BuildContext context) {
    // Le puedo pasar una lista de elementos.
    return ListView(
      children: [
        // switch
        // value = variable booleana , on change metodo q se ejecuta cuando cambia.
       SwitchListTile(
        title: const Text('Developer Mode'),
        subtitle: const Text('Enable developer mode'),
        value: isDeveloperMode, 
        onChanged: (value){
          setState(() {
            isDeveloperMode = value;
          });
        },
        ),
      // menu desplegable
      ExpansionTile(
      title: const Text("Seleccione su metodo de pago"),
      subtitle: Text('Seleccionado ${selectedPayType.name}'),
      children: [
      //radioButtons seleccionar solo 1 cosa de todas las opciones.
      RadioListTile(
      groupValue: selectedPayType , 
      value: PayType.cash, 
      title: const Text('Efectivo'), 
      subtitle: const Text('Al momento de recibir el/los producto/s'),
      onChanged:(value) {
           setState(() {
              // le doy el tipado al value
            selectedPayType = value as PayType;
          });
      }),
      RadioListTile(
      // el group value es el q agrupa todos los valores posibles.
      groupValue: selectedPayType , 
      value: PayType.bankTransfer, 
      title: const Text('Transferencia Bancaria'), 
      subtitle: const Text('Banco Itaub, TigoMoney'),
      onChanged:(value) {
            setState(() {
              // le doy el tipado al value
            selectedPayType = value as PayType;
          });
      })
      ]),
      
      // seleccionar varias al mismo tiempo

      CheckboxListTile(
        value: isBreakfast, 
        onChanged: (onChanged){
          setState(() {
            isBreakfast = onChanged!;
          });
        },
        title: const Text('Breakfast'),
        ),

      CheckboxListTile(
        value: isLaunch, 
        onChanged: (onChanged){
          setState(() {
            isLaunch = onChanged!;
          });
        },
        title: const Text('Launch'),
        ),

    
      ]);
  }
}