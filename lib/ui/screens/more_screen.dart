import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rrs_app/main.dart';

// class MoreScreen extends StatelessWidget {
//   MoreScreen({Key? key}) : super(key: key);
//   onSubmitted(WidgetRef ref, String value) {
//     // (notifier) allow us to change the value
//     ref.read(nameProvider.notifier).update((state) => value);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Consumer(
//       builder: (context, ref, child) {
//         final name = ref.watch(nameProvider) ?? '';

//         return Scaffold(
//           body: Column(
//             children: [
//               Text(name),
//               TextField(
//                 onSubmitted: (value) => onSubmitted(ref, value),
//               )
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DestinationScreen(),
          ),
        );
      },
      child: Hero(
        tag: 'example-hero-tag',
        child: Container(
          color: Colors.blue,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}

class DestinationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: 'example-hero-tag',
          child: Container(
            color: Colors.red,
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
