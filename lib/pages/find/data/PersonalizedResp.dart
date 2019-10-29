class PersonalizedResp {
    int category;
    int code;
    bool hasTaste;
    List<Result> result;

    PersonalizedResp({this.category, this.code, this.hasTaste, this.result});

    factory PersonalizedResp.fromJson(Map<String, dynamic> json) {
        return PersonalizedResp(
            category: json['category'],
            code: json['code'],
            hasTaste: json['hasTaste'],
            result: json['result'] != null ? (json['result'] as List).map((i) => Result.fromJson(i)).toList() : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['category'] = this.category;
        data['code'] = this.code;
        data['hasTaste'] = this.hasTaste;
        if (this.result != null) {
            data['result'] = this.result.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Result {
    String alg;
    bool canDislike;
    String copywriter;
    bool highQuality;
    int id;
    String name;
    String picUrl;
    int playCount;
    int trackCount;
    int trackNumberUpdateTime;
    int type;

    Result({this.alg, this.canDislike, this.copywriter, this.highQuality, this.id, this.name, this.picUrl, this.playCount, this.trackCount, this.trackNumberUpdateTime, this.type});

    factory Result.fromJson(Map<String, dynamic> json) {
        return Result(
            alg: json['alg'],
            canDislike: json['canDislike'],
            copywriter: json['copywriter'],
            highQuality: json['highQuality'],
            id: json['id'],
            name: json['name'],
            picUrl: json['picUrl'],
            playCount: json['playCount'],
            trackCount: json['trackCount'],
            trackNumberUpdateTime: json['trackNumberUpdateTime'],
            type: json['type'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['alg'] = this.alg;
        data['canDislike'] = this.canDislike;
        data['copywriter'] = this.copywriter;
        data['highQuality'] = this.highQuality;
        data['id'] = this.id;
        data['name'] = this.name;
        data['picUrl'] = this.picUrl;
        data['playCount'] = this.playCount;
        data['trackCount'] = this.trackCount;
        data['trackNumberUpdateTime'] = this.trackNumberUpdateTime;
        data['type'] = this.type;
        return data;
    }
}