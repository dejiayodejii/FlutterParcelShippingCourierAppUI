import 'package:flutter/material.dart';
import 'package:parcel_delivery_app/utilities/widgets/mytextfield.dart';
import 'package:parcel_delivery_app/views/sendParcel/sendparcel_checkout.dart';

class ParcelDeliveryWidget extends StatefulWidget {
  const ParcelDeliveryWidget({Key? key, this.assetSrc, this.headline, this.days}) : super(key: key);
  final String? assetSrc, headline, days;

  @override
  State<ParcelDeliveryWidget> createState() => _ParcelDeliveryWidgetState();
}

class _ParcelDeliveryWidgetState extends State<ParcelDeliveryWidget> {
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
    return Container(
      margin: const EdgeInsets.only(
        bottom: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Theme.of(context).backgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).shadowColor,
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.all(0),
        trailing: const SizedBox.shrink(),
        title: Container(
          margin: const EdgeInsets.only(bottom: 16),
          padding: const EdgeInsets.all(
            16,
          ),
          height: 102,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 99,
                width: 66,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.assetSrc!),
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
                    widget.headline!,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.days!,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ],
              )
            ],
          ),
        ),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 2,
            color: Colors.grey,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recipient Info',
                  style: Theme.of(context).textTheme.headline5,
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
                  height: 15,
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
    );
  }
}
