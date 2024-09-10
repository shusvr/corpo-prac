import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stuff',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drug Store"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Center(
              child: Image.network(
                  width: 340,
                  "https://www.creativefabrica.com/wp-content/uploads/2019/10/24/drugs-filled-line-icon-logo-design-2-1-580x386.jpg"),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Password",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(6)),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: MaterialButton(
                onPressed: () {},
                color: Colors.blue.shade400,
                child: const Text("Sign In"),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: OutlinedButton(
                onPressed: () {},
                style: ButtonStyle(
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)))),
                child: const Text("Register"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
