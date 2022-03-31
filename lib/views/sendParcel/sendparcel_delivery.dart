import 'package:flutter/material.dart';
import 'package:parcel_delivery_app/utilities/widgets/parcel_delivery_widget.dart';

class SendParcelDeliveryScreen extends StatefulWidget {
  const SendParcelDeliveryScreen({Key? key}) : super(key: key);

  @override
  State<SendParcelDeliveryScreen> createState() =>
      _SendParcelDeliveryScreenState();
}

class _SendParcelDeliveryScreenState extends State<SendParcelDeliveryScreen> {
  FocusNode? nameFocusNode;
  FocusNode? emailFocusNode;
  FocusNode? addressFocusNode;
  FocusNode? phoneNumberFocusNode;

  TextEditingController? nameController;
  TextEditingController? emailController;
  TextEditingController? addressController;
  TextEditingController? phoneNumberController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              Text(
                'Send Parcel',
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Delivery method',
                style: Theme.of(context).textTheme.headline3,
              ),
              const SizedBox(
                height: 15,
              ),
              const ParcelDeliveryWidget(
                assetSrc: 'assets/images/img_door_to_parcel.png',
                headline: 'From door to door',
                days: '1 - 2 days',
              ),
              const ParcelDeliveryWidget(
                assetSrc: 'assets/images/img_door_to_door.png',
                headline: 'From door to parcel center',
                days: '1 - 2 days',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
