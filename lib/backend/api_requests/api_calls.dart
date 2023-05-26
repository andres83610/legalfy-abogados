import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CrearPagoCall {
  static Future<ApiCallResponse> call({
    String? accessToken =
        'TEST-8760176089935419-020111-7626723f767998d5bd0d2f43af3f6572-1299800587',
    double? transactionAmount,
    String? tokenTarjeta = '',
    String? firstName = '',
    String? lastName = '',
    String? email = '',
    String? identificationType = '',
    String? identificationNumber = '',
    String? zipCode = '',
    String? streetName = '',
    String? streetNumber = '',
    String? neighborhood = '',
    String? city = '',
    String? federalUnit = '',
    String? description = '',
  }) {
    final body = '''
{
  "transaction_amount": ${transactionAmount},
  "token": "${tokenTarjeta}",
  "installments": 1,
  "payer": {
    "first_name": "${firstName}",
    "last_name": "${lastName}",
    "email": "${email}",
    "type": "customer",
    "identification": {
      "type": "${identificationType}",
      "number": "${identificationNumber}"
    },
    "address": {
      "zip_code": "${zipCode}",
      "street_name": "${streetName}",
      "street_number": "${streetNumber}",
      "neighborhood": "${neighborhood}",
      "city": "${city}",
      "federal_unit": "${federalUnit}"
    }
  },
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crear pago',
      apiUrl: 'https://api.mercadopago.com/v1/payments',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic iDPago(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic fechaCreacion(dynamic response) => getJsonField(
        response,
        r'''$.date_created''',
      );
  static dynamic fechaAprovacion(dynamic response) => getJsonField(
        response,
        r'''$.date_approved''',
      );
  static dynamic tipoOperacion(dynamic response) => getJsonField(
        response,
        r'''$.operation_type''',
      );
  static dynamic tipoTarjeta(dynamic response) => getJsonField(
        response,
        r'''$.payment_method_id''',
      );
  static dynamic tipoPago(dynamic response) => getJsonField(
        response,
        r'''$.payment_type_id''',
      );
  static dynamic estado(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  static dynamic moneda(dynamic response) => getJsonField(
        response,
        r'''$.currency_id''',
      );
  static dynamic email(dynamic response) => getJsonField(
        response,
        r'''$.payer.email''',
      );
  static dynamic identificacion(dynamic response) => getJsonField(
        response,
        r'''$.payer.identification.type''',
      );
}

class CrearTokenCall {
  static Future<ApiCallResponse> call({
    String? publicKey = 'TEST-ccf9b078-e74e-4203-8f13-f26cb6416c3a',
    String? accessToken =
        'TEST-8760176089935419-020111-7626723f767998d5bd0d2f43af3f6572-1299800587',
    String? cardNumber = '',
    String? cardholderName = '',
    String? identificationType = '',
    String? identificationNumber = '',
    String? securityCode = '',
    int? cardExpirationMonth,
    int? cardExpirationYear,
  }) {
    final body = '''
{
  "card_number": "${cardNumber}",
  "cardholder": {
    "name": "${cardholderName}",
    "identification": {
      "tipe": "${identificationType}",
      "number": "${identificationNumber}"
    }
  },
  "security_code": "${securityCode}",
  "expiration_month": "${cardExpirationMonth}",
  "expiration_year": "${cardExpirationYear}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'crear token',
      apiUrl:
          'https://api.mercadopago.com/v1/card_tokens?public_key=${publicKey}',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic tokenTarjeta(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  static dynamic ultimosDijitos(dynamic response) => getJsonField(
        response,
        r'''$.last_four_digits''',
      );
}

class ObtenerPagoCall {
  static Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken =
        'TEST-8760176089935419-020111-7626723f767998d5bd0d2f43af3f6572-1299800587',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'obtener pago',
      apiUrl: 'https://api.mercadopago.com/v1/payments/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
