import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void signOutUser() async {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: signOutUser,
          ),
        ],
      ),
      body: Center(
        child: Text('Welcome to the Home Page ${FirebaseAuth.instance.currentUser?.email ?? ''}'),
      ),
    );
  }
}