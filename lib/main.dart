import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_currecy_calculator/const/currencies.dart';
import 'package:flutter_currecy_calculator/model/currency_model.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter IC',
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.indigo,
      accentColor: Colors.indigoAccent,
    ),
    home: MyInterestCalculator(),
  ));
}

class MyInterestCalculator extends StatefulWidget {
  @override
  MyICState createState() => MyICState();
}

class MyICState extends State<MyInterestCalculator> {
  var _fromKey = GlobalKey<FormState>();


  var _currentItemSelected1 = '';
  var _currentItemSelected2 = '';

  TextEditingController v1 = TextEditingController();
  TextEditingController v2 = TextEditingController();

  CurrencyModel currencyModel = new CurrencyModel();

  var queryParameters = {
    'access_key': MyConst.MyKey,
  };

  getJSONData() async {
    var response = await http.get(
        Uri.https(MyConst.Url, '/api/', queryParameters),
        headers: {"Accept": "application/json"});

    print(response.body);

    setState(() {
      currencyModel = json.decode(response.body);
    });
  }

  @override
  void initState() {
    super.initState();
    _currentItemSelected1 = MyConst.CurrenciesMap[0];

    getJSONData();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontSize: 15,
      color: Colors.black,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Currency Converter'),
      ),
      body: Form(
        key: _fromKey,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              getImageAsset(),
              Container(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 5, top: 5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: textStyle,
                          controller: v1,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter amount';
                            }
                          },
                          decoration: InputDecoration(
                              labelText: 'Value 1',
                              labelStyle: textStyle,
                              errorStyle: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 15.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                      ),
                      Container(
                        width: 10,
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                         /* items: MyConst.CurrenciesMap((e) {
                            return DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),
                            );
                          }).toList(),*/
                         items: MyConst.CurrenciesMap.values.toList(),
                          value: _currentItemSelected1,
                          onChanged: (String s) {
                            _onDropDownItemSelected(s);
                          },
                        ),
                      ),
                    ],
                  )),
              Container(
                height: 10,
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 5, top: 5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          style: textStyle,
                          controller: v2,
                          validator: (String value) {
                            if (value.isEmpty) {
                              return 'Please enter amount';
                            }
                          },
                          decoration: InputDecoration(
                              labelText: 'Value 2',
                              labelStyle: textStyle,
                              errorStyle: TextStyle(
                                  color: Colors.yellowAccent, fontSize: 15.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0))),
                        ),
                      ),
                      Container(
                        width: 10,
                      ),
                      Expanded(
                        child: DropdownButton<String>(
                          items: _currencies1.map((e) {
                            return DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),
                            );
                          }).toList(),
                          value: _currentItemSelected2,
                          onChanged: (String s) {
                            _onDropDownItemSelected(s);
                          },
                        ),
                      ),
                    ],
                  )),
              Container(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.only(bottom: 5, top: 5),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          padding: EdgeInsets.all(5),
                          color: Colors.black,
                          textColor: Colors.white,
                          child: Text(
                            'Calculate',
                            textScaleFactor: 1,
                          ),
                          onPressed: () {
                            setState(() {
                              if (_fromKey.currentState.validate()) {}
                            });
                          },
                        ),
                      ),
                      Container(
                        width: 10,
                      ),
                      Expanded(
                        child: RaisedButton(
                          padding: EdgeInsets.all(5),
                          color: Colors.black,
                          textColor: Colors.white,
                          child: Text(
                            'Reset',
                            textScaleFactor: 1,
                          ),
                          onPressed: () {
                            setState(() {
                              _reset();
                            });
                          },
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('assets/images/money.png');

    Image image = Image(
      image: assetImage,
      width: 100.0,
      height: 100.0,
    );

    return Container(
      child: image,
      margin: EdgeInsets.all(20),
    );
  }

  void _onDropDownItemSelected(newValueSelected) {
    setState(() {
      this._currentItemSelected1 = newValueSelected;
    });
  }

  void _reset() {
    v1.text = '';
    v2.text = '';

    _currentItemSelected1 = _currencies1[0];
  }
}
