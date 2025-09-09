import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pancake Bali',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pancake Bali'),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: 1600.0,
              height: 900.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: _PavlovaDescription(),
                  ),
                  Expanded(
                    flex: 1,
                    child: _PavlovaPhoto(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _PavlovaDescription extends StatelessWidget {
  const _PavlovaDescription();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Pancake Bali',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 10.0),
          Text(
            'Makanan yang disajikan dengan bentuk yang cantik dan mengugah selera untuk para pemburu makanan dunia.',
          ),
          const SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              const Icon(Icons.star, color: Colors.yellow),
              const Icon(Icons.star, color: Colors.yellow),
              const Icon(Icons.star, color: Colors.yellow),
              const Icon(Icons.star, color: Colors.yellow),
              const Icon(Icons.star_half, color: Colors.yellow),
              const SizedBox(width: 5.0),
              Text('170 Reviews'),
            ],
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _CookingTime('PREP:', '25 min'),
              _CookingTime('COOK:', '1 hr'),
              _CookingTime('FEEDS:', '4-6'),
            ],
          ),
        ],
      ),
    );
  }
}

class _CookingTime extends StatelessWidget {
  const _CookingTime(this.label, this.value);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
        ),
        Text(
          value,
          style: const TextStyle(fontSize: 12.0),
        ),
      ],
    );
  }
}

class _PavlovaPhoto extends StatelessWidget {
  const _PavlovaPhoto();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'assets/buah.jpg', // Ganti dengan path gambar Anda di assets
        width: 1600.0, // Sesuaikan lebar foto
        height: 900.0, // Sesuaikan tinggi foto
        fit: BoxFit.cover,
      ),
    );
  }
}