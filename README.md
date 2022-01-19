<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Africa Schools - Tertiary Institutions

This is a package that is created out of need. It houses the list of Tertiary Institutions in the African Continent.

## Showcase

https://user-images.githubusercontent.com/53568423/150047031-6825d6f7-1377-4624-b9a2-26fbf3123869.mp4



## Features

- List of Universities
- List of Polytechnics
- List of Colleges of Education
- List of Health Sciences 

### ! We only have Nigeria's Tertiary Institutions here but we hope to evolve to other countries.

## Getting started

### 🎖 Installing

```yaml
dependencies:
  africa_schools: ^latest_version
```

### ⚡️ Import

```dart
import 'package:africa_schools/africa_schools.dart';
```

## Usage

```dart
Nigeria.universities.map<DropdownMenuItem<String>>((String value) {
return DropdownMenuItem<String>(
    value: value,
    child: Text(value,
    maxLines: 1, overflow: TextOverflow.ellipsis),
    );
    }).toList(),
```

## 🐛 Bugs/Requests

If you encounter any problems feel free to open an issue. If you feel the library is
missing a feature, please raise a ticket on Github and I'll look into it.
Pull request are also welcome.

We also welcome contributors. Let us improve this package and make it more interesting 😎
