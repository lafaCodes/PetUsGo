import 'package:flutter/material.dart';
import 'activity_tracker_screen.dart';
import 'ar_features_screen.dart';
import 'health_monitoring_screen.dart';
import 'achievements_screen.dart';
import 'community_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet\'s Go!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ActivityTrackerScreen()),
                );
              },
              child: Text('Activity Tracker'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ARFeaturesScreen()),
                );
              },
              child: Text('AR Features'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HealthMonitoringScreen()),
                );
              },
              child: Text('Health Monitoring'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AchievementsScreen()),
                );
              },
              child: Text('Achievements'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommunityScreen()),
                );
              },
              child: Text('Community'),
            ),
          ],
        ),
      ),
    );
  }
}
