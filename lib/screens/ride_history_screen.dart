import 'package:flutter/material.dart';
import '../models/ui_ride_model.dart';

class RideHistoryScreen extends StatelessWidget {
  final List<UiRideModel> rides;

  const RideHistoryScreen({
    super.key,
    required this.rides,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ride History'),
        centerTitle: true,
      ),
      body: rides.isEmpty
          ? const Center(
              child: Text('No ride history available'),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: rides.length,
              itemBuilder: (context, index) {
                return RideHistoryCard(ride: rides[index]);
              },
            ),
    );
  }
}

class RideHistoryCard extends StatelessWidget {
  final UiRideModel ride;

  const RideHistoryCard({
    super.key,
    required this.ride,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${ride.from} → ${ride.to}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 8),
            Text('${ride.date} • ${ride.time}'),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  label: Text(ride.status),
                  backgroundColor: Colors.green.shade100,
                ),
                Text(
                  '₹${ride.fare.toStringAsFixed(0)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
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
