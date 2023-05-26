import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfertaydemandaRecord extends FirestoreRecord {
  OfertaydemandaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  // "abogado" field.
  DocumentReference? _abogado;
  DocumentReference? get abogado => _abogado;
  bool hasAbogado() => _abogado != null;

  // "montoactual" field.
  int? _montoactual;
  int get montoactual => _montoactual ?? 0;
  bool hasMontoactual() => _montoactual != null;

  // "montosolicitado" field.
  int? _montosolicitado;
  int get montosolicitado => _montosolicitado ?? 0;
  bool hasMontosolicitado() => _montosolicitado != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _empresa = snapshotData['empresa'] as DocumentReference?;
    _abogado = snapshotData['abogado'] as DocumentReference?;
    _montoactual = snapshotData['montoactual'] as int?;
    _montosolicitado = snapshotData['montosolicitado'] as int?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('ofertaydemanda')
          : FirebaseFirestore.instance.collectionGroup('ofertaydemanda');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('ofertaydemanda').doc();

  static Stream<OfertaydemandaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfertaydemandaRecord.fromSnapshot(s));

  static Future<OfertaydemandaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OfertaydemandaRecord.fromSnapshot(s));

  static OfertaydemandaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OfertaydemandaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfertaydemandaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfertaydemandaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfertaydemandaRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createOfertaydemandaRecordData({
  DocumentReference? empresa,
  DocumentReference? abogado,
  int? montoactual,
  int? montosolicitado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'empresa': empresa,
      'abogado': abogado,
      'montoactual': montoactual,
      'montosolicitado': montosolicitado,
    }.withoutNulls,
  );

  return firestoreData;
}
