import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ParcelCenterScreen extends StatelessWidget {
  const ParcelCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Parcel Centers',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 250,
                color: Colors.red,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/Map.png',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 174,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: const Offset(0, 5),
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'NY094',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          'Available 24/7',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '985 Meadow St.',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Staten Island, NY 10306',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Fully Occupied',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        SizedBox(
                          height: 5,
                          child: LinearProgressIndicator(
                            value: 1,
                            color:
                                Theme.of(context).appBarTheme.backgroundColor,
                            backgroundColor: const Color(0xFFF8F8F8),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                height: 174,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Theme.of(context).shadowColor,
                        blurRadius: 10,
                        spreadRadius: 0,
                        offset: const Offset(0, 5),
                      )
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'NY094',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          'Available 24/7',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '54 West Adams Court',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          'Rego Park, NY 11374',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lots of empty space',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        SizedBox(
                          height: 5,
                          child: LinearProgressIndicator(
                            value: 0.2,
                            color:
                                Theme.of(context).appBarTheme.backgroundColor,
                            backgroundColor: const Color(0xFFF8F8F8),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
