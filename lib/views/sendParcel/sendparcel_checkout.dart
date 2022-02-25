import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SendParcelCheckout extends StatelessWidget {
  const SendParcelCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Checkout',
                    style: Theme.of(context).textTheme.headline1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 210,
                        color: Colors.red,
                        width: double.infinity,
                        child: Image.asset(
                          'assets/images/img_card_background.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Positioned(
                        left: 20,
                        bottom: 100,
                        child: Text(
                          '****      ****       ****       7479',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.copyWith(fontSize: 20),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        right: 20,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ayanbunmi Ayodeji',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            Text(
                              '8/23',
                              style: Theme.of(context).textTheme.bodyText1,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Theme.of(context).shadowColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Summary',
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        SizedBox(
                          width: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text('  Edit',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline4),
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
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      //color: Colors.red,
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Recipient',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          Text(
                            'Ayanbunmi Ayodeji',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Text(
                            'dejiayodeji@gmail.com',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Text(
                            '08146852681',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          Text(
                            '11 Rosemount Meadows, Glasgow, G71 8EL',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //color: Colors.blue,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Parcel Size',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Text(
                            'Medium',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                    Container(
                     // color: Colors.green,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Delivery Method',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          Text(
                            'From door to door',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          r'Pay $12',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
