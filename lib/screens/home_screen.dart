import 'package:flutter/material.dart';
import 'package:signals_tutorial/screens/counter_screen.dart';
import 'package:signals_tutorial/screens/http_screen.dart';
import 'package:signals_tutorial/screens/todo_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView(
        children: [
          _NavItem(
            label: "Counter",
            screen: CounterScreen(),
          ),
          _NavItem(
            label: "Todos",
            screen: TodoScreen(),
          ),
          _NavItem(
            label: "Http",
            screen: HttpScreen(),
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  final String label;
  final Widget screen;
  const _NavItem({super.key, required this.label, required this.screen});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          title: Text(label),
          trailing: Icon(Icons.chevron_right),
          onTap: () => {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => screen))
              }),
    );
  }
}
