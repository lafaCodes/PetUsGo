import 'package:flutter/material.dart';
import '../../activity_tracker/screens/activity_tracker_screen.dart';
import '../../ar_features/screens/ar_features_screen.dart';
import '../../health_monitoring/screens/health_monitoring_screen.dart';
import '../../achievements/screens/achievements_screen.dart';
import '../../community/screens/community_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    ActivityTrackerScreen(),
    ARFeaturesScreen(),
    HealthMonitoringScreen(),
    AchievementsScreen(),
    CommunityScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet\'s Go!'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurpleAccent,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_walk),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videogame_asset),
            label: 'AR Features',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety),
            label: 'Health',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events),
            label: 'Achievements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Community',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue.shade200,
        onTap: _onItemTapped,
      ),
    );
  }
}
