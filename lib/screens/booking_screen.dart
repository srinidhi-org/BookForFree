import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({Key? key}) : super(key: key);

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  int _selectedSeats = 0;

  void _incrementSeats() {
    setState(() {
      _selectedSeats++;
    });
  }

  void _decrementSeats() {
    if (_selectedSeats > 0) {
      setState(() {
        _selectedSeats--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookForFree - Book Tickets'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Selected Seats: $_selectedSeats'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(Icons.remove_circle),
                  onPressed: _decrementSeats,
                ),
                IconButton(
                  icon: const Icon(Icons.add_circle),
                  onPressed: _incrementSeats,
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                // Here you would typically call an API to book the tickets
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Booking in progress...')),
                );
              },
              child: const Text('Book Tickets for Free'),
            ),
          ],
        ),
      ),
    );
  }
}
