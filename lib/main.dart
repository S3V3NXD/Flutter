import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'controller_worklist.dart';
import 'addActivity.dart';
import 'package:mobx/mobx.dart';

void main() {
  runApp(WorkList());
}

class WorkList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarefas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final WorklistController works = WorklistController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Controle de Tarefas'),
          centerTitle: true,
        ),
        body: Observer(
          builder: (_) => ListView.builder(
            itemBuilder: (_, i) => ListTile(
              title: Row(
                children:<Widget>[
                  Text(works.activities.toList()[i]),
                  IconButton(icon: Icon(Icons.edit)),
                  IconButton(icon: Icon(Icons.delete))
                ],
              ),
            ),
            itemCount: works.activities.toList().length,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            // works.setActivity('text');
            // works.addWork();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => addActivity(),
              ),
            );
          },
          tooltip: 'Adicionar',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
