import 'package:flutter/material.dart';
import 'package:healthier_you_bismillah/login/login_page.dart';
import 'package:healthier_you_bismillah/signup/signup_page.dart';
import 'package:healthier_you_bismillah/home/home_page.dart';

class JournalPage extends StatefulWidget {
  JournalPage({Key? key}) : super(key: key);

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  TimeOfDay _time = TimeOfDay(hour: 7, minute: 15);

  void _selectTime() async {
    final TimeOfDay? newTime = await showTimePicker(
      context: context,
      initialTime: _time,
      initialEntryMode: TimePickerEntryMode.input,
    );
    if (newTime != null) {
      setState(() {
        _time = newTime;
      });
    }
  }

  DateTime _date = DateTime(2020, 11, 17);

  void _selectDate() async {
    final DateTime? newDate = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(2017, 1),
      lastDate: DateTime(2022, 7),
      helpText: 'Select a date',
    );
    if (newDate != null) {
      setState(() {
        _date = newDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _journalTitle(),
              const SizedBox(
                height: 5,
              ),
              _goBackButton(),
              const SizedBox(
                height: 10,
              ),
              _entryOne(),
              const SizedBox(
                height: 10,
              ),
              _entryTwo(),
              const SizedBox(
                height: 10,
              ),
              _entryThree(),
              const SizedBox(
                height: 10,
              ),
              _entryFour(),
              const SizedBox(
                height: 10,
              ),
              _entryFive(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _journalTitle() {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Text(
        'Journals',
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _entryOne() {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 249, 104, 208)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 0.0, right: 110.0, top: 10.0),
              child: Text(
                "Date: 04/03/2022",
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
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
              child: Text(
                "I walked in the nature and run for an hour. I drank 1 L water. These for hard to accomplish but I feel much better now!",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }

  Widget _entryTwo() {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 249, 104, 208)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 0.0, right: 110.0, top: 10.0),
              child: Text(
                "Date: 05/03/2022",
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
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
              child: Text(
                "I didn't break my healthy eating streak today! I met with my friends at a cafe and instead of ordering a pasta, I choose the salad.",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }

  Widget _entryThree() {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 249, 104, 208)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 0.0, right: 110.0, top: 10.0),
              child: Text(
                "Date: 06/03/2022",
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
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
              child: Text(
                "It's been three days since I started using this app. It made me accomplish even the hardest tasks and motivated me! I wasn't that consistent about my goals before!!",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }

  Widget _entryFour() {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 249, 104, 208)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 0.0, right: 110.0, top: 10.0),
              child: Text(
                "Date: 07/03/2022",
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
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
              child: Text(
                "I went to hiking with my family. Although it's one of the oldest traditions of our family, I would usually find an excuse to not attend to this activity. That's because I was too idle and weak for it. But today I was finally be able to collect my strength and get started. I realized that hiking was actually so fun!!",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }

  Widget _entryFive() {
    return Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color.fromARGB(255, 249, 104, 208)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 0.0, right: 110.0, top: 10.0),
              child: Text(
                "Date: 08/03/2022",
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
              padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0),
              child: Text(
                "I stayed home today but didn't gave up on my workout schedule. I did yoga and followed instructor as I was watching videos on workout. I was able to finish all the tasks I wrote in my To-Do list. I'm very proud of myself!!",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }

  Widget _goBackButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 70, 67, 67),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
          )),
      onPressed: () => _goBackButtonFunction(),
      child: const Text(
        'Go Back to Main Page',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  void _goBackButtonFunction() {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
        (route) => false);
  }
}
