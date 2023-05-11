import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TestNotification {
  final String title;
  final String message;
  final DateTime date;

  TestNotification(
      {required this.title, required this.message, required this.date});
}

class TestNotificationScreen extends StatelessWidget {
  final notifications = [
    {
      'title': 'Notification 1',
      'body': 'This is notification 1',
      'date': DateTime(2023, 5, 7)
    },
    {
      'title': 'Notification 2',
      'body': 'This is notification 2',
      'date': DateTime(2023, 5, 8)
    },
    {
      'title': 'Notification 3',
      'body': 'This is notification 3',
      'date': DateTime(2023, 5, 9)
    },
    {
      'title': 'Notification 4',
      'body': 'This is notification 4',
      'date': DateTime(2023, 5, 9)
    },
    {
      'title': 'Notification 5',
      'body': 'This is notification 5',
      'date': DateTime(2023, 5, 10)
    },
    {
      'title': 'Notification 6',
      'body': 'This is notification 6',
      'date': DateTime(2023, 5, 10)
    },
  ];

  TestNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final groupedNotifications = groupBy(notifications, (obj) => obj['date']);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
        ),
        body: ListView.builder(
          itemCount: groupedNotifications.length,
          itemBuilder: (BuildContext context, int index) {
            final date = groupedNotifications.keys.toList()[index];
            final notifications = groupedNotifications[date];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(DateFormat('EEEE, MMMM d, y')
                      .format(DateTime.parse(date.toString()))),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: notifications!.length,
                  itemBuilder: (BuildContext context, int index) {
                    final notification = notifications[index];
                    return ListTile(
                      title: Text(notification['title'].toString()),
                      subtitle: Text(notification['body'].toString()),
                    );
                  },
                ),
              ],
            );
          },
        ));
  }
}
