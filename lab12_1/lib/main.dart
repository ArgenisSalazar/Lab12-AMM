import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:universal_platform/universal_platform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (UniversalPlatform.isAndroid) {
      debugPrint("Android");
      return const MaterialApp(
        title: 'Material Login',
        home: MaterialLoginScreen(),
      );
    } else {
      debugPrint("Web u otra plataforma");
      return const CupertinoApp(
        title: 'Cupertino Login',
        home: CupertinoLoginScreen(),
      );
    }
  }
}

class MaterialLoginScreen extends StatelessWidget {
  const MaterialLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
              child: const Text('Login'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('¿Has olvidado tu contraseña?'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Registrate aquí'),
            ),
          ],
        ),
      ),
    );
  }
}

class CupertinoLoginScreen extends StatelessWidget {
  const CupertinoLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Login'),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CupertinoTextField(
              placeholder: 'Username',
            ),
            const SizedBox(height: 20),
            const CupertinoTextField(
              placeholder: 'Password',
              obscureText: true,
            ),
            const SizedBox(height: 20),
            CupertinoButton.filled(
              onPressed: () {},
              child: const Text('Login'),
            ),
            CupertinoButton(
              onPressed: () {},
              child: const Text('¿Restablecer tu contraseña?'),
            ),
          ],
        ),
      ),
    );
  }
}
