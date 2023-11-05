import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cart_item_event.dart';
part 'cart_item_state.dart';

class CartItemBloc extends Bloc<CartItemEvent, AddItemState> {
  CartItemBloc() : super(AddItemState(1)) {
    on<CartItemEvent>((event, emit) {
      if (event is AddItemEvent) {
        if (state.num < 30) {
          state.num++;
          emit(AddItemState(state.num));
        }
      }
      if (event is RemoveItemEvent) {
        if (state.num > 1) {
          state.num--;
          emit(AddItemState(state.num));
        }
      }
    });
  }
}
