import 'package:flutter/material.dart';

class FiestPage extends StatefulWidget {
  const FiestPage({super.key});

  @override
  State<FiestPage> createState() => _FiestPageState();
}

class _FiestPageState extends State<FiestPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double _currentSliderValue = 15;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("กดตรงนี้จะกลับหน้าสองนะครับ"),
      ),
      body: Center(
        child: Column(
          children: [
            const CircleAvatar(
              radius: 60,
              child: Text("tai"),
              backgroundImage: AssetImage(
                  "assrts/foggy-shot-floating-torii-miyajima-japan-during-rain.jpg"),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 16,
            ),
            Text("Register"),
            SizedBox(
              height: 16,
            ),
            Text("name"),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text("Username"),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.account_box_outlined),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text("passwrd"),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.key),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(child: Text("Weight")),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            SizedBox(
              height: 16,
            ),
            Container(child: Text("Lelght")),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
