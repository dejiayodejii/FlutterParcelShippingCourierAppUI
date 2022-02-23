// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:parcel_delivery_app/views/my_parcel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<Widget> pages = [
    const MyParcel(),
    const Text('Hello'),
    const Text('Helllll'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedLabelStyle: Theme.of(context).textTheme.headline5,
        unselectedLabelStyle: Theme.of(context).textTheme.headline5,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: _selectedIndex == 0
                  ? SvgPicture.asset('assets/images/icon_my_parcels.svg')
                  : SvgPicture.asset('assets/images/icon_my_parcels_grey.svg'),
              label: 'My parcels'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 1
                  ? SvgPicture.asset('assets/images/icon_send_parcel.svg')
                  : SvgPicture.asset('assets/images/icon_send_parcel_grey.svg'),
              label: 'Send parcel'),
          BottomNavigationBarItem(
              icon: _selectedIndex == 2
                  ? SvgPicture.asset('assets/images/icon_parcel_center.svg')
                  : SvgPicture.asset(
                      'assets/images/icon_parcel_center_grey.svg'),
              label: 'Parcel center'),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Theme.of(context).unselectedWidgetColor,
        selectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
