// Exercice: FizzBuzz
// Écris un programme qui affiche les nombres de 1 à 10. Pour les multiples de 3, affiche "Fizz" à la place du nombre, et pour les multiples de 5, affiche "Buzz". Pour les nombres multiples de 3 et 5, affiche "FizzBuzz".

// Explication
// Utilise une boucle for pour itérer de 1 à 10.
// Utilise des conditions if pour vérifier si un nombre est multiple de 3, 5, ou les deux.

// Solution
void main() {
  for (var i = 0; i < 11; i++) {
    if (i % 3 == 0) {
      print("Fizz");
    } else if (i % 5 == 0) {
      print("Buzz");
    } else if (i % 3 == 0 && i % 5 == 0) {
      print("FizzBuzz");
    } else {
      print(i);
    }
  }
}
