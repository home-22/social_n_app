import 'package:aaa_aa/page_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 350,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/slika.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      'Mattia, 25',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 28,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'UX Designer',
                      style: TextStyle(color: Colors.grey),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // ignore: avoid_print
                            print('Settings');
                          },
                          child: Container(
                            width: 150,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white12,
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 2, color: Colors.grey),
                            ),
                            child: const Text(
                              'Settings',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const Text(
                          'VERIFIED',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: -20,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const PageHome(),
                      ),
                    );
                  },
                  child: const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.purple,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text(
                          '30,456',
                          style: TextStyle(fontSize: 22),
                        ),
                        SizedBox(height: 5),
                        Text('views'),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      child: VerticalDivider(
                        color: Colors.brown.withOpacity(.3),
                      ),
                    ),
                    Column(
                      children: const [
                        Icon(Icons.stacked_bar_chart_sharp),
                        SizedBox(height: 5),
                        Text('views'),
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                  color: Colors.brown.withOpacity(.3),
                ),
                _customListTile(
                  icon: Icons.star,
                  title: 'Preformance',
                  onPress: () {
                    // ignore: avoid_print
                    print('Preformance');
                  },
                ),
                _customListTile(
                  icon: Icons.connect_without_contact,
                  title: 'Connections',
                  onPress: () {
                    // ignore: avoid_print
                    print('Connections');
                  },
                ),
                _customListTile(
                  icon: Icons.person,
                  title: 'About Me',
                  onPress: null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _customListTile({
    required IconData icon,
    required String title,
    required VoidCallback? onPress,
  }) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        height: 35,
        width: 35,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 2),
        child: Text(title),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: 14,
      ),
    );
  }
}
