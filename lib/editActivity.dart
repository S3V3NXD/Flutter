import 'package:flutter/material.dart';
import 'controller_worklist.dart';

class editActivity extends StatelessWidget {
  WorklistController control;
  int pos;
  String value;
  editActivity(control,i,value) {
    this.control = control;
    this.pos = i;
    this.value = value;
  }

  @override
  Widget build(BuildContext context) {
    final myController = TextEditingController(text: value);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tarefa'),
        ),
        body: Container(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      controller: myController,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        hintText: 'Insira o nome da tarefa',
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Por favor digite alguma atividade';
                        }
                        return value;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: ElevatedButton(
                        onPressed: () {
                          control.setActivity(myController.text);
                          control.editActivity(control.activity, pos);
                          Navigator.of(context).pop(context);
                        },
                        style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),),
                        child: Text('Editar Tarefa'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}