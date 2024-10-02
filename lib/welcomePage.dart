import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'main.dart';

void main() {
  runApp(const welomepage());
}

class welomepage extends StatelessWidget {
  const welomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ayu Sensei',
      theme: ThemeData(
        primarySwatch: Colors.green,
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
        backgroundColor: Colors.green.shade800,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp()),
            );
            // Navigate back to the previous page
          },
        ),
        elevation: 0,
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Background Image at the top
            Stack(
              children: [
                Image.asset(
                  'assets/wecomeimg.jpg', // Add the path to your image asset here
                  width: double.infinity,
                  height: 250,
                  fit: BoxFit.cover,
                ),
              ],
            ),

            const SizedBox(height: 20),

            // App title (AYU SENSEI)
            const Text(
              "AYU SENSEI",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8B4513), // Adjust color as needed
                letterSpacing: 2,
              ),
            ),

            const SizedBox(height: 30),

            // Sign up button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                width: 250, // Set your desired width here
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Define the sign-up action here
                  },
                  icon: const Icon(Icons.email, color: Colors.brown),
                  label: const Text(
                    "Sign up",
                    style: TextStyle(color: Colors.brown),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: Colors.brown, width: 1.5),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // Google Sign up button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: SizedBox(
                width: 250, // Set your desired width here
                child: ElevatedButton.icon(
                  onPressed: () {
                    // Define the sign-up action here
                  },
                  icon: const Icon(
                    FontAwesomeIcons.google,
                    color: Colors.brown,
                    size: 22,
                  ),
                  label: const Text(
                    "Sign up with Google",
                    style: TextStyle(color: Colors.brown),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: Colors.brown, width: 1.5),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Login text link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?"),
                TextButton(
                  onPressed: () {
                    // Define the log-in action here
                  },
                  child: const Text(
                    "Log In!",
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
