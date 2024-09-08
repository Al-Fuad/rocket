import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rocket/features/bottom_nav/bloc/bottom_nav_bloc.dart';
import 'package:rocket/features/rocket/splash/ui/splash.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomNavBloc(),
        ),
      ],
      child: MaterialApp(
          theme: ThemeData(
            brightness: Brightness.dark,
            textTheme: GoogleFonts.pressStart2pTextTheme(
              Theme.of(context).textTheme.apply(
                    bodyColor: Colors.white,
                    displayColor: Colors.white,
                  ),
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: const Splash()),
    );
  }
}
