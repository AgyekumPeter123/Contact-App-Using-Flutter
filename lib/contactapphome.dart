import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'My Contacts',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('profile.jpg'),
              ),
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(90),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search contacts',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  //borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: 16,
                ),
              ),
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Text(
                'Recent',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(), // disable nested scroll
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('profile.jpg'),
                  ),
                  title: Text('Peter Agyekum'),
                  subtitle: Text('+123 456 7890'),
                  trailing: Icon(Icons.more_horiz),
                );
              },
              separatorBuilder: (context, index) =>
                  Divider(indent: 25, thickness: 2, color: Colors.grey),
              itemCount: 3,
            ),
            Text(
              'Contacts',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            GroupedListView<dynamic, String>(
              elements: [
                {'name': 'John', 'group': 'A'},
                {'name': 'Peter', 'group': 'A'},
                {'name': 'James', 'group': 'B'},
                {'name': 'Albert', 'group': 'B'},
                {'name': 'Kwasi', 'group': 'C'},
              ],
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(), // important
              groupBy: (element) => element['name'][0],
              groupSeparatorBuilder: (String groupByValue) => Container(
                width: double.infinity,
                padding: const EdgeInsets.only(top: 8.0),
                alignment: Alignment.centerRight,
                child: Text(
                  groupByValue,
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              itemBuilder: (context, element) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('profile.jpg'),
                    ),
                    title: Text('${element['name']}'),
                    subtitle: Text('+123 456 7890'),
                    trailing: Icon(Icons.more_horiz),
                  ),
                  Divider(indent: 25, thickness: 2, color: Colors.grey),
                ],
              ),
              itemComparator: (a, b) => a['name'].compareTo(b['name']),
              useStickyGroupSeparators: true,
              floatingHeader: true,
              order: GroupedListOrder.ASC,
            ),
          ],
        ),
      ),
    );
  }
}
