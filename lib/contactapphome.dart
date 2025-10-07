import 'package:flutter/material.dart';
import 'package:ghanatech/contact_details_view.dart';
import 'package:ghanatech/contact_model.dart';
import 'package:grouped_list/grouped_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        "name": "Madison Williamson",
        "phone": "(157) 598-6766",
        "email": "dictum@icloud.couk",
        "region": "Guaviare",
        "country": "Canada",
      },
      {
        "name": "Cedric Owen",
        "phone": "1-576-831-3683",
        "email": "interdum.feugiat@aol.com",
        "region": "Saarland",
        "country": "Peru",
      },
      {
        "name": "Desirae Hurley",
        "phone": "1-128-282-3754",
        "email": "phasellus.libero@yahoo.ca",
        "region": "Cornwall",
        "country": "Vietnam",
      },
      {
        "name": "Sylvester Olson",
        "phone": "(513) 526-6573",
        "email": "a.scelerisque@protonmail.edu",
        "region": "Cartago",
        "country": "New Zealand",
      },
      {
        "name": "Reuben Chandler",
        "phone": "1-834-269-7193",
        "email": "eget@icloud.ca",
        "region": "Zhōngnán",
        "country": "Germany",
      },
    ];
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

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
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
                physics:
                    NeverScrollableScrollPhysics(), // disable nested scroll
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Contact contact = Contact.fromJson(data[index]);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ContactDetailsView(
                              contact: Contact(
                                name: 'Peter Agyekum',
                                phone: '+233 20 81 700',
                                email: 'agyekumpeter123@gmail.com',
                                region: 'Bono Region',
                                country: 'Ghana',
                              ),
                            );
                          },
                        ),
                      );
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('profile.jpg'),
                    ),
                    title: Text('Peter Agyekum'),
                    subtitle: Text('+233 20 81 700'),
                    trailing: Icon(Icons.more_horiz),
                  );
                },
                separatorBuilder: (context, index) =>
                    Divider(indent: 25, thickness: 2, color: Colors.grey),
                itemCount: 3,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'Contacts',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              GroupedListView<dynamic, String>(
                elements: data,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(), // important
                groupBy: (element) => element['name'][0],
                groupSeparatorBuilder: (String groupByValue) => Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(top: 8.0, right: 15.0),
                  alignment: Alignment.centerRight,
                  child: Text(
                    groupByValue,
                    textAlign: TextAlign.right,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                itemBuilder: (context, element) {
                  Contact contact = Contact.fromJson(element);
                  return Column(
                    children: [
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  ContactDetailsView(contact: contact),
                            ),
                          );
                        },
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage('profile.jpg'),
                        ),
                        title: Text('${element['name']}'),
                        subtitle: Text('${element['phone']}'),
                        trailing: Icon(Icons.more_horiz),
                      ),
                      Divider(indent: 25, thickness: 2, color: Colors.grey),
                    ],
                  );
                },
                itemComparator: (a, b) => a['name'].compareTo(b['name']),
                useStickyGroupSeparators: true,
                floatingHeader: true,
                order: GroupedListOrder.ASC,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Color(0xff1A4ADA),
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
