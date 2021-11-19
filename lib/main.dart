import 'dart:convert';

import 'package:alfred/alfred.dart';

void main() async {
  final app = Alfred();

  app.get('/', (req, res) => jsonEncode({"message": "Hello"}));
  app.get('*', (req, res) => jsonEncode({"message": "Not found"}));

  await app.listen();
}
