part of 'person_information_bloc.dart';

@immutable
sealed class PersonInformationEvent {}

class AddToPersonInformationListEvent extends PersonInformationEvent {
  final String name;
  final String email;
  
  AddToPersonInformationListEvent({required this.name,required this.email});
}

class ClearPersonInformationListEvent extends PersonInformationEvent {
final List<ContactInfo> list;

 ClearPersonInformationListEvent({required this.list}); 
}
