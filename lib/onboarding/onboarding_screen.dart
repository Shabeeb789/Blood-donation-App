import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentIndex = 0;
  late PageController _controller;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff1f1f1),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller,
              onPageChanged: (pageIndex) {
                setState(() {
                  _currentIndex = pageIndex;
                });
              },
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    'assets/images/image-removebg-preview (4).png',
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    'assets/images/Kamloops_Blood_Donor_Clinic-removebg-preview.png',
                    fit: BoxFit.contain,
                  ),
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Image.asset(
                    'assets/images/blood10.jpg',
                    fit: BoxFit.contain,
                  ),
                ),
                // Center(
                //   child: Text('Page 1'),
                // ),
                // Center(
                //   child: Text('Page 2'),
                // ),
                // Center(
                //   child: Text('Page 3'),
                // ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                margin: EdgeInsets.all(3),
                width: _currentIndex == 0 ? 20 : 5,
                height: 5,
                color: _currentIndex == 0 ? Colors.red : Colors.grey[400],
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                margin: EdgeInsets.all(3),
                width: _currentIndex == 1 ? 20 : 5,
                height: 5,
                color: _currentIndex == 1 ? Colors.red : Colors.grey[400],
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 200),
                margin: EdgeInsets.all(3),
                width: _currentIndex == 2 ? 20 : 5,
                height: 5,
                color: _currentIndex == 2 ? Colors.red : Colors.grey[400],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                height: 40,
                width: 40,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: FloatingActionButton(
                  onPressed: () {
                    _currentIndex == 2
                        ? Navigator.pushNamedAndRemoveUntil(
                            context, '/', (route) => false)
                        : _controller.nextPage(
                            duration: Duration(milliseconds: 5000),
                            curve: Curves.elasticOut);
                  },
                  child: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  child: Text(
                    'SKIP',
                    style: TextStyle(fontSize: 20),
                    selectionColor: Colors.white,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
