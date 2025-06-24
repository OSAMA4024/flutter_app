import 'package:flutter/material.dart';

class OrderTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order Tracking"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order #123456",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Estimated delivery: June 25, 2023",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Amount",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "\$205.98",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            Expanded(
              child: ListView(
                children: [
                  TrackingStep(
                    title: "Order Placed",
                    subtitle: "June 15, 2023 at 10:30 AM",
                    isCompleted: true,
                    isFirst: true,
                  ),
                  TrackingStep(
                    title: "Order Confirmed",
                    subtitle: "June 15, 2023 at 10:35 AM",
                    isCompleted: true,
                  ),
                  TrackingStep(
                    title: "Preparing Order",
                    subtitle: "June 16, 2023 at 9:00 AM",
                    isCompleted: true,
                  ),
                  TrackingStep(
                    title: "Shipped",
                    subtitle: "June 18, 2023 at 2:30 PM",
                    isCompleted: false,
                  ),
                  TrackingStep(
                    title: "Out for Delivery",
                    subtitle: "",
                    isCompleted: false,
                  ),
                  TrackingStep(
                    title: "Delivered",
                    subtitle: "",
                    isCompleted: false,
                    isLast: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrackingStep extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isCompleted;
  final bool isFirst;
  final bool isLast;

  TrackingStep({
    required this.title,
    required this.subtitle,
    this.isCompleted = false,
    this.isFirst = false,
    this.isLast = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              if (!isFirst)
                Container(
                  width: 2,
                  height: 20,
                  color: isCompleted
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey[300],
                ),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isCompleted
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey[300],
                ),
                child: isCompleted
                    ? Icon(Icons.check, size: 14, color: Colors.white)
                    : null,
              ),
              if (!isLast)
                Container(
                  width: 2,
                  height: 20,
                  color: isCompleted
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey[300],
                ),
            ],
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: isCompleted ? Colors.black : Colors.grey,
                  ),
                ),
                if (subtitle.isNotEmpty)
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}