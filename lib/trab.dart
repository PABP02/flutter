import 'package:flutter/material.dart';

class Trab extends StatelessWidget {
  const Trab({super.key});

  @override
  Widget build(BuildContext context) {
    var estiloTexto = const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("Título"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Texto da linha 1 um pouco maior.........", style: estiloTexto,),
          Text("Texto", style: estiloTexto,),
          Text("Texto da linha 3 um pouco maior.........", style: estiloTexto,),
          Text("Texto", style: estiloTexto,),
          Text("Texto da linha 5 um pouco maior.........", style: estiloTexto,),
          SizedBox(height: 32,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Texto", style: estiloTexto,),
              const SizedBox(width: 16,),
              Text("Texto", style: estiloTexto,),
              const SizedBox(width: 16,),
              Text("Texto", style: estiloTexto,),
              const SizedBox(width: 16,),
              Icon(Icons.rocket_launch_sharp),
              const SizedBox(width: 32,),
              Text("Texto", style: estiloTexto,),
              const SizedBox(width: 16,),]

          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () { final snackBar = SnackBar(
                    content: const Text('Yay! A SnackBar!'),
                    action: SnackBarAction(
                      label: 'Undo',
                      onPressed: () {
                        // Some code to undo the change.
                      },
                    ),
                  );

                  // Find the ScaffoldMessenger in the widget tree
                  // and use it to show a SnackBar.
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);},

                  child: Text('Botão one'),
                ),
                SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                  },
                  child: Text('Botão two'),
                ),
                SizedBox(width: 16),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.settings_accessibility),

                  label: Text("cincuun"),
                ),


                ]

          ),
          Expanded(
            child: Center(
              child: Text("Texto Centralizado", style: estiloTexto,),


            ),
          ),
        ],
      ),
    );
  }
}

