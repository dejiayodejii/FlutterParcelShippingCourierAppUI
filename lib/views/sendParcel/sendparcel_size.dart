import 'package:flutter/material.dart';
import 'package:parcel_delivery_app/utilities/widgets/parcel_size_widget.dart';

class SendParcelSizeScreen extends StatelessWidget {
  const SendParcelSizeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            Text(
              'Send Parcel',
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Parcel Size',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 15,
            ),
            const ParcelSizeWidget(
                size: 'Small',
                dimension: 'Max. 25 kg, 19 x 38 x 64 cm',
                description: 'Fits in an envelope',
                sizeImage: 'assets/images/img_parcel_size_small.png'),
            const ParcelSizeWidget(
                size: 'Medium',
                dimension: 'Max. 25 kg, 19 x 38 x 64 cm',
                description: 'Fits in an shoe box',
                sizeImage: 'assets/images/img_parcel_size_medium.png'),
            const ParcelSizeWidget(
                size: 'Large',
                dimension: 'Max. 25 kg, 19 x 38 x 64 cm',
                description: 'Fits in an cardboard box',
                sizeImage: 'assets/images/img_parcel_size_large.png'),
            const ParcelSizeWidget(
                size: 'Custom',
                dimension: 'Max: 30kg or 300cm',
                description: 'Fits in an skid',
                sizeImage: 'assets/images/img_parcel_size_custom.png'),
          ],
        ),
      )),
    );
  }
}
