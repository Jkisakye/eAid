// ignore_for_file: prefer_const_constructors

import '/donation_requests/create_request.dart';
import 'package:flutter/material.dart';
import '/donation_requests/request_detail.dart';
import '/home/card.dart';
import '/donation_requests/request.dart';
import '/donation/donation.dart';

class DisplayAccount extends StatefulWidget {
  @override
  _DisplayAccountState createState() {
    return _DisplayAccountState();
  }
}

class _DisplayAccountState extends State<DisplayAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 16, 25),
                child: Text('Email: '),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 16, 25),
                child: Text('Password: '),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 16, 25),
                child: Text('Fundraisers: '),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  child: const Text('Create a Fundraiser'),
                  onPressed: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => CreateRequest())),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
