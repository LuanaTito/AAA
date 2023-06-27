import 'package:flutter/material.dart';
//main() ponto de entrada da sua aplicação
void main() => runApp(const AppBarApp()); //é possível fazer das duas formas.
/*void  main() {
  runApp(const AppBarApp());
}*/

class AppBarApp extends StatelessWidget {
  //AppBar é responsável pelo topo (menu).
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TopoAppBar(), //chamada da aplicação.
    );
  }
}

class TopoAppBar extends StatelessWidget {
  const TopoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Uma barra de aplicativos que consiste em uma barra de
      //ferramentas e principalmente outros widgets.
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 139, 7, 247),
        title: const Text('Modelo de Menu'),
        actions: <Widget>[
          //colocar todos os icones aqui dentro.
          IconButton(
            icon: const Icon(Icons.notification_add),
            tooltip: 'Notificações',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Você tem notificações!')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.reorder),
            tooltip: 'Menu',
            onPressed: () {},
          ),
          IconButton(
              icon: const Icon(Icons.person),
              tooltip: 'Configuração de perfil',
              onPressed: () {}
              ),
        IconButton(
          icon:  const Icon(Icons.navigate_next),
          tooltip: 'próxima página',
          onPressed: () {
            Navigator.push(context, MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    backgroundColor: const Color.fromARGB(255, 139, 7, 247),
                    title: const Text('Pagina anterior'),
                  ),
                  body:  const Center(child: Text(
                    'Segunda página!', 
                    style: TextStyle(fontSize: 24),
                    ),
                    ),
                  );
              }
            ));
          },
        ),

        ],
      ),

         body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(50, 20, 0, 0),
                        child: ButtonWidget(
                          onPressed: () {},
                          text: 'Comprar',
                          options: ButtonOptions(
                            width: 130,
                            height: 40,
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            
                          ),
                          elevation: 3,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(50, 20, 0, 0),
                        child: ButtonWidget(
                          onPressed: () {},
                          text: 'Vender',
                          options: ButtonOptions(
                            width: 130,
                            height: 40,
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                           
                          ),
                          elevation: 3,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(50, 0, 0, 0),
                            child: ButtonWidget(
                              onPressed: () {},
                              text: 'Trocar',
                              options: ButtonOptions(
                                width: 130,
                                height: 40,
                                padding:
                                    const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                
                               
                                    ),
                                elevation: 3,
                                borderSide: const BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
          ],
        ),
         ),
    );
           
  }
}


