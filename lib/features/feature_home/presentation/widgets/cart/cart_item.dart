import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodies/features/feature_home/presentation/bloc/cart_item_bloc.dart';

class CartItem extends StatelessWidget {
  CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CartItemBloc(),
        child: BlocBuilder<CartItemBloc, AddItemState>(
          builder: (context, state) {
            return SizedBox(
              width: 396.w,
              height: 118.h,
              child: Row(
                children: [
                  Image.asset("asset/cart_items/image 2.png",
                      width: 93.w, height: 78.h),
                  SizedBox(width: 40.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Potatoes With Mozirlla',
                        style: TextStyle(
                          color: Color(0xFFF5A31F),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'size : 7.60 fl oz/225ml ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6000000238418579),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            '\$19.98',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            width: 64.w,
                          ),
                          GestureDetector(
                              onTap: () {
                                BlocProvider.of<CartItemBloc>(context)
                                    .add(AddItemEvent());
                                print(
                                    "in the add num screen button ${state.num}");
                              },
                              child: const Icon(
                                size: 20,
                                Icons.add_circle_outline,
                                color: Colors.black,
                              )),
                          SizedBox(
                            width: 9.w,
                          ),
                          GestureDetector(
                              onTap: () {
                                BlocProvider.of<CartItemBloc>(context)
                                    .add(RemoveItemEvent());
                                print(
                                    "in the remove num screen button ${state.num}");
                              },
                              child: const Icon(
                                size: 20,
                                Icons.remove_circle_outline,
                                color: Colors.black,
                              )),
                          SizedBox(
                            width: 9.w,
                          ),
                          Text(
                            state.num.toString(),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ));
  }
}
