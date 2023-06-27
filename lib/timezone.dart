// ignore_for_file: non_constant_identifier_names

class Timezone {
  final String datetime;
  final String utc_offset;

  Timezone({required this.datetime, required this.utc_offset});

  factory Timezone.fromJson(Map<String, dynamic> json) => Timezone(
        datetime: json["datetime"],
        utc_offset: json["utc_offset"],
      );
}
