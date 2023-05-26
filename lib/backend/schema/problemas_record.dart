import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProblemasRecord extends FirestoreRecord {
  ProblemasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "empresa" field.
  DocumentReference? _empresa;
  DocumentReference? get empresa => _empresa;
  bool hasEmpresa() => _empresa != null;

  // "asunto" field.
  String? _asunto;
  String get asunto => _asunto ?? '';
  bool hasAsunto() => _asunto != null;

  // "problema" field.
  String? _problema;
  String get problema => _problema ?? '';
  bool hasProblema() => _problema != null;

  // "mostrar" field.
  bool? _mostrar;
  bool get mostrar => _mostrar ?? false;
  bool hasMostrar() => _mostrar != null;

  // "abogado" field.
  DocumentReference? _abogado;
  DocumentReference? get abogado => _abogado;
  bool hasAbogado() => _abogado != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "categoria" field.
  DocumentReference? _categoria;
  DocumentReference? get categoria => _categoria;
  bool hasCategoria() => _categoria != null;

  // "chat" field.
  DocumentReference? _chat;
  DocumentReference? get chat => _chat;
  bool hasChat() => _chat != null;

  // "presupuesto" field.
  int? _presupuesto;
  int get presupuesto => _presupuesto ?? 0;
  bool hasPresupuesto() => _presupuesto != null;

  // "notificacion" field.
  bool? _notificacion;
  bool get notificacion => _notificacion ?? false;
  bool hasNotificacion() => _notificacion != null;

  // "abogdisp" field.
  List<DocumentReference>? _abogdisp;
  List<DocumentReference> get abogdisp => _abogdisp ?? const [];
  bool hasAbogdisp() => _abogdisp != null;

  // "abogadoacept" field.
  List<DocumentReference>? _abogadoacept;
  List<DocumentReference> get abogadoacept => _abogadoacept ?? const [];
  bool hasAbogadoacept() => _abogadoacept != null;

  // "abogadonego" field.
  List<DocumentReference>? _abogadonego;
  List<DocumentReference> get abogadonego => _abogadonego ?? const [];
  bool hasAbogadonego() => _abogadonego != null;

  void _initializeFields() {
    _empresa = snapshotData['empresa'] as DocumentReference?;
    _asunto = snapshotData['asunto'] as String?;
    _problema = snapshotData['problema'] as String?;
    _mostrar = snapshotData['mostrar'] as bool?;
    _abogado = snapshotData['abogado'] as DocumentReference?;
    _estado = snapshotData['estado'] as String?;
    _categoria = snapshotData['categoria'] as DocumentReference?;
    _chat = snapshotData['chat'] as DocumentReference?;
    _presupuesto = snapshotData['presupuesto'] as int?;
    _notificacion = snapshotData['notificacion'] as bool?;
    _abogdisp = getDataList(snapshotData['abogdisp']);
    _abogadoacept = getDataList(snapshotData['abogadoacept']);
    _abogadonego = getDataList(snapshotData['abogadonego']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('problemas');

  static Stream<ProblemasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProblemasRecord.fromSnapshot(s));

  static Future<ProblemasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProblemasRecord.fromSnapshot(s));

  static ProblemasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProblemasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProblemasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProblemasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProblemasRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createProblemasRecordData({
  DocumentReference? empresa,
  String? asunto,
  String? problema,
  bool? mostrar,
  DocumentReference? abogado,
  String? estado,
  DocumentReference? categoria,
  DocumentReference? chat,
  int? presupuesto,
  bool? notificacion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'empresa': empresa,
      'asunto': asunto,
      'problema': problema,
      'mostrar': mostrar,
      'abogado': abogado,
      'estado': estado,
      'categoria': categoria,
      'chat': chat,
      'presupuesto': presupuesto,
      'notificacion': notificacion,
    }.withoutNulls,
  );

  return firestoreData;
}
