import 'package:water_app/models/person.dart';

class Exercise {
  // attributes
  late final int id;
  late final Object Person;
  late final String type;
  late final num duration;
  late final num averageHeartRate;

  // constructor
  Exercise(id, Person) {
    this.id = id;
    this.Person = Person;
    this.type = type;
  }
}
