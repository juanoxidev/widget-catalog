import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text('Buttons'),
      ),
      body: _ButtonsView(),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
   
   // padding para q no este pegado a la pared
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
       // Wrap llena los espacios y continua abajo.
      child: Wrap(
        spacing: 10,
        children: [
          
          ElevatedButton(
            onPressed: () {} , 
            child: const Text('Eleveted Button')
            ),
            
          ElevatedButton.icon(
            onPressed: () {} , 
            icon: const Icon(Icons.access_alarm),
            label: const Text('Elevated Icon')
            ),
          
          FilledButton(
            onPressed: () {} , 
            child: const Text('Filled Button')
            ),
      
          FilledButton.icon(
            onPressed: () {} , 
            icon: const Icon(Icons.access_alarm),
            label: const Text('Filled Icon')
            ),
          
          TextButton(
            // onPressed: null se deshabilita el boton
            // onPressed: null , 
            onPressed: () {} , 
            child: const Text('Text Button')
            ),
                  
          TextButton.icon(
            onPressed: () {} , 
            icon: const Icon(Icons.access_alarm),
            label: const Text('Text Icon')
            ),
          
          IconButton(
            onPressed: () {} , 
            icon: const Icon(Icons.app_registration_rounded)
            ),
      
      
        ],
      ),
    );
  }
}