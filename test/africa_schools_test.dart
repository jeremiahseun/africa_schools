import 'package:flutter_test/flutter_test.dart';

import 'package:africa_schools/africa_schools.dart';

void main() {
  /// THE TESTS HERE ARE TO VERIFY IF THIS PACKAGE STILL WORKS
  /// ANYTIME YOU CHANGE THE PACKAGE, YOU NEED TO RUN THESE TESTS
  /// TO MAKE SURE IT STILL WORKS

  /// THIS TEST IS TO CHECK IF YOU CAN GET THE LIST OF [UNIVERSITIES] FROM THE PACKAGE
  test('Checking the list of Nigerian Universities', () {
    const naijaUni = Nigeria.universities;
    expect(naijaUni.length, isNot(0));
  });

  /// THIS TEST IS TO CHECK IF YOU CAN GET THE LIST OF [POLYTECHNICS] FROM THE PACKAGE
  test("Checking if Polytechnics is in the list of all schools in Nigeria", () {
    const naijaUni = Nigeria.allSchools;
    expect(naijaUni.contains(Nigeria.polytechnics.length), isNot(0));
  });

  /// THIS TEST IS TO CHECK IF YOU CAN GET THE LIST
  /// OF [ALL SCHOOLS - UNIVERSITIES, POLYTECHNICS, COLLEGES, HEALTH] FROM THE PACKAGE
  test(
      'Checking if all schools is having Universities, College of Education and other programmes',
      () {
    const naijaAllSchools = Nigeria.allSchools;
    expect(
        naijaAllSchools.length ==
            Nigeria.universities.length +
                Nigeria.polytechnics.length +
                Nigeria.collegeOfEducation.length +
                Nigeria.healthSciences.length,
        isTrue);
  });
}
