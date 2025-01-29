import 'package:flutter/material.dart';
import '../../home/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (bool? value) {
                      setState(() {
                        _rememberMe = value!;
                      });
                    },
                  ),
                  Text('Remember me'),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      // Handle forgot password
                    },
                    child: Text('Forgot Password?'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle login
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  }
                },
                child: Text('Login'),
              ),
              SizedBox(height: 20),
              Center(
                child: Text('or login with'),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.facebook),
                    onPressed: () {
                      // Handle Facebook login
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.g_translate),
                    onPressed: () {
                      // Handle Google login
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.apple),
                    onPressed: () {
                      // Handle Apple login
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: TextButton(
                  onPressed: () {
                    // Handle sign up
                  },
                  child: Text('Don\'t have an account? Sign up'),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'By logging in, you agree to our Terms and Conditions',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
