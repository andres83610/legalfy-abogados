import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SubcategoriasRecord extends FirestoreRecord {
  SubcategoriasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "precio" field.
  int? _precio;
  int get precio => _precio ?? 0;
  bool hasPrecio() => _precio != null;

  // "problemas" field.
  List<DocumentReference>? _problemas;
  List<DocumentReference> get problemas => _problemas ?? const [];
  bool hasProblemas() => _problemas != null;

  // "abogados" field.
  List<DocumentReference>? _abogados;
  List<DocumentReference> get abogados => _abogados ?? const [];
  bool hasAbogados() => _abogados != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _precio = snapshotData['precio'] as int?;
    _problemas = getDataList(snapshotData['problemas']);
    _abogados = getDataList(snapshotData['abogados']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('subcategorias')
          : FirebaseFirestore.instance.collectionGroup('subcategorias');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('subcategorias').doc();

  static Stream<SubcategoriasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SubcategoriasRecord.fromSnapshot(s));

  static Future<SubcategoriasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SubcategoriasRecord.fromSnapshot(s));

  static SubcategoriasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SubcategoriasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SubcategoriasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SubcategoriasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SubcategoriasRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createSubcategoriasRecordData({
  String? nombre,
  String? imagen,
  int? precio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'imagen': imagen,
      'precio': precio,
    }.withoutNulls,
  );

  return firestoreData;
}
