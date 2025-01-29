import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/providers/pet_provider.dart';
import 'features/authentication/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PetProvider()),
      ],
      child: MaterialApp(
        title: 'Pet\'s Go!',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(), // Set LoginScreen as the initial screen
      ),
    );
  }
}
