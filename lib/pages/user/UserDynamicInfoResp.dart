class UserDynamicInfoResp {
    List<Event> events;
    int lasttime;
    bool more;
    int size;

    UserDynamicInfoResp({this.events, this.lasttime, this.more, this.size});

    factory UserDynamicInfoResp.fromJson(Map<String, dynamic> json) {
        return UserDynamicInfoResp(
            events: json['events'] != null ? (json['events'] as List).map((i) => Event.fromJson(i)).toList() : null,
            lasttime: json['lasttime'],
            more: json['more'],
            size: json['size'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['lasttime'] = this.lasttime;
        data['more'] = this.more;
        data['size'] = this.size;
        if (this.events != null) {
            data['events'] = this.events.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Event {
    int actId;
    Object actName;
    int eventTime;
    int expireTime;
    int forwardCount;
    int id;
    Info info;
    int insiteForwardCount;
    String json;
    Object lotteryEventData;
    Object pendantData;
    List<Pic> pics;
    Object rcmdInfo;
    int showTime;
    int tmplId;
    bool topEvent;
    int type;
    User user;
    String uuid;

    Event({this.actId, this.actName, this.eventTime, this.expireTime, this.forwardCount, this.id, this.info, this.insiteForwardCount, this.json, this.lotteryEventData, this.pendantData, this.pics, this.rcmdInfo, this.showTime, this.tmplId, this.topEvent, this.type, this.user, this.uuid});

    factory Event.fromJson(Map<String, dynamic> json) {
        return Event(
            actId: json['actId'],
            eventTime: json['eventTime'],
            expireTime: json['expireTime'],
            forwardCount: json['forwardCount'],
            id: json['id'],
            info: json['info'] != null ? Info.fromJson(json['info']) : null,
            insiteForwardCount: json['insiteForwardCount'],
            json: json['json'],
            pics: json['pics'] != null ? (json['pics'] as List).map((i) => Pic.fromJson(i)).toList() : null,
            showTime: json['showTime'],
            tmplId: json['tmplId'],
            topEvent: json['topEvent'],
            type: json['type'],
            user: json['user'] != null ? User.fromJson(json['user']) : null,
            uuid: json['uuid'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['actId'] = this.actId;
        data['eventTime'] = this.eventTime;
        data['expireTime'] = this.expireTime;
        data['forwardCount'] = this.forwardCount;
        data['id'] = this.id;
        data['insiteForwardCount'] = this.insiteForwardCount;
        data['json'] = this.json;
        data['showTime'] = this.showTime;
        data['tmplId'] = this.tmplId;
        data['topEvent'] = this.topEvent;
        data['type'] = this.type;
        data['uuid'] = this.uuid;
        if (this.info != null) {
            data['info'] = this.info.toJson();
        }

        if (this.pics != null) {
            data['pics'] = this.pics.map((v) => v.toJson()).toList();
        }
        if (this.user != null) {
            data['user'] = this.user.toJson();
        }
        return data;
    }
}

class User {
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
    Object expertTags;
    Object experts;
    bool followed;
    int followeds;
    int gender;
    bool mutual;
    String nickname;
    int province;
    Object remarkName;
    String signature;
    bool urlAnalyze;
    int userId;
    int userType;
    VipRights vipRights;
    int vipType;

    User({this.accountStatus, this.authStatus, this.authority, this.avatarImgId, this.avatarImgIdStr, this.avatarImgId_str, this.avatarUrl, this.backgroundImgId, this.backgroundImgIdStr, this.backgroundUrl, this.birthday, this.city, this.defaultAvatar, this.description, this.detailDescription, this.djStatus, this.expertTags, this.experts, this.followed, this.followeds, this.gender, this.mutual, this.nickname, this.province, this.remarkName, this.signature, this.urlAnalyze, this.userId, this.userType, this.vipRights, this.vipType});

    factory User.fromJson(Map<String, dynamic> json) {
        return User(
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
            followed: json['followed'],
            followeds: json['followeds'],
            gender: json['gender'],
            mutual: json['mutual'],
            nickname: json['nickname'],
            province: json['province'],
            signature: json['signature'],
            urlAnalyze: json['urlAnalyze'],
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
        data['followed'] = this.followed;
        data['followeds'] = this.followeds;
        data['gender'] = this.gender;
        data['mutual'] = this.mutual;
        data['nickname'] = this.nickname;
        data['province'] = this.province;
        data['signature'] = this.signature;
        data['urlAnalyze'] = this.urlAnalyze;
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

class Info {
    int commentCount;
    CommentThread commentThread;
    Object comments;
    Object latestLikedUsers;
    bool liked;
    int likedCount;
    int resourceId;
    int resourceType;
    int shareCount;
    String threadId;

    Info({this.commentCount, this.commentThread, this.comments, this.latestLikedUsers, this.liked, this.likedCount, this.resourceId, this.resourceType, this.shareCount, this.threadId});

    factory Info.fromJson(Map<String, dynamic> json) {
        return Info(
            commentCount: json['commentCount'],
            commentThread: json['commentThread'] != null ? CommentThread.fromJson(json['commentThread']) : null,
            liked: json['liked'],
            likedCount: json['likedCount'],
            resourceId: json['resourceId'],
            resourceType: json['resourceType'],
            shareCount: json['shareCount'],
            threadId: json['threadId'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['commentCount'] = this.commentCount;
        data['liked'] = this.liked;
        data['likedCount'] = this.likedCount;
        data['resourceId'] = this.resourceId;
        data['resourceType'] = this.resourceType;
        data['shareCount'] = this.shareCount;
        data['threadId'] = this.threadId;
        if (this.commentThread != null) {
            data['commentThread'] = this.commentThread.toJson();
        }
        return data;
    }
}

class CommentThread {
    int commentCount;
    int hotCount;
    String id;
    Object latestLikedUsers;
    int likedCount;
    int resourceId;
    Object resourceInfo;
    int resourceOwnerId;
    Object resourceTitle;
    int resourceType;
    int shareCount;

    CommentThread({this.commentCount, this.hotCount, this.id, this.latestLikedUsers, this.likedCount, this.resourceId, this.resourceInfo, this.resourceOwnerId, this.resourceTitle, this.resourceType, this.shareCount});

    factory CommentThread.fromJson(Map<String, dynamic> json) {
        return CommentThread(
            commentCount: json['commentCount'],
            hotCount: json['hotCount'],
            id: json['id'],
            likedCount: json['likedCount'],
            resourceId: json['resourceId'],
            resourceOwnerId: json['resourceOwnerId'],
            resourceType: json['resourceType'],
            shareCount: json['shareCount'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['commentCount'] = this.commentCount;
        data['hotCount'] = this.hotCount;
        data['id'] = this.id;
        data['likedCount'] = this.likedCount;
        data['resourceId'] = this.resourceId;
        data['resourceOwnerId'] = this.resourceOwnerId;
        data['resourceType'] = this.resourceType;
        data['shareCount'] = this.shareCount;
        return data;
    }
}

class Pic {
    String format;
    int height;
    String originUrl;
    String pcRectangleUrl;
    String pcSquareUrl;
    String rectangleUrl;
    String squareUrl;
    int width;

    Pic({this.format, this.height, this.originUrl, this.pcRectangleUrl, this.pcSquareUrl, this.rectangleUrl, this.squareUrl, this.width});

    factory Pic.fromJson(Map<String, dynamic> json) {
        return Pic(
            format: json['format'],
            height: json['height'],
            originUrl: json['originUrl'],
            pcRectangleUrl: json['pcRectangleUrl'],
            pcSquareUrl: json['pcSquareUrl'],
            rectangleUrl: json['rectangleUrl'],
            squareUrl: json['squareUrl'],
            width: json['width'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['format'] = this.format;
        data['height'] = this.height;
        data['originUrl'] = this.originUrl;
        data['pcRectangleUrl'] = this.pcRectangleUrl;
        data['pcSquareUrl'] = this.pcSquareUrl;
        data['rectangleUrl'] = this.rectangleUrl;
        data['squareUrl'] = this.squareUrl;
        data['width'] = this.width;
        return data;
    }
}