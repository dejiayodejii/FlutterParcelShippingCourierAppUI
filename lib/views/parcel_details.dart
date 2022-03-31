import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ParcelDetails extends StatelessWidget {
  const ParcelDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Details',
                  style: Theme.of(context).textTheme.headline2,
                ),
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: const Icon(Icons.cancel),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '00359007738060313786',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: Container(
                    height: 31,
                    width: 60,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/1000px-Amazon_logo.svg.png'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'In transit',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  'Last update: 3 hours ago',
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 5,
                  child: LinearProgressIndicator(
                    value: 0.8,
                    color: Theme.of(context).appBarTheme.backgroundColor,
                    backgroundColor: const Color(0xFFF8F8F8),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              height: 250,
              color: Colors.red,
              width: double.infinity,
              child: Image.asset(
                'assets/images/Map2.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.amber,
                          radius: 23,
                        ),
                        Container(
                          width: 2,
                          height: 50,
                          color: Colors.amber,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Parcel in transit',
                            style: Theme.of(context).textTheme.headline4,
                          ),
                          Text(
                            '21.08.2020 - 16:10',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
