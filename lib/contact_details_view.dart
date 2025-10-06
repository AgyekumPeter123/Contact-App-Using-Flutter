import 'package:flutter/material.dart';

class ContactDetailsView extends StatelessWidget {
  const ContactDetailsView({super.key});

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
                'Peter Agyekum',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
              ),
            ),
            Center(
              child: Text(
                'Sunyani',
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
                      '+233 20 23 81 700',
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
                      'agyekumpeter123@gmail.com',
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
                children: [ListTile(title: Text('Share Contacts'))],
              ),
            ),
            Container(
              color: Color(0xff9AADBE),
              child: Column(children: [ListTile(title: Text('QR Codes'))]),
            ),
          ],
        ),
      ),
    );
  }
}
