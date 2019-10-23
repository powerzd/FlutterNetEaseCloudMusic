class LoginResp {
    Account account;
    List<Binding> bindings;
    int code;
    int loginType;
    Profile profile;

    LoginResp({this.account, this.bindings, this.code, this.loginType, this.profile});

    factory LoginResp.fromJson(Map<String, dynamic> json) {
        return LoginResp(
            account: json['account'] != null ? Account.fromJson(json['account']) : null,
            bindings: json['bindings'] != null ? (json['bindings'] as List).map((i) => Binding.fromJson(i)).toList() : null,
            code: json['code'],
            loginType: json['loginType'],
            profile: json['profile'] != null ? Profile.fromJson(json['profile']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['loginType'] = this.loginType;
        if (this.account != null) {
            data['account'] = this.account.toJson();
        }
        if (this.bindings != null) {
            data['bindings'] = this.bindings.map((v) => v.toJson()).toList();
        }
        if (this.profile != null) {
            data['profile'] = this.profile.toJson();
        }
        return data;
    }
}

class Profile {
    int accountStatus;
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
    int city;
    bool defaultAvatar;
    String description;
    String detailDescription;
    int djStatus;
    int eventCount;
    Object expertTags;
    bool followed;
    int followeds;
    int follows;
    int gender;
    bool mutual;
    String nickname;
    int playlistBeSubscribedCount;
    int playlistCount;
    int province;
    Object remarkName;
    String signature;
    int userId;
    int userType;
    int vipType;

    Profile({this.accountStatus, this.authStatus, this.authority, this.avatarImgId, this.avatarImgIdStr, this.avatarImgId_str, this.avatarUrl, this.backgroundImgId, this.backgroundImgIdStr, this.backgroundUrl, this.birthday, this.city, this.defaultAvatar, this.description, this.detailDescription, this.djStatus, this.eventCount, this.expertTags, this.followed, this.followeds, this.follows, this.gender, this.mutual, this.nickname, this.playlistBeSubscribedCount, this.playlistCount, this.province, this.remarkName, this.signature, this.userId, this.userType, this.vipType});

    factory Profile.fromJson(Map<String, dynamic> json) {
        return Profile(
            accountStatus: json['accountStatus'],
            authStatus: json['authStatus'],
            authority: json['authority'],
            avatarImgId: json['avatarImgId'],
            avatarImgIdStr: json['avatarImgIdStr'],
            avatarImgId_str: json['avatarImgId_str'],
            avatarUrl: json['avatarUrl'],
            backgroundImgId: json['backgroundImgId'],
            backgroundImgIdStr: json['backgroundImgIdStr'],
            backgroundUrl: json['backgroundUrl'],
            birthday: json['birthday'],
            city: json['city'],
            defaultAvatar: json['defaultAvatar'],
            description: json['description'],
            detailDescription: json['detailDescription'],
            djStatus: json['djStatus'],
            eventCount: json['eventCount'],
            followed: json['followed'],
            followeds: json['followeds'],
            follows: json['follows'],
            gender: json['gender'],
            mutual: json['mutual'],
            nickname: json['nickname'],
            playlistBeSubscribedCount: json['playlistBeSubscribedCount'],
            playlistCount: json['playlistCount'],
            province: json['province'],
            signature: json['signature'],
            userId: json['userId'],
            userType: json['userType'],
            vipType: json['vipType'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['accountStatus'] = this.accountStatus;
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
        data['city'] = this.city;
        data['defaultAvatar'] = this.defaultAvatar;
        data['description'] = this.description;
        data['detailDescription'] = this.detailDescription;
        data['djStatus'] = this.djStatus;
        data['eventCount'] = this.eventCount;
        data['followed'] = this.followed;
        data['followeds'] = this.followeds;
        data['follows'] = this.follows;
        data['gender'] = this.gender;
        data['mutual'] = this.mutual;
        data['nickname'] = this.nickname;
        data['playlistBeSubscribedCount'] = this.playlistBeSubscribedCount;
        data['playlistCount'] = this.playlistCount;
        data['province'] = this.province;
        data['signature'] = this.signature;
        data['userId'] = this.userId;
        data['userType'] = this.userType;
        data['vipType'] = this.vipType;
        return data;
    }
}


class Account {
    bool anonimousUser;
    int ban;
    int baoyueVersion;
    int createTime;
    int donateVersion;
    int id;
    String salt;
    int status;
    int tokenVersion;
    int type;
    String userName;
    int vipType;
    int viptypeVersion;
    int whitelistAuthority;

    Account({this.anonimousUser, this.ban, this.baoyueVersion, this.createTime, this.donateVersion, this.id, this.salt, this.status, this.tokenVersion, this.type, this.userName, this.vipType, this.viptypeVersion, this.whitelistAuthority});

    factory Account.fromJson(Map<String, dynamic> json) {
        return Account(
            anonimousUser: json['anonimousUser'],
            ban: json['ban'],
            baoyueVersion: json['baoyueVersion'],
            createTime: json['createTime'],
            donateVersion: json['donateVersion'],
            id: json['id'],
            salt: json['salt'],
            status: json['status'],
            tokenVersion: json['tokenVersion'],
            type: json['type'],
            userName: json['userName'],
            vipType: json['vipType'],
            viptypeVersion: json['viptypeVersion'],
            whitelistAuthority: json['whitelistAuthority'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['anonimousUser'] = this.anonimousUser;
        data['ban'] = this.ban;
        data['baoyueVersion'] = this.baoyueVersion;
        data['createTime'] = this.createTime;
        data['donateVersion'] = this.donateVersion;
        data['id'] = this.id;
        data['salt'] = this.salt;
        data['status'] = this.status;
        data['tokenVersion'] = this.tokenVersion;
        data['type'] = this.type;
        data['userName'] = this.userName;
        data['vipType'] = this.vipType;
        data['viptypeVersion'] = this.viptypeVersion;
        data['whitelistAuthority'] = this.whitelistAuthority;
        return data;
    }
}

class Binding {
    int bindingTime;
    bool expired;
    int expiresIn;
    int id;
    int refreshTime;
    String tokenJsonStr;
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
            tokenJsonStr: json['tokenJsonStr'],
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
        data['tokenJsonStr'] = this.tokenJsonStr;
        data['type'] = this.type;
        data['url'] = this.url;
        data['userId'] = this.userId;
        return data;
    }
}