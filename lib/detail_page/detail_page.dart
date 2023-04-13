import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/photo_profile.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String? name;

  @override
  void initState() {
    name = 'Fadil';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const PhotoProfile(),
            Text(name ?? 'No Name'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  name = 'Adithama';
                });
              },
              child: const Text('Change Name'),
            ),
          ],
        ),
      ),
    );
  }
}
