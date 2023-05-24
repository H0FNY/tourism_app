class ProposalModel {
  ProposalModel({
    required this.GuideID,
    required this.ServiceID,
    required this.time,
    required this.TouristID,
    required this.proposalprice,
    required this.status

  });

  late String GuideID;
  late String ServiceID;
  late String TouristID;
  late String proposalprice;
  late String status;
  late String time;

  ProposalModel.fromJson(json) {
    GuideID =json['GuideID']??"";
    ServiceID = json['ServiceID'] ?? '';
    time = json['time'] ?? '';
    TouristID=json['TouristID']??'';
    proposalprice=json['proposalprice']??"";
    status=json['status']??"";
  }

  Map<String, dynamic> toJson() {
    return {
      "GuideID" : GuideID,
      'ServiceID': ServiceID,
      'time': time,
      'TouristID':TouristID,
      'proposalprice':proposalprice,
      'status':status,
    };
  }
}
