import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Place {
  Place({required this.title}) : id = uuid.v8();

  final String id;
  final String title;
}
