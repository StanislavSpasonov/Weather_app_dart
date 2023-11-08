import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class CitySearchPage extends StatefulWidget {
  const CitySearchPage({super.key});

  @override
  State<CitySearchPage> createState() => _CitySearchPageState();
}

var inputCity = '';
var listCity = <String>[];
var listData = <List<String>>[]; //ирндесб название города

class _CitySearchPageState extends State<CitySearchPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue,
        body: Column(
          children: [
            TextField(
              onChanged: (newInput) async {
                inputCity = newInput;
                print(inputCity);
                if (inputCity.length > 2) {
                  //new request
                  final url = Uri.http('dataservice.accuweather.com',
                      'locations/v1/cities/autocomplete', {
                    'apikey': 'rYV6RIu503f0dI4vSwuX8QfoygoNZrYq',
                    'q': inputCity
                  });
                  try {
                    var response = await http.get(url);
                    print('get data');
                    print(response.statusCode);
                    if (response.statusCode == 200) {
                      final List jsonArray = convert.jsonDecode(response.body);
                      jsonArray.forEach((element) {
                        listData
                            .add([element['LocalizedName'], element['Key']]);
                      });
                      print(jsonArray);
                      print(listData);
                    }
                  } catch (error) {
                    print(error);
                  }
                  setState(() {});
                }
              },
            ),
            ...listData.map((e) => Text('${e[0]} ${e[1]}')).toList(),
          ],
        ),
      ),
    );
  }
}

//http://dataservice.accuweather.com/locations/v1/cities/autocomplete?
// apikey=rYV6RIu503f0dI4vSwuX8QfoygoNZrYq&
// q=Lon
