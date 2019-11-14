class FollowedResp {
    int code;
    List<Followed> followeds;
    bool more;

    FollowedResp({this.code, this.followeds, this.more});

    factory FollowedResp.fromJson(Map<String, dynamic> json) {
        return FollowedResp(
            code: json['code'],
            followeds: json['followeds'] != null ? (json['followeds'] as List).map((i) => Followed.fromJson(i)).toList() : null,
            more: json['more'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['more'] = this.more;
        if (this.followeds != null) {
            data['followeds'] = this.followeds.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Followed {
    int accountStatus;
    int authStatus;
    String avatarUrl;
    int eventCount;
    Object expertTags;
    Object experts;
    bool followed;
    int followeds;
    int follows;
    int gender;
    bool mutual;
    String nickname;
    int playlistCount;
    String py;
    Object remarkName;
    String signature;
    int time;
    int userId;
    int userType;
    int vipType;

    Followed({this.accountStatus, this.authStatus, this.avatarUrl, this.eventCount, this.expertTags, this.experts, this.followed, this.followeds, this.follows, this.gender, this.mutual, this.nickname, this.playlistCount, this.py, this.remarkName, this.signature, this.time, this.userId, this.userType, this.vipType});

    factory Followed.fromJson(Map<String, dynamic> json) {
        return Followed(
            accountStatus: json['accountStatus'],
            authStatus: json['authStatus'],
            avatarUrl: json['avatarUrl'],
            eventCount: json['eventCount'],
            followed: json['followed'],
            followeds: json['followeds'],
            follows: json['follows'],
            gender: json['gender'],
            mutual: json['mutual'],
            nickname: json['nickname'],
            playlistCount: json['playlistCount'],
            py: json['py'],
            signature: json['signature'],
            time: json['time'],
            userId: json['userId'],
            userType: json['userType'],
            vipType: json['vipType'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['accountStatus'] = this.accountStatus;
        data['authStatus'] = this.authStatus;
        data['avatarUrl'] = this.avatarUrl;
        data['eventCount'] = this.eventCount;
        data['followed'] = this.followed;
        data['followeds'] = this.followeds;
        data['follows'] = this.follows;
        data['gender'] = this.gender;
        data['mutual'] = this.mutual;
        data['nickname'] = this.nickname;
        data['playlistCount'] = this.playlistCount;
        data['py'] = this.py;
        data['signature'] = this.signature;
        data['time'] = this.time;
        data['userId'] = this.userId;
        data['userType'] = this.userType;
        data['vipType'] = this.vipType;
        return data;
    }
}