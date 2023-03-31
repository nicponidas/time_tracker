import 'package:flutter/material.dart';
import 'package:time_tracker/data/list_of_clients.dart';

class ClientDropDown extends StatefulWidget {
  const ClientDropDown({
    super.key,
  });

  @override
  State<ClientDropDown> createState() => _ClientDropDownState();
}

class _ClientDropDownState extends State<ClientDropDown> {
  var clients = listOfClient.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: clients,
      key: ValueKey(clients),
      onChanged: (value) {
        if (value == null) {
          return;
        }
        setState(() {
          clients = value;
        });
      },
      items: listOfClient
          .map(
            (e) => DropdownMenuItem(
              value: e.id,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(e.name),
              ),
            ),
          )
          .toList(),
    );
  }
}
