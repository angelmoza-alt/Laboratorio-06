import 'package:flutter/material.dart';
import 'screens/perfil_screen.dart';
import 'screens/mensajes_screen.dart';
import 'screens/configuracion_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab Screens',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/perfil': (context) => const PerfilScreen(),
        '/mensajes': (context) => const MensajesScreen(),
        '/configuracion': (context) => const ConfiguracionScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Lista de mapas con las opciones del menú
  final List<Map<String, dynamic>> opciones = const [
    {'titulo': 'Mi Perfil', 'subtitulo': 'Ver mis datos', 'icono': Icons.person, 'ruta': '/perfil'},
    {'titulo': 'Mensajes', 'subtitulo': 'Revisar mensajes', 'icono': Icons.message, 'ruta': '/mensajes'},
    {'titulo': 'Configuración', 'subtitulo': 'Ajustes de la app', 'icono': Icons.settings, 'ruta': '/configuracion'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menú Principal'),
      ),
      body: ListView.builder(
        itemCount: opciones.length,
        itemBuilder: (context, index) {
          final opcion = opciones[index];
          return ListTile(
            leading: Icon(opcion['icono']),
            title: Text(opcion['titulo']),
            subtitle: Text(opcion['subtitulo']),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, opcion['ruta']);
            },
          );
        },
      ),
    );
  }
}