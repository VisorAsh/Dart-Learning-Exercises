// Exercice : Les streams
// Crée un Stream qui émet des nombres de 1 à 5 avec un intervalle d'une seconde entre chaque émission. Écoute ce stream et affiche chaque nombre.

// Explication :
// Utilise Stream.periodic pour créer un stream qui émet des valeurs à intervalles réguliers.
// Utilise take pour limiter le nombre d'émissions.

// Solution
import 'dart:async';

void main() {
  Stream<int> numberStream = Stream.periodic(
    Duration(seconds: 1),
    (value) => value + 1,
  ).take(5);

  numberStream.listen((number) {
    print(number);
  });
}
