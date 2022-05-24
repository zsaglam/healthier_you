import 'package:flutter/material.dart';
import 'package:healthier_you_bismillah/login/login_page.dart';
import 'package:healthier_you_bismillah/journal/journal.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              label: 'Journal',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.fact_check_outlined),
              label: 'To-Do',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(156, 234, 78, 78),
          onTap: _onItemTapped,
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 100.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _welcomeTitle(),
                      const SizedBox(
                        height: 20,
                      ),
                      _consaltingPro(),
                      const SizedBox(
                        height: 15,
                      ),
                      _searchGoal(),
                      const SizedBox(
                        height: 15,
                      ),
                      _dailyGoal()
                    ]))));
  }

  Widget _welcomeTitle() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Welcome Back!',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _consaltingPro() {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 243, 147, 96)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: Text(
                "Would you like to consult a professional?",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                "Chat with people who are experts at their jobs!",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ElevatedButton(
              onPressed: null,
              child: Text(
                'Click Here!',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ));
  }

  Widget _searchGoal() {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 240, 100, 100)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 0.0, right: 110.0, top: 10.0),
              child: Text(
                "Looking for a new goal?",
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                "Setting new goals will make your life change for the better! Search fro new goals by typing it here:",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 7),
                child: TextField(
                  decoration: InputDecoration(
                      floatingLabelBehavior: FloatingLabelBehavior.auto,
                      labelText: 'Search ',
                      labelStyle:
                          const TextStyle(fontSize: 14, color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.0))),
                ))
          ],
        ));
  }

  Widget _dailyGoal() {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 161, 224, 223)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 0.0, right: 110.0, top: 10.0),
              child: Text(
                "Completed a daily goal?",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                "Click here so that you can mark a goal as completed and note it down. You're awesome!",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: ElevatedButton(
                      onPressed: null,
                      child: Text(
                        'Completed!',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: ElevatedButton(
                      onPressed: () => _journalButtonFunction(),
                      child: const Text(
                        'Note it Down!',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ])
          ],
        ));
  }

  void _journalButtonFunction() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => JournalPage(),
        ),
        (route) => false);
  }
}
