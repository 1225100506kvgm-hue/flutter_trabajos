import 'package:flutter/material.dart';
import '../data/postres_data.dart';
import '../models/postre.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String categoriaSeleccionada = 'Todos';
  String busqueda = '';

  @override
  Widget build(BuildContext context) {
    // Filtramos la lista segun la categoria y la busqueda
    List<Postre> lista = [];
    for (var p in postres) {
      bool okCategoria =
          categoriaSeleccionada == 'Todos' || p.categoria == categoriaSeleccionada;
      bool okBusqueda = p.nombre.toLowerCase().contains(busqueda.toLowerCase());
      if (okCategoria && okBusqueda) {
        lista.add(p);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dulce Antojo'),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Barra de busqueda
            TextField(
              decoration: const InputDecoration(
                hintText: 'Buscar postre',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (texto) {
                setState(() {
                  busqueda = texto;
                });
              },
            ),
            const SizedBox(height: 10),

            // Categorias
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: categorias.map((cat) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text(cat),
                      selected: categoriaSeleccionada == cat,
                      onSelected: (valor) {
                        setState(() {
                          categoriaSeleccionada = cat;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 10),

            // Lista de postres
            Expanded(
              child: ListView.builder(
                itemCount: lista.length,
                itemBuilder: (context, index) {
                  final postre = lista[index];
                  return Card(
                    child: ListTile(
                      leading: Hero(
                        tag: postre.nombre,
                        child: Image.asset(
                          postre.imagen,
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(postre.nombre),
                      subtitle: Text(postre.descripcion),
                      trailing: Text('\$${postre.precio.toStringAsFixed(0)}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailScreen(postre: postre),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
