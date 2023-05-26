import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "files" field.
  List<String>? _files;
  List<String> get files => _files ?? const [];
  bool hasFiles() => _files != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "RUT" field.
  String? _rut;
  String get rut => _rut ?? '';
  bool hasRut() => _rut != null;

  // "verificado" field.
  bool? _verificado;
  bool get verificado => _verificado ?? false;
  bool hasVerificado() => _verificado != null;

  // "abogado" field.
  bool? _abogado;
  bool get abogado => _abogado ?? false;
  bool hasAbogado() => _abogado != null;

  // "empresa" field.
  bool? _empresa;
  bool get empresa => _empresa ?? false;
  bool hasEmpresa() => _empresa != null;

  // "pagos" field.
  List<PagosStruct>? _pagos;
  List<PagosStruct> get pagos => _pagos ?? const [];
  bool hasPagos() => _pagos != null;

  // "categorias" field.
  List<DocumentReference>? _categorias;
  List<DocumentReference> get categorias => _categorias ?? const [];
  bool hasCategorias() => _categorias != null;

  // "casos" field.
  List<DocumentReference>? _casos;
  List<DocumentReference> get casos => _casos ?? const [];
  bool hasCasos() => _casos != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "chatusers" field.
  List<DocumentReference>? _chatusers;
  List<DocumentReference> get chatusers => _chatusers ?? const [];
  bool hasChatusers() => _chatusers != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _apellido = snapshotData['apellido'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _files = getDataList(snapshotData['files']);
    _address = snapshotData['address'] as String?;
    _rut = snapshotData['RUT'] as String?;
    _verificado = snapshotData['verificado'] as bool?;
    _abogado = snapshotData['abogado'] as bool?;
    _empresa = snapshotData['empresa'] as bool?;
    _pagos = getStructList(
      snapshotData['pagos'],
      PagosStruct.fromMap,
    );
    _categorias = getDataList(snapshotData['categorias']);
    _casos = getDataList(snapshotData['casos']);
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _chatusers = getDataList(snapshotData['chatusers']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? nombre,
  String? apellido,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? address,
  String? rut,
  bool? verificado,
  bool? abogado,
  bool? empresa,
  String? displayName,
  String? photoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'nombre': nombre,
      'apellido': apellido,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'address': address,
      'RUT': rut,
      'verificado': verificado,
      'abogado': abogado,
      'empresa': empresa,
      'display_name': displayName,
      'photo_url': photoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}
