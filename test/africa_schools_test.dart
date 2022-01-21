import 'package:flutter_test/flutter_test.dart';

import 'package:africa_schools/africa_schools.dart';

void main() {
  test('Checking the list of Nigerian Universities', () {
    const naijaUni = Nigeria.universities;
    expect(naijaUni.length, isNot(0));
  });

  test("Checking if Polytechnics is in the list of all schools in Nigeria", () {
    const naijaUni = Nigeria.allSchools;
    expect(naijaUni.contains(Nigeria.polytechnics.length), isNot(0));
  });

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
