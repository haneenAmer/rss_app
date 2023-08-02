import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rrs_app/ui/screens/favourite_screen.dart';
import 'package:rrs_app/ui/screens/home_screen.dart';
import 'package:rrs_app/ui/screens/navigation_bar.dart';
import 'package:rrs_app/ui/screens/onboarding_screen.dart';
import 'package:rrs_app/ui/screens/resturant_details_screen.dart';
import 'package:rrs_app/ui/screens/signin_screen.dart';
import 'package:rrs_app/ui/screens/splash_screen.dart';

final nameProvider = Provider<String>((ref) {
  return 'Hello world';
});
void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final name = ref.watch(nameProvider);
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Tajawal'),
        debugShowCheckedModeBanner: false,
        home: SigninScreen()
        // Consumer(
        //   builder: (context, ref, child) {
        //     final name = ref.watch(nameProvider);
        //     ///return (Text('haneen'));
        //   },
        //

        );
  }
}
