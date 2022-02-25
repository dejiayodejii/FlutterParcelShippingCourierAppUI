import 'package:flutter/material.dart';
import 'package:parcel_delivery_app/views/sendParcel/sendparcel_delivery.dart';

class ParcelSizeWidget extends StatelessWidget {
  const ParcelSizeWidget({
    Key? key,
    @required this.size,
    @required this.dimension,
    @required this.description,
    @required this.sizeImage,
  }) : super(key: key);

  final String? size, dimension, description, sizeImage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const SendParcelDeliveryScreen()));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 15),
        padding: const EdgeInsets.only(top: 15, bottom: 20, left: 15, right: 15),
        height: 115,
        decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  blurRadius:10,
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(sizeImage!),
                ),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  size!,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  dimension!,
                  style: Theme.of(context).textTheme.headline5,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  description!,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
