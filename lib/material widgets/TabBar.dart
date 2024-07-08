import 'package:flutter/material.dart';
class TabBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar Widget Example'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.business), text: 'Business'),
              Tab(icon: Icon(Icons.school), text: 'School'),
            ],
            indicatorColor: Colors.blueAccent,
            indicatorWeight: 4.0,
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black,
            isScrollable: true,
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('Home Tab')),
            Center(child: Text('Business Tab')),
            Center(child: Text('School Tab')),
          ],
        ),
      ),
    );
  }
}
