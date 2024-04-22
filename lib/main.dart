
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('TRADE FINDER')),
        body: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 76, 175, 99),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage:AssetImage (''), 
                  

                    radius: 50,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Basmala Alaa',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting.',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PERSONAL',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  buildPersonalInfoRow('First Name', 'Basmala'),
                  buildPersonalInfoRow('Last Name', 'Alaa'),
                  buildPersonalInfoRow('Email', 'basmal.cyrus@email.com'),
                  buildPersonalInfoRow('Phone', '+60 6585 8985'),
                  buildPersonalInfoRow('Second Phone', '+60 6585 8986'),
                  SizedBox(height: 16),
                  Text(
                    'SUBSCRIPTION',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'You can use a free trial for 3 months.',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      // Handle VIEW MY LISTINGS button press
                    },
                    child: Text('VIEW MY LISTINGS'),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle DELETE ACCOUNT button press
                    },
                    //style: ElevatedButton.styleFrom(: Colors.red),
                    child: Text('DELETE ACCOUNT'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPersonalInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}