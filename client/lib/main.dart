import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: Scaffold(
          appBar: AppBar(
            title: Text("WhatsApp Clone"),
            actions: [
              IconButton(
                icon: const Icon(Icons.camera_alt_outlined),
                tooltip: "Camera",
                onPressed: () {
                  print("Clicked");
                },
              ),
              IconButton(
                icon: const Icon(Icons.search),
                tooltip: "Search",
                onPressed: () {
                  print("Clicked");
                },
              ),
              IconButton(
                icon: const Icon(Icons.more_vert),
                tooltip: "More options",
                onPressed: () {
                  print("Clicked");
                },
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.groups),
                ),
                Tab(
                  text: "CHATS",
                ),
                Tab(
                  text: "STATUS",
                ),
                Tab(
                  text: "CALLS",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Text("camera"),
              ),
              Container(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        //todo
                      },
                      child: Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.all(8),
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundImage: NetworkImage(
                                  "https://pbs.twimg.com/profile_images/1223572104400031744/dNUw2Un6_400x400.jpg"),
                              backgroundColor: Colors.blueGrey,
                            ),
                            title: Text(
                              "Jarjit Singh",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Row(
                              children: [
                                Icon(Icons.done_all),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  "Hello!",
                                  style: TextStyle(
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                            trailing: Text("just now"),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Container(
                child: Text("status"),
              ),
              Container(
                child: Text("calls"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum MenuItem { Settings }
