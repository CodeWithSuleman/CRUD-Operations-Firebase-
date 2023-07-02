import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_practice/user.dart';

final FirebaseFirestore _firebaseFireStore = FirebaseFirestore.instance;
final CollectionReference<Map<String, dynamic>> _collectionReference =
    _firebaseFireStore.collection('user');

class FirebaseCRUD {
  void saveUser(User userModel) async {
    await _collectionReference.doc('2').set(userModel.toMap());
  }

  void deleteUser() async {
    await _collectionReference.doc('x76bzMq5sZxbbYw8kwyu').delete();
  }

  void updateUser(User userModel) async {
    await _collectionReference.doc('2').update(userModel.toMap());
  }

  void readUser() async {
    await _collectionReference.doc('2').get();
  }
}
