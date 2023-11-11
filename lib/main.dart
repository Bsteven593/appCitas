import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CIO Aplicacion de Citas",
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CIO Aplicacion de Citas'),
          backgroundColor: Colors.orange,
        ),
        body: _buildBody(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      color: Color.fromARGB(255, 245, 164, 44),
      // Fondo de color naranja
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: FractionallySizedBox(
              heightFactor: 0.5,
              child: Image.asset(
                'assest/cora.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(), // Hace que el botón sea redondo
              primary: Colors.red, // Cambia el color a rojo
              minimumSize: Size(100, 100), // Ajusta el tamaño del botón
            ),
            onPressed: () {
              // Agrega aquí la lógica de incremento del contador
              // Puedes usar setState() para actualizar la interfaz
            },
            child: Icon(Icons.add, size: 50), // Cambia el ícono del botón
          ),
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Mis Favoritos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_time),
          label: 'Mis Citas',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_alarm),
          label: 'Notificaciones',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_call_outlined),
          label: 'Pre-Citas',
        ),
      ],
      selectedItemColor: Color.fromARGB(255, 243, 75, 33),
      unselectedItemColor: Color.fromARGB(255, 224, 78, 78),
    );
  }
}
