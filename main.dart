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

// class
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
