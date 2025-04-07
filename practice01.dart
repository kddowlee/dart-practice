import 'dart:io';

void main() {
bool keepGoing = true;

  while (keepGoing) {
  print('what\'s yo name?');
  String? name = stdin.readLineSync();

  if(name == null || name.trim().isEmpty) {
    print('Please enter a valid name!');
    return;
  }
  
  print('How old are you $name?');
  String? age = stdin.readLineSync();

  if(age == null || age.trim().isEmpty) {
    print('Please enter a valid age!');
    return;
  }

  int? ageNum;
  try {
    ageNum = int.parse(age);
  } catch (e) {
    print('That doesn\'t look like a Number!');
    return;
  }

  int nextAge = ageNum + 1;
  if (ageNum < 13) {
    print('You\'re a kid!');
  } else if (ageNum >= 13 && ageNum <=19) {
    print('You\'re a teenager!');
  } else if(ageNum >= 20 && ageNum < 60) {
    print('You\'re an adult!');
  } else {
    print('You\'re a senior!');
  }

  print('What\'s your fav hobby $name?');
  String? hobby = stdin.readLineSync();

  print('\nHey $name! You\'re $age and love $hobby, That\'s Awesome!');
  print('So next year you\'ll be $nextAge!');

  print('\nWanna Restart? (yes/no)');
  String? answer = stdin.readLineSync();
  
  if (answer == null || answer.toLowerCase() != 'yes') {
    keepGoing = false;
    print('\nGoodbye $name!');
  }
}
}