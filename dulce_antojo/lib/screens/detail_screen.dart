import 'package:flutter/material.dart';
import '../models/postre.dart';

class DetailScreen extends StatelessWidget {
  final Postre postre;

  const DetailScreen({super.key, required this.postre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(postre.nombre),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: postre.nombre,
              child: Image.asset(
                postre.imagen,
                width: double.infinity,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    postre.nombre,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Icon(Icons.attach_money, color: Colors.green),
                      Text('${postre.precio.toStringAsFixed(0)} MXN'),
                      const SizedBox(width: 20),
                      const Icon(Icons.star, color: Colors.orange),
                      Text('${postre.calificacion}'),
                      const SizedBox(width: 20),
                      const Icon(Icons.timer),
                      Text('${postre.tiempo} min'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Descripción',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(postre.detalle),
                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Reservaste: ${postre.nombre}'),
                          ),
                        );
                      },
                      child: const Text('Reservar'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
