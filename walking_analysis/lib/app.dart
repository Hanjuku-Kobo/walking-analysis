import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'model/configs/static_var.dart';
import 'screen/introduction/introduction_page.dart';
import 'screen/main_page.dart';
import 'state/introduction_provider.dart';

class MyApp extends ConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  final MaterialColor materialWhite = const MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    StaticVar.globalRef = ref;

    ref.read(introductionProvider.notifier).getPrefIntro();
    final intro = ref.watch(introductionProvider).intro;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: materialWhite,
      ),
      home: intro ? IntroductionPage() : const MyMainPage(),
    );
  }
}