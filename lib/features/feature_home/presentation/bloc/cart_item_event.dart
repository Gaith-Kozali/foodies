part of 'cart_item_bloc.dart';

@immutable
abstract class CartItemEvent {}

class AddItemEvent extends CartItemEvent {}

class RemoveItemEvent extends CartItemEvent {}
