/// Response models for the Query String Builder API.

/// API Response wrapper.
class QuerystringbuilderResponse {
  final String status;
  final dynamic error;
  final QuerystringbuilderData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  QuerystringbuilderResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory QuerystringbuilderResponse.fromJson(Map<String, dynamic> json) => QuerystringbuilderResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? QuerystringbuilderData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Query String Builder API.

class QuerystringbuilderData {
  String? queryString;
  String? fullURL;
  bool? encoded;
  num? paramCount;

  QuerystringbuilderData({
    this.queryString,
    this.fullURL,
    this.encoded,
    this.paramCount,
  });

  factory QuerystringbuilderData.fromJson(Map<String, dynamic> json) => QuerystringbuilderData(
      queryString: json['queryString'],
      fullURL: json['fullURL'],
      encoded: json['encoded'],
      paramCount: json['paramCount'],
    );
}

class QuerystringbuilderRequest {
  Map<String, dynamic> params;
  bool? encode;

  QuerystringbuilderRequest({
    required this.params,
    this.encode,
  });

  Map<String, dynamic> toJson() => {
      'params': params,
      if (encode != null) 'encode': encode,
    };
}
