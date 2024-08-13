import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyStory());
}

class MyStory extends StatelessWidget {
  const MyStory({super.key});

  @override
  Widget build(BuildContext context) {
    List myDatalist = [
      {
        "name": "vishnu",
        "dp":
            "https://images.pexels.com/photos/1387037/pexels-photo-1387037.jpeg?auto=compress&cs=tinysrgb&w=300",
        "bg":
            "https://images.pexels.com/photos/1583582/pexels-photo-1583582.jpeg?auto=compress&cs=tinysrgb&w=300"
      },
      {
        "name": "abhinav",
        "dp":
            "https://images.pexels.com/photos/709143/pexels-photo-709143.jpeg?auto=compress&cs=tinysrgb&w=300",
        "bg":
            "https://images.pexels.com/photos/2176593/pexels-photo-2176593.jpeg?auto=compress&cs=tinysrgb&w=300"
      },
      {
        "name": "nidhin",
        "dp":
            "https://images.pexels.com/photos/884788/pexels-photo-884788.jpeg?auto=compress&cs=tinysrgb&w=300",
        "bg":
            "https://images.pexels.com/photos/848573/pexels-photo-848573.jpeg?auto=compress&cs=tinysrgb&w=300"
      },
      {
        "name": "pranav",
        "dp":
            "https://images.pexels.com/photos/1269968/pexels-photo-1269968.jpeg?auto=compress&cs=tinysrgb&w=300",
        "bg":
            "https://images.pexels.com/photos/1212487/pexels-photo-1212487.jpeg?auto=compress&cs=tinysrgb&w=300"
      },
      {
        "name": "shinil",
        "dp":
            "https://images.pexels.com/photos/1036403/pexels-photo-1036403.jpeg?auto=compress&cs=tinysrgb&w=300",
        "bg":
            "https://images.pexels.com/photos/1433052/pexels-photo-1433052.jpeg?auto=compress&cs=tinysrgb&w=300"
      }
    ];

    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: PageView.builder(
                itemCount: myDatalist.length,
                itemBuilder: (context, index) => Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(myDatalist[index]["bg"]))),
                      child: Column(
                        children: [
                          Divider(
                            color: Colors.grey,
                            thickness: 3,
                          ),
                          ListTile(
                            leading: CircleAvatar(
                                radius: 20,
                                backgroundImage:
                                    NetworkImage(myDatalist[index]["dp"])),
                            title: Text(
                              myDatalist[index]["name"],
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              "warriorofthenation",
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      border: Border.all(
                                          color: Colors.white, width: 1.5)),
                                  child: Text(
                                    "Sent message",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.favorite_border_outlined,
                                color: Colors.white,
                                size: 34,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(
                                Icons.send,
                                color: Colors.white,
                                size: 34,
                              ),
                            ],
                          )
                        ],
                      ),
                    ))),
      ),
    );
  }
}
