import 'package:flutter/material.dart';
import 'booking_screen.dart';

class CinemasListScreen extends StatelessWidget {
  const CinemasListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookForFree - Cinemas'),
      ),
      body: ListView.builder(
        itemCount: 10, // Replace with actual cinema count from your API
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Cinema ${index + 1}'),
            onTap: () {
              // Navigate to booking screen for this cinema
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const BookingScreen()),
              );
            },
          );
        },
      ),
    );
  }
}
