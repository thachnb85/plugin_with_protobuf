import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:plugin_with_protobuf/plugin_with_protobuf.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      platformVersion = await PluginWithProtobuf.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: <Widget>[
            Center(
              child: Text(_platformVersion),
            ),
            Center(
              child: FutureBuilder(
                  future: PluginWithProtobuf.myChildren, // come from async call
                  builder: (BuildContext context, AsyncSnapshot snapshot){
                    if (!snapshot.hasData) {
                      return Text('Loading');
                    }
                    if (snapshot.hasError) {
                      return Text(snapshot.error.toString());
                    }
                    Person _p = snapshot.data;
                    String personName = "${_p.name}" + ((_p.addressesList.isEmpty) ? " " : " is living in " + _p.addressesList[0].city);
                    String firstChildName = (_p.childrenList.isEmpty) ? " " :   " First child is ${_p.childrenList[0].name}";
                    return Text(personName + firstChildName);
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
