import 'package:flutter/material.dart';
import 'package:africa_schools/africa_schools.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'African Universities',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'African Universities'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Object programValue = 'Select your Programme';
  Object schoolValue = 'Select your school';
  List<Object> schools = [];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Choose your Programme and School",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              DropdownButton<Object>(
                value: programValue,
                isExpanded: true,
                underline: const SizedBox(),
                hint: const Text("Choose your Programme"),
                onChanged: (value) {
                  setState(() {
                    programValue = value!;
                    if (programValue == 'University') {
                      schools.clear();
                      schools.add(schoolValue);
                      schools.addAll(Nigeria.universities);
                    } else if (programValue == 'Polytechnics') {
                      schools.clear();
                      schools.add(schoolValue);
                      schools.addAll(Nigeria.polytechnics);
                    } else if (programValue == 'College of Education') {
                      schools.clear();
                      schools.add(schoolValue);
                      schools.addAll(Nigeria.collegeOfEducation);
                    }
                  });
                },
                items: <String>[
                  'Select your Programme',
                  'University',
                  'Polytechnics',
                  'College of Education'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value,
                        maxLines: 1, overflow: TextOverflow.ellipsis),
                  );
                }).toList(),
              ),
              const SizedBox(height: 30),
              DropdownButton<Object>(
                value: schoolValue,
                isExpanded: true,
                underline: const SizedBox(),
                hint: const Text("Choose your school"),
                onChanged: (value) {
                  setState(() {
                    schoolValue = value!;
                  });
                },
                items: programValue == 'Select your Programme'
                    ? []
                    : schools.map<DropdownMenuItem<Object>>((Object value) {
                        return DropdownMenuItem<Object>(
                          value: value,
                          child: Text(value.toString(),
                              maxLines: 1, overflow: TextOverflow.ellipsis),
                        );
                      }).toList(),
              ),
              const SizedBox(height: 40),
              Text(
                "The programme you selected is ${schoolValue == 'Select your school' ? "..." : schoolValue} ",
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum Programme { university, polytechnics, coe }
                // 'Select your Programme',
                // 'University',
                // 'Polytechnics',
                // 'College of Education'
