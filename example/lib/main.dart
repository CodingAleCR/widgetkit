import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:widgetkit/widgetkit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgetkit Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Widgetkit Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return HideKeyboardOnTouchOutside(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Text(
                "PasswordTextField",
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 16),
              PasswordTextField(),
              SizedBox(height: 16),
              PasswordTextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 32),
              Text(
                "CupertinoPasswordTextField",
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 16),
              CupertinoTextField(
                obscureText: true,
                suffix: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Icon(CupertinoIcons.eye),
                ),
              ),
              SizedBox(height: 32),
              Text(
                "AutolinkText",
                style: Theme.of(context).textTheme.headline6,
              ),
              SizedBox(height: 16),
              AutolinkText(
                "Hello world from https://www.flutter.dev/",
                textStyle: TextStyle(color: Colors.black),
                linkStyle: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
                onWebLinkTap: (String url) => print(url),
              ),
              SizedBox(height: 16),
              AutolinkText(
                "Humanized (removes scheme) https://www.flutter.dev/",
                humanize: true,
                textStyle: TextStyle(color: Colors.black),
                linkStyle: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
                onWebLinkTap: (String url) => print(url),
              ),
              SizedBox(height: 16),
              AutolinkText(
                "Autolink email me@codingale.dev",
                textStyle: TextStyle(color: Colors.black),
                linkStyle: TextStyle(
                  color: Colors.green,
                  decoration: TextDecoration.underline,
                ),
                onEmailTap: (String url) => print(url),
              ),
              SizedBox(height: 16),
              AutolinkText(
                "Autolink phone +50688884444",
                textStyle: TextStyle(color: Colors.black),
                linkStyle: TextStyle(
                  color: Colors.orange,
                  decoration: TextDecoration.underline,
                ),
                onPhoneTap: (String url) => print(url),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
