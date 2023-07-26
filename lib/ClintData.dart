class ClinteData {
  late String id;
  late String name;
  late String startTime;
  late String endTime;
  late String room;

  ClinteData({
    required this.id,
    required this.name,
    required this.startTime,
    required this.endTime,
    required this.room,
  });

  ClinteData.fromJson(Map<String, dynamic> json) {
    id = json['id']; // Change 'Id' to 'id'
    name = json['name']; // Change 'Name' to 'name'
    startTime = json['startTime']; // Change 'StartTime' to 'startTime'
    endTime = json['endTime']; // Change 'EndTime' to 'endTime'
    room = json['room']; // Change 'Room' to 'room'
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id; // Change 'Id' to 'id'
    data['name'] = name; // Change 'Name' to 'name'
    data['startTime'] = startTime; // Change 'StartTime' to 'startTime'
    data['endTime'] = endTime; // Change 'EndTime' to 'endTime'
    data['room'] = room; // Change 'Room' to 'room'
    return data;
  }
}
