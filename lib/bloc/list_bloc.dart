import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'list_event.dart';
part 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  ListBloc() : super(ListInitial()) {
    on<LoadListEvent>((event, emit) async {
      emit(LoadingState());

      try {
        final items = await _loadDataFromSharedPreferences();
        emit(SuccessState(items));
      } catch (e) {
        emit(ErrorState('Failed to load data: $e'));
      }
    });

    on<AddItemEvent>((event, emit) async {
      if (state is SuccessState) {
        final currentState = state as SuccessState;
        final newItem = '${currentState.items.length + 1} - Name: ${event.name}, Email: ${event.email}';
        final updatedItems = List<String>.from(currentState.items)..add(newItem);
        emit(SuccessState(updatedItems));
        await _saveDataToSharedPreferences(updatedItems);
      }
    });

    on<ClearListEvent>((event, emit) async {
      emit(LoadingState());
      await _clearDataInSharedPreferences();
      emit(SuccessState([]));
    });
  }

  Future<List<String>> _loadDataFromSharedPreferences() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getStringList('items') ?? [];
  }

  Future<void> _saveDataToSharedPreferences(List<String> items) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setStringList('items', items);
  }

  Future<void> _clearDataInSharedPreferences() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.remove('items');
  }
}
