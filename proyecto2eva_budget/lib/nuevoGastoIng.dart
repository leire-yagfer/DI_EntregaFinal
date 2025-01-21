import 'package:flutter/material.dart';

class NuevaPantalla extends StatelessWidget {
  final String title;
  final Color color;

  // Constructor para recibir los parámetros
  const NuevaPantalla({Key? key, required this.title, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title), // El título se establece dinámicamente
        backgroundColor: color, // El color de la AppBar cambia según el botón
      ),
      body: Center(
        child: Container(
          color: color.withOpacity(0.2), // Fondo de la pantalla con opacidad
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Aquí van más detalles de $title',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
