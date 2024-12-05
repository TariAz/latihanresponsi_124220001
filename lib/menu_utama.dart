import 'package:flutter/material.dart';
import 'package:latihanresponsi/news_list.dart';
import 'package:latihanresponsi/blog_list.dart';
import 'package:latihanresponsi/reports_list.dart';

class MenuUtama extends StatefulWidget {
  const MenuUtama({Key? key}) : super(key: key);

  @override
  State<MenuUtama> createState() => _MenuUtama();
}

class _MenuUtama extends State<MenuUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 99, 145, 225),
      appBar: AppBar(
        title: Center(
          child: Column(
            children: [Text('SPACE FLIGHT NEWS')],
          ),
        ),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(25),
        crossAxisCount: 1,
        children: <Widget>[
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.white70,
              child: ElevatedButton(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/image/news.png'),
                      radius: 100,
                    ),
                    Text(
                      "News",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Get an overview of the latest Spaceflight news, from various sources!',
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewsList()),
                  );
                },
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: const Color.fromARGB(179, 72, 114, 211),
              child: ElevatedButton(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/image/blog.png'),
                      radius: 100,
                    ),
                    Text("Blog",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    Text(
                      'Blogs often provide a more detailed overview of launches and missions.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BlogList()),
                  );
                },
              ),
            ),
          ),
          Card(
            margin: const EdgeInsets.all(8),
            child: InkWell(
              onTap: () {},
              splashColor: Colors.white70,
              child: ElevatedButton(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/image/reports.png'),
                      radius: 100,
                    ),
                    Text("Reports",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    Text(
                      'Space station and other missions often publish their data.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReportsList()),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
