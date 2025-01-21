import 'package:flutter/material.dart';

class Principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Centra el contenido tanto vertical como horizontalmente
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra los botones verticalmente
            crossAxisAlignment:
                CrossAxisAlignment.center, // Centra los botones horizontalmente
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(500, 80), // Tamaño fijo para los botones
                    backgroundColor: Color.fromARGB(255, 116, 212, 148)),
                onPressed: () {
                  // Acción del primer botón
                  _showOverlay(context, 'Añadir ingreso',
                      Color.fromARGB(255, 116, 212, 148));
                },
                child: const Text(
                  'Añadir ingreso',
                  style: TextStyle(
                    fontSize: 20, // Texto más grande
                  ),
                ),
              ),

              SizedBox(height: 40), // Espacio entre los botones

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(500, 80), // Tamaño fijo para los botones
                  backgroundColor: Color.fromARGB(255, 212, 103, 103),
                ),
                onPressed: () {
                  // Acción del segundo botón
                  _showOverlay(context, 'Añadir gasto',
                      Color.fromARGB(255, 212, 103, 103));
                },
                child: const Text(
                  'Añadir gasto',
                  style: TextStyle(
                    fontSize: 20, // Texto más grande
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para mostrar el overlay con el título, el color y los campos de texto
  void _showOverlay(BuildContext context, String title, Color color) {
    showDialog(
      context: context,
      barrierDismissible: true, // Se puede cerrar tocando fuera
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: const Color.fromARGB(255, 208, 29, 29), // Fondo transparente
          child: Stack(
            children: [
              // Fondo semitransparente que ocupa toda la pantalla
              Positioned.fill(
                child: Container(
                  color: const Color.fromARGB(255, 149, 199, 14).withOpacity(0.5), // Fondo oscuro con opacidad
                ),
              ),
              // El contenido del overlay (título, campos de texto y botón)
              Center(
                child: Container(
                  width: 350,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Título
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      // Primer TextField (campo de texto)
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Ingresa el valor',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Segundo TextField (campo de texto)
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Detalles adicionales',
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      // Botón
                      ElevatedButton(
                        onPressed: () {
                          // Acción del botón (puedes agregar la lógica aquí)
                          Navigator.of(context).pop(); // Cierra el overlay
                        },
                        child: const Text(
                          'Añadir',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
