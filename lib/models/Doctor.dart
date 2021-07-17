class Doctor {
  final String name;
  final String degree;
  final String specialization;
  final String location;
  final int? phoneNumber;
  final String? address;
  final String urlToImage;
  final String intro;

  Doctor(
      {required this.name,
      required this.intro,
      required this.degree,
      required this.specialization,
      required this.location,
      this.phoneNumber,
      this.address,
      required this.urlToImage});
}
