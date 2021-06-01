import 'package:app_asc/src/blocs/login/login_bloc.dart';
import 'package:app_asc/src/models/models.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  final LoginBloc loginBloc = new LoginBloc(schoolModel: new SchoolModel());

  final TextEditingController controllerFullname = new TextEditingController();
  final TextEditingController controllerFirstname = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            TextField(
              controller: controllerFullname,
            ),
            TextField(
              controller: controllerFirstname,
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              loginBloc.setModel(new SchoolModel(
                  firstname: '${controllerFirstname.text}',
                  id: 0,
                  fullname: '${controllerFullname.text}'));
              return showDialog(
                context: context,
                builder: (builder) => AlertDialog(
                  title: StreamBuilder<SchoolModel>(
                    stream: loginBloc.subject2,
                    builder: (context, snapshot) {
                      return Text('${snapshot.data?.firstname}');
                    },
                  ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Ok'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('Cancel'),
                    ),
                  ],
                ),
              );
            },
            tooltip: 'Minus',
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
