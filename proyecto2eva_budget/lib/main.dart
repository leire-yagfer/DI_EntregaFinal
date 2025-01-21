import 'package:flutter/material.dart';
import 'principal.dart';
import 'estadisticas.dart';
import 'movimientos.dart';
import 'categorias.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Proyecto2Eva_LeireYagüeFernández',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  // Lista de pantallas disponibles
  final List<Widget> _screens = [
    Principal(),
    Estadisticas(),
    Movimientos(),
    Categorias(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'MONEYTRACKER',
            style: TextStyle(
              fontSize: 50, // Tamaño de fuente más grande
              fontWeight: FontWeight.bold, // Hacer el texto en negrita
            ),
          ),
        ),
      ),
      body: _screens[_currentIndex], // Muestra la pantalla correspondiente
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex =
                index; // Cambia la pantalla según la opción seleccionada
          });
        },
        selectedItemColor: Colors.pink, // Color del icono seleccionado
        unselectedItemColor:
            Colors.black, // Color de los iconos no seleccionados
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz),
            label: 'Movimientos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer),
            label: 'Estadísticas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Categorías',
          ),
        ],
      ),
    );
  }
}
