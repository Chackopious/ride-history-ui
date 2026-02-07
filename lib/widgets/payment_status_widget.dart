import 'package:flutter/material.dart';
import '../models/ui_ride_model.dart';

class PaymentStatusCard extends StatelessWidget {
  final UiRideModel ride;

  const PaymentStatusCard({
    super.key,
    required this.ride,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Success Icon
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 56,
            ),

            const SizedBox(height: 12),

            // Title
            const Text(
              "Payment Successful",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 16),

            // Ride details
            Text(
              "${ride.from} → ${ride.to}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 6),

            Text(
              "${ride.date} • ${ride.time}",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),

            const SizedBox(height: 12),

            // Amount
            Text(
              "₹${ride.fare}",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            // Ride ID (secondary info)
            Text(
              "Ride ID: ${ride.id}",
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
