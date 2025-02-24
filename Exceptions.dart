// Exercice: Exceptions

// Objectif : Créer une fonction calculatrice qui gère les erreurs de division par zéro et de format.
// Vous devez implémenter une fonction calculate qui prend trois paramètres : deux nombres et un opérateur sous forme de chaîne de caractères ('+', '-', '*', '/'). La fonction doit effectuer l'opération demandée et gérer les erreurs potentielles.

// Contraintes :
// Gérer la division par zéro
// Gérer les opérateurs invalides
// Retourner le résultat de l'opération ou un message d'erreur approprié

// Explication
// Utilisez un try/catch pour capturer les différentes erreurs
// Pensez à créer des exceptions personnalisées simples
// Vérifiez l'opérateur avant d'effectuer le calcul

// Solution
// Exceptions personnalisées
void main() {
  print('10 + 5 = ${calculate(10, 5, '+')}');
  print('10 - 5 = ${calculate(10, 5, '-')}');
  print('10 * 5 = ${calculate(10, 5, '*')}');
  print('10 / 5 = ${calculate(10, 5, '/')}');
  print('10 / 0 = ${calculate(10, 0, '/')}');
  print('10 ? 5 = ${calculate(10, 5, '?')}');
}

class CalculationException implements Exception {
  final String message;
  CalculationException(this.message);
}

class DivisionByZeroException extends CalculationException {
  DivisionByZeroException() : super('Erreur: Division par zéro');
}

class InvalidOperatorException extends CalculationException {
  InvalidOperatorException(String operator)
    : super('Erreur: Opérateur "$operator" non reconnu');
}

// Fonction principale avec l'exception
double calculate(double a, double b, String operator) {
  try {
    switch (operator) {
      case '+':
        return a + b;
      case '-':
        return a - b;
      case '*':
        return a * b;
      case '/':
        if (b == 0) {
          throw DivisionByZeroException();
        }
        return a / b;
      default:
        throw InvalidOperatorException(operator);
    }
  } catch (e) {
    if (e is CalculationException) {
      print(e.message);
    } else {
      print(e);
    }
    return double.nan;
  }
}
