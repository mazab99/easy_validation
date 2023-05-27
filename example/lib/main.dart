import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterActiveLoader example',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Validate'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // TextFormField(
            //   autovalidateMode: AutovalidateMode.onUserInteraction,
            //   validator: (text) => FieldValidator(
            //     [
            //       RequiredFieldValidator(
            //         errorMessage: "Field required",
            //       ),
            //       LengthFieldValidator(
            //         minLength: 4,
            //         errorMessage: "Field needs at least 4 characters",
            //       ),
            //       LengthFieldValidator(
            //         maxLength: 12,
            //         errorMessage: "Field can have up to 12 characters",
            //       ),
            //       PatternFieldValidator(
            //         r"(^[a-z])([a-z0-9-]*)([a-z0-9]$)",
            //         errorMessage:
            //             "Use only lowercase letters hyphens and numbers",
            //       ),
            //       ConditionFieldValidator(
            //         (field) => field == "type this",
            //         errorMessage: "You have to type type this",
            //       ),
            //     ],
            //     field: text,
            //   ).validate(),
            // ),
          ],
        ),
      ),
    );
  }
}
