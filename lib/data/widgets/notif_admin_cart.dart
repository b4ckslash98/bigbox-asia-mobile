import 'package:flutter/material.dart';

class NotifAdminCard extends StatelessWidget {
  final String title;
  final String description;
  final String date;
  final String time;
  final String status;
  final bool isRead; // New parameter to check if notification is read
  final Function() onActionPressed;

  const NotifAdminCard({
    super.key,
    required this.title,
    required this.description,
    required this.date,
    required this.time,
    required this.status,
    required this.isRead,
    required this.onActionPressed,
  });

  @override
  Widget build(BuildContext context) {
    // Icon for each status
    IconData? statusIcon;
    Color iconColor = Colors.grey;

    switch (status) {
      case 'Pending':
        statusIcon = Icons.hourglass_empty;
        iconColor = Colors.orange;
        break;
      case 'Approval job':
        statusIcon = Icons.check_circle_outline;
        iconColor = Colors.green;
        break;
      case 'Talent baru':
        statusIcon = Icons.person_add;
        iconColor = Colors.blue;
        break;
      case 'Talent Apply':
        statusIcon = Icons.assignment_turned_in;
        iconColor = Colors.blueGrey;
        break;
      case 'Belum dibaca':
        statusIcon = Icons.notifications_none;
        iconColor = Colors.red;
        break;
      default:
        statusIcon = Icons.notification_important;
        iconColor = Colors.grey;
    }

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isRead
            ? Colors.white
            : Colors.blueGrey[50], // Different background for read/unread
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Status Icon
          Row(
            children: [
              Icon(statusIcon, color: iconColor),
              const SizedBox(width: 8),
              // Title (Bold if unread)
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: isRead
                      ? FontWeight.normal
                      : FontWeight.bold, // Bold for unread
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),

          // Description
          Text(
            description,
            style: const TextStyle(fontSize: 14, color: Colors.black87),
          ),
          const SizedBox(height: 8),

          // Date and Time
          Text(
            "$date, $time",
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
          const SizedBox(height: 8),

          // Action Button
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: onActionPressed,
                style: TextButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  foregroundColor: Colors.white,
                ),
                child: const Text("Action Required"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
