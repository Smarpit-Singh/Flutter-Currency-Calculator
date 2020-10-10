import 'dart:ffi';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_currecy_calculator/const/currencies.dart';
import 'package:flutter_currecy_calculator/model/currency_model.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter IC',
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Color(0xFF000000),
      accentColor: Color(0xFF000000),
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

  double rate1 = 0;
  double rate2 = 0;

  var code1;
  var code2;

  String txt1;
  String txt2;

  CurrencyModel currencyModel = new CurrencyModel();


  getSuggest() async {
    final json = const JsonCodec();

    try {
      var uri = Uri.http(MyConst.Url, '/api/latest', {
        'access_key': MyConst.MyKey,
      });

      var response = await http.get(uri, headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      });

      var data = json.decode(response.body);
      print(data);

      setState(() {
        currencyModel = data;
      });

    } catch (error) {
      print(error);
    }
  }

  @override
  void initState() {
    super.initState();
    _currentItemSelected1 = MyConst.CurrenciesMap[0];
    _currentItemSelected2 = MyConst.CurrenciesMap[0];

    getSuggest();
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
                          initialValue: txt1,
                          keyboardType: TextInputType.number,
                          style: textStyle,
                          onChanged: (s) {
                            calculate(1, s);
                          },
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
                          hint: Text('Select Currency'),
                          items: MyConst.CurrenciesMap.keys.map((e) {
                            return DropdownMenuItem<String>(
                              value: e,
                              child: Text(e),
                            );
                          }).toList(),
                          value: _currentItemSelected1,
                          onChanged: (String s) {
                            _onDropDownItemSelected1(s);
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
                          initialValue: txt2,
                          keyboardType: TextInputType.number,
                          style: textStyle,
                          onChanged: (s) {
                            calculate(2, s);
                          },

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
                          hint: Text('Select Currency'),
                          items: MyConst.CurrenciesMap.keys.map((q) {
                            return DropdownMenuItem<String>(
                              value: q,
                              child: Text(q),
                            );
                          }).toList(),
                          value: _currentItemSelected2,
                          onChanged: (String s) {
                            _onDropDownItemSelected2(s);
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

  void _onDropDownItemSelected1(newValueSelected) {
    String v = MyConst.CurrenciesMap[newValueSelected];
    print("This is it = " + v);

    setState(() {
      this._currentItemSelected1 = newValueSelected;
      this.code1 = v;
    });
  }

  void _onDropDownItemSelected2(newValueSelected) {
    String v = MyConst.CurrenciesMap[newValueSelected];
    print("This is it = " + v);

    setState(() {
      this._currentItemSelected2 = newValueSelected;
      this.code2 = v;
    });
  }

  void _reset() {
    txt1 = "";
    txt2 = "";
    _currentItemSelected1 = MyConst.CurrenciesMap[0];
    _currentItemSelected2 = MyConst.CurrenciesMap[0];
  }

  //TODO refresh data on Dropdown chage

  void calculate(int i, String s) {

    print('caleeeeeeeedddddddddd');

    if (s == null || s.isEmpty) {
      return;
    }

    print('nottttt emptyyyyyyyyy');

    rate1 = getRate(code1);
    rate2 = getRate(code2);

    print('rateeeeesss $rate1 and $rate2');

    if (i == 1) {

      double amount1 = double.parse(s);
      double result = magic(amount1, code1, rate1, rate2);
      setState(() {
        txt1 = result.toString();
      });
    } else {

      double amount2 = double.parse(s);
      double result = magic(amount2, code2, rate2, rate1);
      setState(() {
        txt2 = result.toString();
      });
    }
  }

  double getRate(String s) {
    switch (s) {
      case 'USD':
        return currencyModel.rates.uSD;
      case 'EUR':
        return currencyModel.rates.eUR.toDouble();
      case 'JPY':
        return currencyModel.rates.jPY;
      case 'GBP':
        return currencyModel.rates.gBP;
      case 'AUD':
        return currencyModel.rates.aUD;
      case 'CAD':
        return currencyModel.rates.cAD;
      case 'CH':
        return currencyModel.rates.cHF;
      case 'CNY':
        return currencyModel.rates.cNY;
      case 'HKD':
        return currencyModel.rates.hKD;
      case 'NZD':
        return currencyModel.rates.nZD;
      case 'SEK':
        return currencyModel.rates.sEK;
      case 'KRW':
        return currencyModel.rates.kRW;
      case 'SGD':
        return currencyModel.rates.sGD;
      case 'NOK':
        return currencyModel.rates.nOK;
      case 'MXN':
        return currencyModel.rates.mXN;
      case 'INR':
        return currencyModel.rates.iNR;
      case 'RUB':
        return currencyModel.rates.rUB;
      case 'ZAR':
        return currencyModel.rates.zAR;
      case 'TRY':
        return currencyModel.rates.tRY;
      case 'BRL':
        return currencyModel.rates.bRL;
      case 'TWD':
        return currencyModel.rates.tWD;
      case 'DKK':
        return currencyModel.rates.dKK;
      case 'PLN':
        return currencyModel.rates.pLN;
      case 'THB':
        return currencyModel.rates.tHB;
      case 'IDR':
        return currencyModel.rates.iDR;
      case 'HUF':
        return currencyModel.rates.hUF;
      case 'CZK':
        return currencyModel.rates.cZK;
      case 'ILS':
        return currencyModel.rates.iLS;
      case 'CLP':
        return currencyModel.rates.cLP;
      case 'PHP':
        return currencyModel.rates.pHP;
      case 'AED':
        return currencyModel.rates.aED;
      case 'COP':
        return currencyModel.rates.cOP;
      case 'SAR':
        return currencyModel.rates.sAR;
      case 'MYR':
        return currencyModel.rates.mYR;
      case 'RON':
        return currencyModel.rates.rON;
    }
  }

  double magic(double amount, String code, double from, double to) {
    print('Inside magic $amount, $code, $from, $to');
    if (code != 'USD') {
      amount = (amount / from);
    }

    amount = (amount * to);
    return amount;
  }
}
