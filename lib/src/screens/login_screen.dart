import 'package:app_asc/src/blocs/login/login_bloc.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  final LoginBloc loginBloc = new LoginBloc(count: 0, count2: 0);

  final TextEditingController controller = new TextEditingController();

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
            StreamBuilder(
              stream: this.loginBloc.countStreem,
              builder: (context, snapshot) => Text(
                '${snapshot.data}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            StreamBuilder(
              stream: this.loginBloc.countStreem2,
              builder: (context, snapshot) => Text(
                '${snapshot.data}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            StreamBuilder(
              stream: this.loginBloc.textStreem,
              builder: (context, snapshot) {
                this.controller.value =
                    this.controller.value.copyWith(text: this.loginBloc.text);
                return TextField(
                  controller: this.controller,
                  onChanged: (value) => this.loginBloc.setText(value),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: this.loginBloc.countPlus,
            tooltip: 'Flus',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: this.loginBloc.countMinus,
            tooltip: 'Minus',
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: this.loginBloc.countPlus2,
            tooltip: 'Flus',
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: this.loginBloc.countMinus2,
            tooltip: 'Minus',
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
