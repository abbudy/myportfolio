import 'package:flutter/material.dart';

void main() {
  runApp(NeighborhoodWatchApp());
}

class NeighborhoodWatchApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Neighborhood Watch',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Neighborhood Watch')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the Neighborhood Watch App'),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportIncidentScreen()),
                );
              },
              child: Text('Report an Incident'),
            ),
          ],
        ),
      ),
    );
  }
}

class ReportIncidentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Report an Incident')),
      body: Center(
        child: Text('This is where users can report suspicious activities.'),
      ),
    );
  }
}

class AlertsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Neighborhood Alerts')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Suspicious Activity Reported'),
            subtitle: Text('A suspicious vehicle was seen near the park.'),
          ),
          ListTile(
            title: Text('Community Cleanup Event'),
            subtitle: Text('Join us for a cleanup event this Saturday at 10 AM.'),
          ),
          ListTile(
            title: Text('Missing Pet Alert'),
            subtitle: Text('A golden retriever went missing last night. Please help find it.'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PostAlertScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class PostAlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Post an Alert')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Post Alert'),
            ),
          ],
        ),
      ),
    );
  }
}

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Neighborhood Events')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Community Cleanup'),
            subtitle: Text('Date: Saturday, April 12\nLocation: Central Park\nJoin us for a neighborhood cleanup event.'),
          ),
          ListTile(
            title: Text('Safety Workshop'),
            subtitle: Text('Date: Sunday, April 20\nLocation: Town Hall\nLearn important safety tips and measures.'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CreateEventScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class CreateEventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController eventTitleController = TextEditingController();
    TextEditingController eventDetailsController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text('Create an Event')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: eventTitleController,
              decoration: InputDecoration(labelText: 'Event Title'),
            ),
            TextField(
              controller: eventDetailsController,
              decoration: InputDecoration(labelText: 'Event Details'),
              maxLines: 5,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Create Event'),
            ),
          ],
        ),
      ),
    );
  }
}

