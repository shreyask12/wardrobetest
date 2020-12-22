class TopWears {
  int id;
  String name;
  bool isFavourite;
  bool isGalleryimage;
  String path;

  TopWears(
      {this.id, this.isFavourite, this.name, this.isGalleryimage, this.path});

  TopWears.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isFavourite = json['isFavourite'];
    isGalleryimage = json['isGalleryimage'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['isFavourite'] = this.isFavourite;
    data['isGalleryimage'] = this.isGalleryimage;
    data['path'] = this.path;

    return data;
  }
}

class BottomWears {
  int id;
  String name;
  bool isFavourite;
  bool isGalleryimage;
  String path;

  BottomWears(
      {this.id, this.isFavourite, this.name, this.isGalleryimage, this.path});

  BottomWears.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    isFavourite = json['isFavourite'];
    isGalleryimage = json['isGalleryimage'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['isFavourite'] = this.isFavourite;
    data['isGalleryimage'] = this.isGalleryimage;
    data['path'] = this.path;

    return data;
  }
}
