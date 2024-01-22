import 'package:flutter/material.dart';
import 'package:whatsapp_ui/navigation_pages/call.dart';
import 'package:whatsapp_ui/navigation_pages/chats.dart';
import 'package:whatsapp_ui/navigation_pages/status.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        initialIndex: 1,
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, initialIndex: 1, vsync: this);
    _tabController.addListener(_handleTabChange);
  }

  void _handleTabChange() {
    setState(() {
      if (_tabController.index == 2) {
        _isAppBarFloating = false;
      } else if (_tabController.index == 3) {
        _isAppBarFloating = false;
      } else if (_tabController.index == 0) {
        _isAppBarFloating = false;
      } else {
        _isAppBarFloating = true;
      }
    });
  }

  bool _isAppBarFloating = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                expandedHeight: 100.0,
                titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25),
                title: const Text("WA Business"),
                backgroundColor: Colors.blue,
                pinned: true,
                floating: _isAppBarFloating,
                actions: [
                  Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          child: const Icon(Icons.camera_alt_outlined, size: 25, color: Colors.white),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          child: const Icon(Icons.search, size: 25, color: Colors.white),
                        ),
                        Container(
                          child: const Icon(Icons.more_vert, size: 25, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child: Container(
                    color: Colors.blue,
                    child: TabBar(
                      controller: _tabController,
                      indicatorPadding: const EdgeInsets.only(bottom: 2),
                      indicatorColor: Colors.white,
                      indicatorWeight: 3,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: const [
                        Icon(Icons.group, size: 30, color: Colors.white),
                        Text("Chats", style: TextStyle(fontSize: 20, color: Colors.white)),
                        Text("Status", style: TextStyle(fontSize: 20, color: Colors.white)),
                        Text("Calls", style: TextStyle(fontSize: 20, color: Colors.white)),
                      ],
                      labelPadding: const EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            controller: _tabController,
            children: const [
              Text("Group"),
              Chats(),
              Status(),
              Call()
            ],
          ),
        ),
      );
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabChange);
    _tabController.dispose();
    super.dispose();
  }
}
