import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/models/Status.model.dart';

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1485546246426-74dc88dec4d9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'),
              radius: 25.0,
            ),
            title: Text(
              "My Status",
              style: TextStyle(
                fontWeight: FontWeight.w600
              ),
            ),
            subtitle: Text(
              "Tap to add status update",
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.grey
              ),
            ),
            trailing: Icon(Icons.more_horiz, color: Theme.of(context).primaryColor, size: 24.0),
          ),
          Divider(height: 10.0),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: dataStatus.length,
                itemBuilder: (context, int index) => Column(
                  children: <Widget>[
                    ListTile(
                      leading: CircleAvatar(
                        foregroundColor: Theme.of(context).primaryColor,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(dataStatus[index].avatarurl),
                        radius: 25.0,
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(
                            dataStatus[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                      subtitle: Container(
                        child: Text(
                          dataStatus[index].date,
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}