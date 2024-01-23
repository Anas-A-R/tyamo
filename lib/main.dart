import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tyamo/Controller/user_controller.dart';
import 'package:tyamo/Views/Authentication/new1.dart';
import 'package:tyamo/Views/Authentication/new2.dart';
import 'package:tyamo/Views/Authentication/new3.dart';
import 'package:tyamo/Views/Authentication/new4.dart';
import 'package:tyamo/Views/Authentication/new5.dart';
import 'package:tyamo/Views/Authentication/new6.dart';
import 'package:tyamo/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Tyamo());
}

class Tyamo extends StatelessWidget {
  const Tyamo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserController()),
      ],
      child: ResponsiveSizer(
        builder: (context, Orientation, ScreenType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Tyamo',
            home:New6(),
          );
        },
      ),
    );
  }
}