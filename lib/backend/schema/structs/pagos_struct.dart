// ignore_for_file: unnecessary_getters_setters
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagosStruct extends FFFirebaseStruct {
  PagosStruct({
    DateTime? fecha,
    String? id,
    double? cantidad,
    String? estado,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _fecha = fecha,
        _id = id,
        _cantidad = cantidad,
        _estado = estado,
        super(firestoreUtilData);

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  set fecha(DateTime? val) => _fecha = val;
  bool hasFecha() => _fecha != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "cantidad" field.
  double? _cantidad;
  double get cantidad => _cantidad ?? 0.0;
  set cantidad(double? val) => _cantidad = val;
  void incrementCantidad(double amount) => _cantidad = cantidad + amount;
  bool hasCantidad() => _cantidad != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;
  bool hasEstado() => _estado != null;

  static PagosStruct fromMap(Map<String, dynamic> data) => PagosStruct(
        fecha: data['fecha'] as DateTime?,
        id: data['id'] as String?,
        cantidad: castToType<double>(data['cantidad']),
        estado: data['estado'] as String?,
      );

  static PagosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PagosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'fecha': _fecha,
        'id': _id,
        'cantidad': _cantidad,
        'estado': _estado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fecha': serializeParam(
          _fecha,
          ParamType.DateTime,
        ),
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'cantidad': serializeParam(
          _cantidad,
          ParamType.double,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
      }.withoutNulls;

  static PagosStruct fromSerializableMap(Map<String, dynamic> data) =>
      PagosStruct(
        fecha: deserializeParam(
          data['fecha'],
          ParamType.DateTime,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        cantidad: deserializeParam(
          data['cantidad'],
          ParamType.double,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PagosStruct(${toMap()})';
}

PagosStruct createPagosStruct({
  DateTime? fecha,
  String? id,
  double? cantidad,
  String? estado,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PagosStruct(
      fecha: fecha,
      id: id,
      cantidad: cantidad,
      estado: estado,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PagosStruct? updatePagosStruct(
  PagosStruct? pagos, {
  bool clearUnsetFields = true,
}) =>
    pagos
      ?..firestoreUtilData =
          FirestoreUtilData(clearUnsetFields: clearUnsetFields);

void addPagosStructData(
  Map<String, dynamic> firestoreData,
  PagosStruct? pagos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pagos == null) {
    return;
  }
  if (pagos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  if (!forFieldValue && pagos.firestoreUtilData.clearUnsetFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pagosData = getPagosFirestoreData(pagos, forFieldValue);
  final nestedData = pagosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final create = pagos.firestoreUtilData.create;
  firestoreData.addAll(create ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPagosFirestoreData(
  PagosStruct? pagos, [
  bool forFieldValue = false,
]) {
  if (pagos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pagos.toMap());

  // Add any Firestore field values
  pagos.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPagosListFirestoreData(
  List<PagosStruct>? pagoss,
) =>
    pagoss?.map((e) => getPagosFirestoreData(e, true)).toList() ?? [];
