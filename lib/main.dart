import 'package:flutter/material.dart';
import 'widgets/payment_status_widget.dart';
import 'models/ui_ride_model.dart';

final dummyRides = [
  UiRideModel(
    id: "RIDE123",
    from: "MG Road",
    to: "Indiranagar",
    date: "21 Jan 2026",
    time: "09:30 AM",
    status: "Completed",
    fare: 270,
  ),
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: PaymentStatusCard(
            ride: dummyRides.first,
          ),
        ),
      ),
    );
  }
}
