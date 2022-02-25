import 'package:flutter/material.dart';
import 'package:parcel_delivery_app/views/sendParcel/sendparcel_checkout.dart';
import 'package:parcel_delivery_app/views/widgets/mytextfield.dart';
import 'package:parcel_delivery_app/views/widgets/parcel_size_widget.dart';

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
              height: 15,
            ),
            Text(
              'Delivery method',
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.only(
                  top: 15, bottom: 20, left: 15, right: 15),
              height: 100,
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                        spreadRadius: 0,
                        color: Theme.of(context).shadowColor)
                  ]),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 99,
                    width: 66,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('assets/images/img_door_to_parcel.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'From door to parcel center',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '1 - 2 days',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              //margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.only(
                  top: 15, bottom: 20, left: 15, right: 15),
              height: 115,
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                        spreadRadius: 0,
                        color: Theme.of(context).shadowColor)
                  ]),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 99,
                    width: 66,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/img_door_to_door.png'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'From door to parcel center',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        '1 - 2 days',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 2,
              color: Colors.grey,
              width: double.infinity,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10,
                        offset: const Offset(0, 0),
                        spreadRadius: 0,
                        color: Theme.of(context).shadowColor)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Recipient Info',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    label: 'Name',
                    focusNode: nameFocusNode,
                    controller: nameController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    label: 'Email',
                    focusNode: emailFocusNode,
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    label: 'Phone Number',
                    focusNode: phoneNumberFocusNode,
                    controller: phoneNumberController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextField(
                    label: 'Address',
                    focusNode: addressFocusNode,
                    controller: addressController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SendParcelCheckout()));
                      },
                      child: Text(
                        'Checkout',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}

