class UserDetailResp {
    bool adValid;
    List<Binding> bindings;
    int code;
    int createDays;
    int createTime;
    int level;
    int listenSongs;
    bool mobileSign;
    bool pcSign;
    bool peopleCanSeeMyPlayRecord;
    Profile profile;
    UserPoint userPoint;

    UserDetailResp({this.adValid, this.bindings, this.code, this.createDays, this.createTime, this.level, this.listenSongs, this.mobileSign, this.pcSign, this.peopleCanSeeMyPlayRecord, this.profile, this.userPoint});

    factory UserDetailResp.fromJson(Map<String, dynamic> json) {
        return UserDetailResp(
            adValid: json['adValid'],
            bindings: json['bindings'] != null ? (json['bindings'] as List).map((i) => Binding.fromJson(i)).toList() : null,
            code: json['code'],
            createDays: json['createDays'],
            createTime: json['createTime'],
            level: json['level'],
            listenSongs: json['listenSongs'],
            mobileSign: json['mobileSign'],
            pcSign: json['pcSign'],
            peopleCanSeeMyPlayRecord: json['peopleCanSeeMyPlayRecord'],
            profile: json['profile'] != null ? Profile.fromJson(json['profile']) : null,
            userPoint: json['userPoint'] != null ? UserPoint.fromJson(json['userPoint']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['adValid'] = this.adValid;
        data['code'] = this.code;
        data['createDays'] = this.createDays;
        data['createTime'] = this.createTime;
        data['level'] = this.level;
        data['listenSongs'] = this.listenSongs;
        data['mobileSign'] = this.mobileSign;
        data['pcSign'] = this.pcSign;
        data['peopleCanSeeMyPlayRecord'] = this.peopleCanSeeMyPlayRecord;
        if (this.bindings != null) {
            data['bindings'] = this.bindings.map((v) => v.toJson()).toList();
        }
        if (this.profile != null) {
            data['profile'] = this.profile.toJson();
        }
        if (this.userPoint != null) {
            data['userPoint'] = this.userPoint.toJson();
        }
        return data;
    }
}

class Profile {
    int accountStatus;
    int allSubscribedCount;
    List<Object> artistIdentity;
    int authStatus;
    int authority;
    int avatarImgId;
    String avatarImgIdStr;
    String avatarImgId_str;
    String avatarUrl;
    int backgroundImgId;
    String backgroundImgIdStr;
    String backgroundUrl;
    int birthday;
    bool blacklist;
    int cCount;
    int city;
    int createTime;
    bool defaultAvatar;
    String description;
    String detailDescription;
    int djStatus;
    int eventCount;
    Object expertTags;
    bool followMe;
    Object followTime;
    bool followed;
    int followeds;
    int follows;
    int gender;
    bool mutual;
    int newFollows;
    String nickname;
    int playlistBeSubscribedCount;
    int playlistCount;
    int province;
    Object remarkName;
    int sCount;
    int sDJPCount;
    String signature;
    int userId;
    int userType;
    int vipType;

    Profile({this.accountStatus, this.allSubscribedCount, this.artistIdentity, this.authStatus, this.authority, this.avatarImgId, this.avatarImgIdStr,  this.avatarUrl, this.backgroundImgId, this.backgroundImgIdStr, this.backgroundUrl, this.birthday, this.blacklist, this.cCount, this.city, this.createTime, this.defaultAvatar, this.description, this.detailDescription, this.djStatus, this.eventCount, this.expertTags, this.followMe, this.followTime, this.followed, this.followeds, this.follows, this.gender, this.mutual, this.newFollows, this.nickname, this.playlistBeSubscribedCount, this.playlistCount, this.province, this.remarkName, this.sCount, this.sDJPCount, this.signature, this.userId, this.userType, this.vipType});

    factory Profile.fromJson(Map<String, dynamic> json) {
        return Profile(
            accountStatus: json['accountStatus'],
            allSubscribedCount: json['allSubscribedCount'],
            authStatus: json['authStatus'],
            authority: json['authority'],
            avatarImgId: json['avatarImgId'],
            avatarImgIdStr: json['avatarImgIdStr'],
            avatarUrl: json['avatarUrl'],
            backgroundImgId: json['backgroundImgId'],
            backgroundImgIdStr: json['backgroundImgIdStr'],
            backgroundUrl: json['backgroundUrl'],
            birthday: json['birthday'],
            blacklist: json['blacklist'],
            cCount: json['cCount'],
            city: json['city'],
            createTime: json['createTime'],
            defaultAvatar: json['defaultAvatar'],
            description: json['description'],
            detailDescription: json['detailDescription'],
            djStatus: json['djStatus'],
            eventCount: json['eventCount'],
            followMe: json['followMe'],
            followed: json['followed'],
            followeds: json['followeds'],
            follows: json['follows'],
            gender: json['gender'],
            mutual: json['mutual'],
            newFollows: json['newFollows'],
            nickname: json['nickname'],
            playlistBeSubscribedCount: json['playlistBeSubscribedCount'],
            playlistCount: json['playlistCount'],
            province: json['province'],
            sCount: json['sCount'],
            sDJPCount: json['sDJPCount'],
            signature: json['signature'],
            userId: json['userId'],
            userType: json['userType'],
            vipType: json['vipType'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['accountStatus'] = this.accountStatus;
        data['allSubscribedCount'] = this.allSubscribedCount;
        data['authStatus'] = this.authStatus;
        data['authority'] = this.authority;
        data['avatarImgId'] = this.avatarImgId;
        data['avatarImgIdStr'] = this.avatarImgIdStr;
        data['avatarImgId_str'] = this.avatarImgId_str;
        data['avatarUrl'] = this.avatarUrl;
        data['backgroundImgId'] = this.backgroundImgId;
        data['backgroundImgIdStr'] = this.backgroundImgIdStr;
        data['backgroundUrl'] = this.backgroundUrl;
        data['birthday'] = this.birthday;
        data['blacklist'] = this.blacklist;
        data['cCount'] = this.cCount;
        data['city'] = this.city;
        data['createTime'] = this.createTime;
        data['defaultAvatar'] = this.defaultAvatar;
        data['description'] = this.description;
        data['detailDescription'] = this.detailDescription;
        data['djStatus'] = this.djStatus;
        data['eventCount'] = this.eventCount;
        data['followMe'] = this.followMe;
        data['followed'] = this.followed;
        data['followeds'] = this.followeds;
        data['follows'] = this.follows;
        data['gender'] = this.gender;
        data['mutual'] = this.mutual;
        data['newFollows'] = this.newFollows;
        data['nickname'] = this.nickname;
        data['playlistBeSubscribedCount'] = this.playlistBeSubscribedCount;
        data['playlistCount'] = this.playlistCount;
        data['province'] = this.province;
        data['sCount'] = this.sCount;
        data['sDJPCount'] = this.sDJPCount;
        data['signature'] = this.signature;
        data['userId'] = this.userId;
        data['userType'] = this.userType;
        data['vipType'] = this.vipType;
        return data;
    }
}


class Binding {
    int bindingTime;
    bool expired;
    int expiresIn;
    int id;
    int refreshTime;
    Object tokenJsonStr;
    int type;
    String url;
    int userId;

    Binding({this.bindingTime, this.expired, this.expiresIn, this.id, this.refreshTime, this.tokenJsonStr, this.type, this.url, this.userId});

    factory Binding.fromJson(Map<String, dynamic> json) {
        return Binding(
            bindingTime: json['bindingTime'],
            expired: json['expired'],
            expiresIn: json['expiresIn'],
            id: json['id'],
            refreshTime: json['refreshTime'],
            type: json['type'],
            url: json['url'],
            userId: json['userId'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['bindingTime'] = this.bindingTime;
        data['expired'] = this.expired;
        data['expiresIn'] = this.expiresIn;
        data['id'] = this.id;
        data['refreshTime'] = this.refreshTime;
        data['type'] = this.type;
        data['url'] = this.url;
        data['userId'] = this.userId;
        return data;
    }
}

class UserPoint {
    int balance;
    int blockBalance;
    int status;
    int updateTime;
    int userId;
    int version;

    UserPoint({this.balance, this.blockBalance, this.status, this.updateTime, this.userId, this.version});

    factory UserPoint.fromJson(Map<String, dynamic> json) {
        return UserPoint(
            balance: json['balance'],
            blockBalance: json['blockBalance'],
            status: json['status'],
            updateTime: json['updateTime'],
            userId: json['userId'],
            version: json['version'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['balance'] = this.balance;
        data['blockBalance'] = this.blockBalance;
        data['status'] = this.status;
        data['updateTime'] = this.updateTime;
        data['userId'] = this.userId;
        data['version'] = this.version;
        return data;
    }
}