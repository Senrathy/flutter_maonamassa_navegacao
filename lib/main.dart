import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/core/navigator_observer_custom.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';
import 'package:flutter_maonamassa_navegacao/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorObservers: [
        NavigatorObserverCustom(),
      ],
      // routes: {
      //   '/' : (_) => HomePage(),
      //   '/detalhe' : (_) => DetalhePage(),
      // },
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
              settings: settings, builder: (context) => const HomePage());
        }
        if (settings.name == '/detalhe') {
          final parametro = settings.arguments as String?;
          return MaterialPageRoute(
              settings: settings,
              builder: (context) => DetalhePage(
                    parametro: parametro ?? 'Não tem parâmetro',
                  ));
        }
      },
    );
  }
}
