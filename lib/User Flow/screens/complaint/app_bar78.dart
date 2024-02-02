import 'package:flutter/material.dart';
import 'package:weddsetgo/User%20Flow/screens/complaint/toggle_bar.dart';

class AppBar78 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFA516),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Complaints"),
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined,
                color: Colors.black),
            onPressed: () {
              // Implement notification functionality
            },
          ),
          IconButton(
            icon:
                const Icon(Icons.favorite_border_outlined, color: Colors.black),
            onPressed: () {
              // Implement favorite functionality
            },
          ),
          IconButton(
            icon: const Icon(Icons.person_outlined, color: Colors.black),
            onPressed: () {
              // Implement user profile functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [ToggleComplaint()],
        ),
      ),
    );
  }

  Widget _createDrawerItem(
      {required IconData icon, required String text, VoidCallback? onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(text, style: const TextStyle(color: Colors.white)),
      onTap: onTap,
    );
  }
}
