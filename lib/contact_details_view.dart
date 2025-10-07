import 'package:flutter/material.dart';
import 'package:ghanatech/contact_model.dart';

class ContactDetailsView extends StatelessWidget {
  const ContactDetailsView({super.key, required this.contact});

  final Contact contact;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Contacts',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),

      body: SafeArea(
        child: ListView(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('profile.jpg'),
            ),
            SizedBox(height: 25),
            Center(
              child: Text(
                contact.name,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
            ),
            Center(
              child: Text(
                '${contact.country}, ${contact.region}',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 20),
              ),
            ),
            SizedBox(height: 30),
            Container(
              color: Color(0xff9AADBE),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Mobile',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    subtitle: Text(
                      contact.phone,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Color(0xff333333),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: null,
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder(),
                          ),
                          child: Icon(Icons.message),
                        ),
                        TextButton(
                          onPressed: null,
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder(),
                          ),
                          child: Icon(Icons.call),
                        ),
                      ],
                    ),
                  ),

                  ListTile(
                    title: Text(
                      'Email',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    subtitle: Text(
                      contact.email,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Color(0xff333333),
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextButton(
                          onPressed: null,
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder(),
                          ),
                          child: Icon(Icons.email),
                        ),
                      ],
                    ),
                  ),

                  ListTile(
                    title: Text(
                      'Group',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                      ),
                    ),
                    subtitle: Text(
                      'Uni friends',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 18,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Accounts Linked',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
            ),
            Container(
              color: Color(0xff9AADBE),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Telegram'),
                    trailing: Image.asset('telegram.png'),
                  ),
                  ListTile(
                    title: Text('Whatsapp'),
                    trailing: Image.asset('whatsapp.png'),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'More Options',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
            ),
            Container(
              color: Color(0xff9AADBE),
              child: Column(
                children: [
                  ListTile(title: Text('Share Contacts')),
                  ListTile(title: Text('QR Codes')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
