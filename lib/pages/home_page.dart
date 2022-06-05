import 'package:flutter/material.dart';
import 'package:flutter_maonamassa_navegacao/pages/detalhe_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/detalhe', arguments: 'Parametro X');
              },
              child: const Text('Ir para Detalhes'),
            ),
            TextButton(
              onPressed: () async {
                print('Antes de entrar na página Detalhes 2');
                final retorno = await Navigator.of(context).pushNamed<String>('/detalhe2');
                print('Navegou para a página Detalhes 2');
                print('O retorno de detalhe 2 é $retorno');
              },
              child: const Text('Ir para Detalhes2 e aguardar'),
            ),
          ],
        ),
      ),
    );
  }
}
