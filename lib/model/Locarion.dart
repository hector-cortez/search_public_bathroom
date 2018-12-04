import'package:cloud_firestore/cloud_firestore.dart';

class Location {
  final String address;
  final int distance;
  final double latitude;
  final double longitude;
  final bool exist;
  final bool free;
  final int noteAboutSite;
  final String kind; // [Restaurante, Publico, Centro Comunal, Estación de Servicio, Bar]
  final bool valid;
  final DocumentReference reference;

  Location.fromMap(Map<String, dynamic> map, {this.reference})
    : assert(map['address'] != null),
      assert(map['distance'] != null),
      assert(map['latitude'] != null),
      assert(map['longitude'] != null),
      assert(map['exist'] != null),
      assert(map['free'] != null),
      assert(map['noteAboutSite'] != null),
      assert(map['kind'] != null),
      assert(map['valid'] != null),
      address = map['address'],
      distance = map['distance'],
      latitude = map['latitude'],
      longitude = map['longitude'],
      exist = map['exist'],
      free = map['free'],
      noteAboutSite = map['noteAboutSite'],
      kind = map['kind'],
      valid = map['valid'];

  Location.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

}