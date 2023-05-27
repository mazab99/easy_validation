import 'package:flutter/material.dart';
import 'package:x_validation/x_validation.dart';

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
            TextFormField(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (text) => FieldValidator(
                [
                  const RequiredFieldValidator(
                    errorMessage: "Field required",
                  ),
                  const LengthFieldValidator(
                    minLength: 4,
                    errorMessage: "Field needs at least 4 characters",
                  ),
                  const LengthFieldValidator(
                    maxLength: 12,
                    errorMessage: "Field can have up to 12 characters",
                  ),
                  const PatternFieldValidator(
                    r"(^[a-z])([a-z0-9-]*)([a-z0-9]$)",
                    errorMessage:
                        "Use only lowercase letters hyphens and numbers",
                  ),
                  ConditionFieldValidator(
                    (field) => field == "type this",
                    errorMessage: "You have to type type this",
                  ),
                ],
              ).validate(field: text!),
            ),
          ],
        ),
      ),
    );
  }
}
