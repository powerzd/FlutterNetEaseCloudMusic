class FollowResp {
    int code;
    List<Follow> follow;
    bool more;
    int touchCount;

    FollowResp({this.code, this.follow, this.more, this.touchCount});

    factory FollowResp.fromJson(Map<String, dynamic> json) {
        return FollowResp(
            code: json['code'],
            follow: json['follow'] != null ? (json['follow'] as List).map((i) => Follow.fromJson(i)).toList() : null,
            more: json['more'],
            touchCount: json['touchCount'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['more'] = this.more;
        data['touchCount'] = this.touchCount;
        if (this.follow != null) {
            data['follow'] = this.follow.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Follow {
    int accountStatus;
    int authStatus;
    String avatarUrl;
    bool blacklist;
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
    String remarkName;
    String signature;
    int time;
    int userId;
    int userType;
    VipRights vipRights;
    int vipType;

    Follow({this.accountStatus, this.authStatus, this.avatarUrl, this.blacklist, this.eventCount, this.expertTags, this.experts, this.followed, this.followeds, this.follows, this.gender, this.mutual, this.nickname, this.playlistCount, this.py, this.remarkName, this.signature, this.time, this.userId, this.userType, this.vipRights, this.vipType});

    factory Follow.fromJson(Map<String, dynamic> json) {
        return Follow(
            accountStatus: json['accountStatus'],
            authStatus: json['authStatus'],
            avatarUrl: json['avatarUrl'],
            blacklist: json['blacklist'],
            eventCount: json['eventCount'],
            followed: json['followed'],
            followeds: json['followeds'],
            follows: json['follows'],
            gender: json['gender'],
            mutual: json['mutual'],
            nickname: json['nickname'],
            playlistCount: json['playlistCount'],
            py: json['py'],
            remarkName: json['remarkName'],
            signature: json['signature'],
            time: json['time'],
            userId: json['userId'],
            userType: json['userType'],
            vipRights: json['vipRights'] != null ? VipRights.fromJson(json['vipRights']) : null,
            vipType: json['vipType'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['accountStatus'] = this.accountStatus;
        data['authStatus'] = this.authStatus;
        data['avatarUrl'] = this.avatarUrl;
        data['blacklist'] = this.blacklist;
        data['eventCount'] = this.eventCount;
        data['followed'] = this.followed;
        data['followeds'] = this.followeds;
        data['follows'] = this.follows;
        data['gender'] = this.gender;
        data['mutual'] = this.mutual;
        data['nickname'] = this.nickname;
        data['playlistCount'] = this.playlistCount;
        data['py'] = this.py;
        data['remarkName'] = this.remarkName;
        data['signature'] = this.signature;
        data['time'] = this.time;
        data['userId'] = this.userId;
        data['userType'] = this.userType;
        data['vipType'] = this.vipType;
        if (this.vipRights != null) {
            data['vipRights'] = this.vipRights.toJson();
        }
        return data;
    }
}

class VipRights {
    Associator associator;
    Object musicPackage;
    int redVipAnnualCount;

    VipRights({this.associator, this.musicPackage, this.redVipAnnualCount});

    factory VipRights.fromJson(Map<String, dynamic> json) {
        return VipRights(
            associator: json['associator'] != null ? Associator.fromJson(json['associator']) : null,
            redVipAnnualCount: json['redVipAnnualCount'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['redVipAnnualCount'] = this.redVipAnnualCount;
        if (this.associator != null) {
            data['associator'] = this.associator.toJson();
        }
        return data;
    }
}

class Associator {
    bool rights;
    int vipCode;

    Associator({this.rights, this.vipCode});

    factory Associator.fromJson(Map<String, dynamic> json) {
        return Associator(
            rights: json['rights'],
            vipCode: json['vipCode'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['rights'] = this.rights;
        data['vipCode'] = this.vipCode;
        return data;
    }
}