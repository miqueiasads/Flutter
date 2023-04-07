import 'package:flutter/material.dart';

void main() {
  runApp(MeuCronometro());
}

class MeuCronometro extends StatefulWidget {
  @override
  _MeuCronometroSt createState() => _MeuCronometroSt();
}

class _MeuCronometroSt extends State<MeuCronometro> {
  int _valor = 0;

  void aumentar(int somar) {
    setState(() {
      _valor += somar;
    });
  }

  void reduzir(int subtrair) {
    if (_valor == 0) {
      _valor = 0;
    } else {
      setState(() {
        _valor -= subtrair;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(canvasColor: Colors.blueAccent),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Contador'),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$_valor',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    FloatingActionButton(
                        child: Text('+1'),
                        backgroundColor: Colors.green,
                        onPressed: () {
                          aumentar(1);
                        }),
                    SizedBox(width: 10),
                    FloatingActionButton(
                        child: Text('-1'),
                        backgroundColor: Colors.red,
                        onPressed: () {
                          reduzir(1);
                        })
                  ],
                )
              ],
            ),
          )),
    );
  }
}
