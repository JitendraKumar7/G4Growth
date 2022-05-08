import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentPageIndex = 0;

  Widget get _widget {
    switch (_currentPageIndex) {
      case 0:
        return const HomeTab();
      case 1:
        return const SearchTab();
      case 2:
        return const ShoppingTab();
      case 3:
        return const ProfileTab();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widget,
      appBar: AppBar(
        title: Text(
          'Rasan Pro',
          style: GoogleFonts.pottaOne(fontSize: 40),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/profile_image.png'),
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(children: [
          ListTile(
            title: Text(
              'Rasan Pro',
              style: GoogleFonts.pottaOne(fontSize: 40),
            ),
            trailing: Text(
              'X',
              style: GoogleFonts.poppins(fontSize: 24),
            ),
          ),
          const Divider(color: Colors.black),
          ListTile(
            leading: Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset('assets/profile_image.png'),
            ),
            title: const Text('Name'),
            subtitle: const Text('email'),
            trailing: const Icon(Icons.play_arrow),
          ),
          const Divider(color: Colors.black),
          const ListTile(title: Text('Notification')),
          const Divider(color: Colors.black),
          const ListTile(title: Text('My Order')),
          const Divider(color: Colors.black),
          const ListTile(title: Text('My Basket')),
          const Divider(color: Colors.black),
          const ListTile(title: Text('About Us')),
          const Divider(color: Colors.black),
          const ListTile(title: Text('Help & Support')),
          const Divider(color: Colors.black),
          const ListTile(title: Text('Logout'), trailing: Icon(Icons.logout)),
          const Divider(color: Colors.black),
        ]),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() => _currentPageIndex = index);
        },
        selectedIndex: _currentPageIndex,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.search,
              color: Colors.red,
            ),
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.shopping_cart,
              color: Colors.red,
            ),
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.person,
              color: Colors.red,
            ),
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  const HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(children: [
        Container(
          width: 500,
          height: 78,
          color: Colors.blue,
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.red,
            ),
            height: 157,
            width: 320,
          ),
        ),
      ]),
      const SizedBox(height: 9),
      const Divider(color: Colors.black, height: 3),
      SizedBox(
        height: 65,
        child: ListView(
            padding: const EdgeInsets.all(3),
            scrollDirection: Axis.horizontal,
            children: [
              ...List.generate(
                4,
                (index) => Column(children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 8),
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/wheat.jpg',
                      height: 40,
                    ),
                  ),
                  const Text(
                    'Static data',
                    style: TextStyle(fontSize: 8),
                  ),
                ]),
              ),
              Container(
                padding: const EdgeInsets.all(9),
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black,
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ),
            ]),
      ),
      const Divider(color: Colors.black, height: 3),
    ]);
  }
}

class SearchTab extends StatelessWidget {
  const SearchTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text('Search'),
    );
  }
}

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text('Profile'),
    );
  }
}

class ShoppingTab extends StatelessWidget {
  const ShoppingTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Text('Shopping'),
    );
  }
}
