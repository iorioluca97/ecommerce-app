import 'package:ecommerce_app/widgets/fakeSearch.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          //backgroundColor: Colors.white,
          title: const FakeSearch(),
          bottom: const TabBar(
              isScrollable: true,
              indicatorColor: Colors.red,
              tabs: [
                RepeatTab(description: "Men"),
                RepeatTab(description: "Women"),
                RepeatTab(description: "Shoes"),
                RepeatTab(description: "Bags"),
                RepeatTab(description: "Electronics"),
                RepeatTab(description: "Accessories"),
                RepeatTab(description: "Home & Garden"),
                RepeatTab(description: "Kids"),
                RepeatTab(description: "Beauty"),
              ]),
        ),
        body: const TabBarView(children: [
          Center(child: Text("Men-screen")),
          Center(child: Text("Women-screen")),
          Center(child: Text("Shoes-screen")),
          Center(child: Text("Bags-screen")),
          Center(child: Text("Electronics-screen")),
          Center(child: Text("Accessories-screen")),
          Center(child: Text("Home & Garden-screen")),
          Center(child: Text("Kids-screen")),
          Center(child: Text("Beauty-screen")),
        ]),
      ),
    );
  }
}

class RepeatTab extends StatelessWidget {
  const RepeatTab({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(description),
    );
  }
}
