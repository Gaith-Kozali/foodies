import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentInfoWidget extends StatelessWidget {
  const PaymentInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 373.w,
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ListTile(
              dense: true,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              title: const Text(
                'subtotal',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: RichText(
                text: TextSpan(
                    text: "\$45.99",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: "\tUSD",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.3),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ]),
              )),
          ListTile(
              dense: true,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              title: const Text(
                'shipping',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: RichText(
                text: TextSpan(
                    text: "\$45.99",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: "\tUSD",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.3),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ]),
              )),
          ListTile(
              dense: true,
              visualDensity: const VisualDensity(vertical: -4),
              contentPadding: const EdgeInsets.symmetric(horizontal: 0),
              title: const Text(
                'chart total',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              trailing: RichText(
                text: TextSpan(
                    text: "\$45.99",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                    children: [
                      TextSpan(
                        text: "\tUSD",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.3),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      )
                    ]),
              )),
        ],
      ),
    );
  }
}
