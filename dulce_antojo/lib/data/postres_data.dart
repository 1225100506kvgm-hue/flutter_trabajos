import '../models/postre.dart';

// Datos de prueba (mock data)
List<Postre> postres = [
  Postre(
    nombre: 'Pastel de chocolate',
    categoria: 'Pasteles',
    descripcion: 'Pastel de tres capas con cobertura de chocolate.',
    detalle: 'Pastel esponjoso de chocolate relleno de crema y cubierto con '
        'ganache. Se decora con cerezas. Ideal para cumpleaños y fiestas.',
    imagen: 'assets/images/pastel_chocolate.jpg',
    precio: 350,
    calificacion: 4.9,
    tiempo: 90,
  ),
  Postre(
    nombre: 'Cheesecake de fresa',
    categoria: 'Pasteles',
    descripcion: 'Cheesecake cremoso con fresas naturales.',
    detalle: 'Tiene una base de galleta, relleno de queso crema y una cubierta '
        'de fresas frescas. Se deja reposar toda la noche en el refrigerador.',
    imagen: 'assets/images/cheesecake.png',
    precio: 280,
    calificacion: 4.8,
    tiempo: 120,
  ),
  Postre(
    nombre: 'Cupcake de vainilla',
    categoria: 'Pasteles',
    descripcion: 'Cupcake suave con betún de vainilla.',
    detalle: 'Cupcake individual de vainilla con betún de mantequilla y una '
        'cereza encima. Se puede pedir con distintos colores de betún.',
    imagen: 'assets/images/cupcake.png',
    precio: 45,
    calificacion: 4.6,
    tiempo: 35,
  ),
  Postre(
    nombre: 'Galletas con chispas',
    categoria: 'Galletas',
    descripcion: 'Galletas con chispas de chocolate.',
    detalle: 'Galletas recién horneadas, crujientes por fuera y suaves por '
        'dentro. La bolsa trae seis piezas.',
    imagen: 'assets/images/galletas.png',
    precio: 90,
    calificacion: 4.5,
    tiempo: 25,
  ),
  Postre(
    nombre: 'Helado de vainilla',
    categoria: 'Helados',
    descripcion: 'Helado artesanal de vainilla.',
    detalle: 'Helado hecho con crema, leche y vainilla natural. Se sirve en '
        'cono o en vaso, con jarabe de chocolate o de fresa.',
    imagen: 'assets/images/helado.png',
    precio: 55,
    calificacion: 4.4,
    tiempo: 10,
  ),
  Postre(
    nombre: 'Flan napolitano',
    categoria: 'Tradicionales',
    descripcion: 'Flan casero con caramelo.',
    detalle: 'Flan cremoso preparado a baño maría con caramelo. Es una receta '
        'tradicional mexicana.',
    imagen: 'assets/images/flan.png',
    precio: 40,
    calificacion: 4.7,
    tiempo: 75,
  ),
];

List<String> categorias = [
  'Todos',
  'Pasteles',
  'Galletas',
  'Helados',
  'Tradicionales',
];
