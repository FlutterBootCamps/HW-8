part of 'person_information_bloc.dart';

@immutable
sealed class PersonInformationState {}

final class PersonInformationInitial extends PersonInformationState {}

final class ChangeList extends PersonInformationState {
late ContactInfo contactInfo;
ChangeList({required ContactInfo contactInfo});}

final class Clear extends PersonInformationState {
Clear({required List<ContactInfo> list});


}

