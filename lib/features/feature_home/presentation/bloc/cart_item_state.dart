part of 'cart_item_bloc.dart';

@immutable
abstract class CartItemState {}

class AddItemState extends CartItemState {
  AddItemState(this.num);
  int num;
}
