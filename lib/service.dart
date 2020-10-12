import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

class Permissions {

  Future<bool> getContactsPermission() async {
    final PermissionStatus permission = await Permission.contacts.status;
    if (permission != PermissionStatus.granted &&
        permission != PermissionStatus.denied) {
      final Map<Permission, PermissionStatus> permissionStatus =
          await [Permission.contacts].request();
      return permissionStatus[Permission.contacts] ==
          PermissionStatus.granted;
    } else {
      return permission == PermissionStatus.granted;
    }
  }

}

class IOwnerServices {
  getPhoneContacts() {}
}

class OwnerServices implements IOwnerServices {

  Permissions _permission = new Permissions();

  // method to get contacts from the user's device
  @override
  Future<List> getPhoneContacts() async {
    var contacts = [];
    final bool isPermitted =
        await _permission.getContactsPermission();
    print(isPermitted);
    if (isPermitted) {
      final Iterable<Contact> rawContacts = await ContactsService.getContacts();
      return rawContacts.toList();
    }
    return contacts;
  }

}
