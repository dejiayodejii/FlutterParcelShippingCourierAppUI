import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyParcel extends StatelessWidget {
  const MyParcel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 120,
            floating: true,
            snap: false,
            pinned: true,
            title: Text(
              'Track Parcel',
              style: Theme.of(context).textTheme.headline1,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right:20.0),
                child: CircleAvatar(
                    child: ClipOval(
                      child: Image.network(
                          'https://miro.medium.com/fit/c/1360/1360/2*NDZrabY3uLA-1MM3K1MexQ.png'),
                    ),
                  ),
              ),
            ],
            expandedHeight: 406,
            shadowColor: Colors.transparent,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding:
                    const EdgeInsets.only(bottom: 60.0, left: 20, right: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Text(
                      'Enter parcel number or scan QR code',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.white,
                            ),
                            height: 50,
                            child: const TextField(
                              decoration: InputDecoration(
                                hintText: 'tracking number',
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.white,
                          ),
                          height: 50,
                          width: 50,
                          child: SvgPicture.asset(
                            'assets/images/icon_qrcode.svg',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Track parcel',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.only(
              top: 32,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'My parcels',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
              ),
            ]),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
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
                            '00359007738060313786',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Container(
                            height: 31,
                            width: 78,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/1000px-Amazon_logo.svg.png'),
                              ),
                            ),
                          ),
                        ],
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
                              color:
                                  Theme.of(context).appBarTheme.backgroundColor,
                              backgroundColor: const Color(0xFFF8F8F8),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 55,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text('Details',
                                    style:
                                        Theme.of(context).textTheme.bodyText2),
                                SvgPicture.asset(
                                    'assets/images/icon_details.svg'),
                              ],
                            ),
                            Container(
                              height: 1,
                              color: Colors.black,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
