import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.abc),
              Text('Lesson Three'),
            ],
          ),
          actions: [
            PopupMenuButton(
              onSelected: (value) {
                switch (value) {
                  case 1:
                    debugPrint('Handle chat');
                  case 2:
                    debugPrint('Handle settings');
                  case 3:
                    debugPrint('Handle about');
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                    value: 1,
                    child: Row(
                      children: [
                        Icon(
                          Icons.message,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                        Text('Chat'),
                      ],
                    )),
                const PopupMenuItem(value: 2, child: Text('Settings')),
                const PopupMenuItem(value: 3, child: Text('About')),
              ],
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Item One'),
              const Text('Item Two'),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Member One'),
                  Text('Member Two'),
                  Text('Member Three'),
                ],
              ),
              const Text('Item Three'),
              ElevatedButton(
                onPressed: () {
                  // this type of action can also be logged on a logger
                  debugPrint('Well I can send content here');
                },
                child: const Icon(Icons.send),
              )
            ],
          ),
        ),
        drawer: const Drawer(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Account'),
                Text('Settings'),
                Text('Search'),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          ],
        ),
      ),
    );
  }
}
