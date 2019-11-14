class MessagePrivateLetterResp {
    List<Msg> msgs;
    MessagePrivateLetterResp({this.msgs});

    factory MessagePrivateLetterResp.fromJson(Map<String, dynamic> json) {
        return MessagePrivateLetterResp(
            msgs: json['msgs'] != null ? (json['msgs'] as List).map((i) => Msg.fromJson(i)).toList() : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        if (this.msgs != null) {
            data['msgs'] = this.msgs.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Msg {
    FromUser fromUser;
    String lastMsg;
    int lastMsgTime;
    int newMsgCount;
    Object noticeAccount;
    bool noticeAccountFlag;
    ToUser toUser;

    Msg({this.fromUser, this.lastMsg, this.lastMsgTime, this.newMsgCount, this.noticeAccount, this.noticeAccountFlag, this.toUser});

    factory Msg.fromJson(Map<String, dynamic> json) {
        return Msg(
            fromUser: json['fromUser'] != null ? FromUser.fromJson(json['fromUser']) : null,
            lastMsg: json['lastMsg'],
            lastMsgTime: json['lastMsgTime'],
            newMsgCount: json['newMsgCount'],
            noticeAccountFlag: json['noticeAccountFlag'],
            toUser: json['toUser'] != null ? ToUser.fromJson(json['toUser']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['lastMsg'] = this.lastMsg;
        data['lastMsgTime'] = this.lastMsgTime;
        data['newMsgCount'] = this.newMsgCount;
        data['noticeAccountFlag'] = this.noticeAccountFlag;
        if (this.fromUser != null) {
            data['fromUser'] = this.fromUser.toJson();
        }
        if (this.toUser != null) {
            data['toUser'] = this.toUser.toJson();
        }
        return data;
    }
}

class FromUser {
    int accountStatus;
    Object artistName;
    int authStatus;
    int authority;
    int avatarImgId;
    String avatarImgIdStr;
    String avatarUrl;
    int backgroundImgId;
    String backgroundImgIdStr;
    String backgroundUrl;
    int birthday;
    bool blacklist;
    int city;
    bool defaultAvatar;
    String description;
    String detailDescription;
    int djStatus;
    Object expertTags;
    Object experts;
    bool followed;
    int gender;
    bool mutual;
    String nickname;
    int province;
    Object remarkName;
    String signature;
    int userId;
    int userType;
    int vipType;

    FromUser({this.accountStatus, this.artistName, this.authStatus, this.authority, this.avatarImgId, this.avatarImgIdStr, this.avatarUrl, this.backgroundImgId, this.backgroundImgIdStr, this.backgroundUrl, this.birthday, this.blacklist, this.city, this.defaultAvatar, this.description, this.detailDescription, this.djStatus, this.expertTags, this.experts, this.followed, this.gender, this.mutual, this.nickname, this.province, this.remarkName, this.signature, this.userId, this.userType, this.vipType});

    factory FromUser.fromJson(Map<String, dynamic> json) {
        return FromUser(
            accountStatus: json['accountStatus'],
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
            city: json['city'],
            defaultAvatar: json['defaultAvatar'],
            description: json['description'],
            detailDescription: json['detailDescription'],
            djStatus: json['djStatus'],
            followed: json['followed'],
            gender: json['gender'],
            mutual: json['mutual'],
            nickname: json['nickname'],
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
        data['avatarUrl'] = this.avatarUrl;
        data['backgroundImgId'] = this.backgroundImgId;
        data['backgroundImgIdStr'] = this.backgroundImgIdStr;
        data['backgroundUrl'] = this.backgroundUrl;
        data['birthday'] = this.birthday;
        data['blacklist'] = this.blacklist;
        data['city'] = this.city;
        data['defaultAvatar'] = this.defaultAvatar;
        data['description'] = this.description;
        data['detailDescription'] = this.detailDescription;
        data['djStatus'] = this.djStatus;
        data['followed'] = this.followed;
        data['gender'] = this.gender;
        data['mutual'] = this.mutual;
        data['nickname'] = this.nickname;
        data['province'] = this.province;
        data['signature'] = this.signature;
        data['userId'] = this.userId;
        data['userType'] = this.userType;
        data['vipType'] = this.vipType;
        return data;
    }
}

class ToUser {
    int accountStatus;
    int authStatus;
    int authority;
    int avatarImgId;
    String avatarImgIdStr;
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
    Object expertTags;
    Object experts;
    bool followed;
    int gender;
    bool mutual;
    String nickname;
    int province;
    Object remarkName;
    String signature;
    int userId;
    int userType;
    int vipType;

    ToUser({this.accountStatus, this.authStatus, this.authority, this.avatarImgId, this.avatarImgIdStr, this.avatarUrl, this.backgroundImgId, this.backgroundImgIdStr, this.backgroundUrl, this.birthday, this.city, this.defaultAvatar, this.description, this.detailDescription, this.djStatus, this.expertTags, this.experts, this.followed, this.gender, this.mutual, this.nickname, this.province, this.remarkName, this.signature, this.userId, this.userType, this.vipType});

    factory ToUser.fromJson(Map<String, dynamic> json) {
        return ToUser(
            accountStatus: json['accountStatus'],
            authStatus: json['authStatus'],
            authority: json['authority'],
            avatarImgId: json['avatarImgId'],
            avatarImgIdStr: json['avatarImgIdStr'],
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
            followed: json['followed'],
            gender: json['gender'],
            mutual: json['mutual'],
            nickname: json['nickname'],
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
        data['followed'] = this.followed;
        data['gender'] = this.gender;
        data['mutual'] = this.mutual;
        data['nickname'] = this.nickname;
        data['province'] = this.province;
        data['signature'] = this.signature;
        data['userId'] = this.userId;
        data['userType'] = this.userType;
        data['vipType'] = this.vipType;
        return data;
    }
}