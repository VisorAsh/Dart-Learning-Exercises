import 'dart:async';

void main() {
  //   for (var i = 0; i < 5; i++) {
  //     print('hello ${i + 1}');
  //   }

  // FizzBuzz
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

  print(isPalindrome("kayak"));
  print(isPalindrome("lol"));
  print(isPalindrome("hishaam"));

  // Liste
  const List<int> nums = [5, 6, 8, 9, 20, 6, 60, 71, 4];
  print(filterEvenNumbers(nums));

  // Map
  List<String> words = ["Dart", "Flutter", "Mobile", "Development", "Hishaam"];
  print(wordsLength(words));

  // Class
  Person person = Person("John Doe", 42);
  person.introduce();
  print({'name': person.name, 'age': person.age});

  // Function divide
  print(divide(10, 2));
  print(divide(10, 0));

  print(divide3(10, 2));
  print(divide3(10, 0));

  print('10 + 5 = ${calculate(10, 5, '+')}');
  print('10 - 5 = ${calculate(10, 5, '-')}');
  print('10 * 5 = ${calculate(10, 5, '*')}');
  print('10 / 5 = ${calculate(10, 5, '/')}');
  print('10 / 0 = ${calculate(10, 0, '/')}');
  print('10 ? 5 = ${calculate(10, 5, '?')}');

  // Streams
  Stream<int> numberStream = Stream.periodic(
    Duration(seconds: 1),
    (value) => value + 1,
  ).take(5);

  numberStream.listen((number) {
    print(number);
  });

  // Mixins
  User user = User("John Doe");
  user.greet();
}

// isPalindrome (By me)
// bool isPalindrome(String string) {
//   if (string == string.split('').reversed.join('')) {
//     return true;
//   }
//   return false;
// }

// isPalindrome (Optimised version)
bool isPalindrome(String str) {
  String reversedString = str.split('').reversed.join('');
  return str == reversedString;
}

// Liste
List<int> filterEvenNumbers(List<int> nums) {
  List<int> evenNums = [];
  for (int number in nums) {
    if (number % 2 == 0) {
      // !=
      evenNums.add(number);
    }
  }
  return evenNums;
}

// Map
Map<String, int> wordsLength(List<String> words) {
  Map<String, int> mappedWord = {};
  for (String word in words) {
    mappedWord[word] = word.length;
  }
  return mappedWord;
}

// Class
class Person {
  String? name;
  int? age;

  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }

  void introduce() {
    print("Hello, my name is $name and I am $age years old.");
  }
}

// Exception
double divide(int a, int b) {
  try {
    return a / b;
  } catch (e) {
    print("ERROR: IMPOSSIBLE DE DIVISER PAR 0");
    return double.nan;
  }
}

double divide3(int a, int b) {
  if (b == 0) {
    print("ERROR: IMPOSSIBLE DE DIVISER PAR 0");
    return double.nan;
  }
  return a / b;
}

// Exceptions personnalisées
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

// Mixins
mixin Logger {
  void log(String message) {
    print("Log: $message");
  }
}

class User with Logger {
  String name;

  User(this.name);

  void greet() {
    log("User $name says hello !");
  }
}
