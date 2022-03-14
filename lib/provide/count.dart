import 'package:flutter/material.dart';
import 'package:untitled4/provide/counter.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({this.title});

  Real _real = new Real();

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context).getCounter;
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          title,
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Container(
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width/2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.white,
              boxShadow: [BoxShadow(
                offset: Offset(2,2),
                color: Colors.grey,
                blurRadius: 5
              )],
            ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('$counter',
                      style: TextStyle(fontSize: 80, color: Colors.blue)),
                  Text(
                    Provider.of<Counter>(context, listen: true).value,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 25),
                  ),

                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RaisedButton(
                    elevation: 20,
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      _real.decrementCounter(context);
                    },
                    child: Text(
                      "Decrement",
                      style: TextStyle(fontSize: 20),
                    )),
                RaisedButton(
                    elevation: 20,
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () => _real.incrementCounter(context),
                    child: Text(
                      "Increment",
                      style: TextStyle(fontSize: 20),
                    )),
              ],
            ),
            Spacer()
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
