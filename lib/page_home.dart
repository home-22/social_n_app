import 'package:aaa_aa/components/custom_icon.dart';
import 'package:flutter/material.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: const [
                  SizedBox(width: 50),
                  Spacer(),
                  Text(
                    'Date',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Icons.alarm_add,
                    color: Colors.black,
                  ),
                  SizedBox(width: 40),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(blurRadius: 25, color: Colors.black38),
                  ],
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: AssetImage('assets/images/slika 2.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Millie, 21',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                'I am Millie, and i love pets. I am from Worl. I am Millie, and i love pets. I am from Worl.',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Positioned(
                      right: 20,
                      bottom: 60,
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: Colors.purple,
                        child: Icon(
                          Icons.favorite_border,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Row(
                children: const [
                  Spacer(),
                  AppCustomIcon(icon: Icons.menu),
                  SizedBox(width: 30),
                  AppCustomIcon(icon: Icons.favorite),
                  SizedBox(width: 30),
                  AppCustomIcon(icon: Icons.arrow_forward_ios),
                  Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
