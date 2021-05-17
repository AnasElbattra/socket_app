import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<City> _cities = City.getCity();
  List<DropdownMenuItem<City>> _dropdownMenuItems;
  City _selectedCity;

  @override
  void initState() {
    _dropdownMenuItems = buildDropdownMenuItems(_cities);
    _selectedCity = _dropdownMenuItems[0].value;
    super.initState();
  }

  onChangeDropdownItem(City selectedCompany) {
    setState(() {
      _selectedCity = selectedCompany;
    });
  }

  List<DropdownMenuItem<City>> buildDropdownMenuItems(List companies) {
    List<DropdownMenuItem<City>> items = List();
    for (City city in _cities) {
      items.add(
        DropdownMenuItem(
          value: city,
          child: Text(city.cityName),
        ),
      );
    }
    return items;
  }

  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: HexColor('#424242'),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 59),
          height: mediaQuery.size.height,
          width: mediaQuery.size.width,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Stack(children: [
                  Positioned(
                    left: 20,
                    top: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.clear_rounded,
                        color: HexColor('#424242'),
                      ),
                      onPressed: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 37),
                    child: Center(
                      child: Text(
                        'تصفية البحث',
                        style: TextStyle(
                          fontSize: 35,
                          color: HexColor('#616161'),
                        ),
                      ),
                    ),
                  ),
                ]),

                Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DropdownButton(
                        value: _selectedCity,
                        items: _dropdownMenuItems,
                        onChanged: onChangeDropdownItem,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}

class City {
  int id;

  String cityName;

  City(this.id, this.cityName);

  static List<City> getCity() {
    return <City>[
      City(1, 'الدوحة '),
      City(2, 'مسقط '),
    ];
  }
}
