import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: EdgeInsets.zero,
          child: const Column(
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage("https://media.architecturaldigest.com/photos/63079fc7b4858efb76814bd2/16:9/w_4000,h_2250,c_limit/9.%20DeLorean-Alpha-5%20%5BDeLorean%5D.jpg"),
                ),
                tileColor: Colors.lightBlue,
                title: Text("Car 1", style: TextStyle(color: Colors.white)),
                subtitle: Text("Hello", style: TextStyle(color: Colors.white)),
                trailing: Column(
                  children: [
                    Text("4:00 pm"),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Text("2", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 2),
            ],
          ),
        );
      },
    );
  }
}
