import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:my_contact_list/bloc/list_bloc.dart';
import 'package:my_contact_list/data%20layer/main_data_layer.dart';
import 'package:my_contact_list/helpers/extensions/screen_helper.dart';
import 'package:my_contact_list/helpers/extensions/snackbar_helper.dart';
import 'package:my_contact_list/widgets/contact_card.dart';
import 'package:my_contact_list/widgets/no_contacts_message.dart';

// ignore: must_be_immutable
class ListSection extends StatelessWidget {
  const ListSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: context.getHeight() * .4,
        child: BlocConsumer<ListBloc, ListState>(
          listener: (context, state) {
            if (state is AddState) {
              context.showSnackBar(
                  "${state.contact.name} has been added!", context);
            }
            if (state is ClearState) {
              context.showSnackBar("List Cleared", context);
            }

            if (state is ErrorState) {
              context.showSnackBar(state.message, context);
            }
          },
          builder: (context, state) {
            if (state is AddState) {
              GetIt.I.get<MainData>().addContact(state.contact);
              return ListView(
                children: List.generate(GetIt.I.get<MainData>().contacts.length,
                    (index) {
                  return ContactCard(
                      name: GetIt.I.get<MainData>().contacts[index].name,
                      email: GetIt.I.get<MainData>().contacts[index].email);
                }),
              );
            } else if (state is ClearState) {
              GetIt.I.get<MainData>().clearContactList();
              return const NoContactsMessage();
            } else if (state is ListInitial) {
              return (GetIt.I.get<MainData>().contacts.isEmpty)
                  ? const NoContactsMessage()
                  : ListView(
                      children: List.generate(
                          GetIt.I.get<MainData>().contacts.length, (index) {
                        return ContactCard(
                            name: GetIt.I.get<MainData>().contacts[index].name,
                            email:
                                GetIt.I.get<MainData>().contacts[index].email);
                      }),
                    );
            } else if (state is ErrorState) {
              return (GetIt.I.get<MainData>().contacts.isEmpty)
                  ? const NoContactsMessage()
                  : ListView(
                      children: List.generate(
                          GetIt.I.get<MainData>().contacts.length, (index) {
                        return ContactCard(
                            name: GetIt.I.get<MainData>().contacts[index].name,
                            email:
                                GetIt.I.get<MainData>().contacts[index].email);
                      }),
                    );
            } else {
              return (GetIt.I.get<MainData>().contacts.isEmpty)
                  ? const NoContactsMessage()
                  : ListView(
                      children: List.generate(
                          GetIt.I.get<MainData>().contacts.length, (index) {
                        return ContactCard(
                            name: GetIt.I.get<MainData>().contacts[index].name,
                            email:
                                GetIt.I.get<MainData>().contacts[index].email);
                      }),
                    );
            }
          },
        ));
  }
}
