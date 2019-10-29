class PlayListData {
    int code;
    bool more;
    List<Playlist> playlist;

    PlayListData({this.code, this.more, this.playlist});

    factory PlayListData.fromJson(Map<String, dynamic> json) {
        return PlayListData(
            code: json['code'],
            more: json['more'],
            playlist: json['playlist'] != null ? (json['playlist'] as List).map((i) => Playlist.fromJson(i)).toList() : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['more'] = this.more;
        if (this.playlist != null) {
            data['playlist'] = this.playlist.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Playlist {
    int adType;
    bool anonimous;
    Object artists;
    int backgroundCoverId;
    Object backgroundCoverUrl;
    int cloudTrackCount;
    String commentThreadId;
    int coverImgId;
    String coverImgId_str;
    String coverImgUrl;
    int createTime;
    Creator creator;
    Object englishTitle;
    bool highQuality;
    int id;
    String name;
    bool newImported;
    bool opRecommend;
    bool ordered;
    int playCount;
    int privacy;
    int specialType;
    int status;
    bool subscribed;
    int subscribedCount;
    List<Object> subscribers;
    List<String> tags;
    int titleImage;
    Object titleImageUrl;
    int totalDuration;
    int trackCount;
    int trackNumberUpdateTime;
    int trackUpdateTime;
    Object tracks;
    Object updateFrequency;
    int updateTime;
    int userId;

    Playlist({this.adType, this.anonimous, this.artists, this.backgroundCoverId, this.backgroundCoverUrl, this.cloudTrackCount, this.commentThreadId, this.coverImgId, this.coverImgId_str, this.coverImgUrl, this.createTime, this.creator,this.englishTitle, this.highQuality, this.id, this.name, this.newImported, this.opRecommend, this.ordered, this.playCount, this.privacy, this.specialType, this.status, this.subscribed, this.subscribedCount, this.subscribers, this.tags, this.titleImage, this.titleImageUrl, this.totalDuration, this.trackCount, this.trackNumberUpdateTime, this.trackUpdateTime, this.tracks, this.updateFrequency, this.updateTime, this.userId});

    factory Playlist.fromJson(Map<String, dynamic> json) {
        return Playlist(
            adType: json['adType'],
            anonimous: json['anonimous'],
            backgroundCoverId: json['backgroundCoverId'],
            cloudTrackCount: json['cloudTrackCount'],
            commentThreadId: json['commentThreadId'],
            coverImgId: json['coverImgId'],
            coverImgId_str: json['coverImgId_str'],
            coverImgUrl: json['coverImgUrl'],
            createTime: json['createTime'],
            creator: json['creator'] != null ? Creator.fromJson(json['creator']) : null,
            highQuality: json['highQuality'],
            id: json['id'],
            name: json['name'],
            newImported: json['newImported'],
            opRecommend: json['opRecommend'],
            ordered: json['ordered'],
            playCount: json['playCount'],
            privacy: json['privacy'],
            specialType: json['specialType'],
            status: json['status'],
            subscribed: json['subscribed'],
            subscribedCount: json['subscribedCount'],
            tags: json['tags'] != null ? new List<String>.from(json['tags']) : null,
            titleImage: json['titleImage'],
            totalDuration: json['totalDuration'],
            trackCount: json['trackCount'],
            trackNumberUpdateTime: json['trackNumberUpdateTime'],
            trackUpdateTime: json['trackUpdateTime'],
            updateTime: json['updateTime'],
            userId: json['userId'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['adType'] = this.adType;
        data['anonimous'] = this.anonimous;
        data['backgroundCoverId'] = this.backgroundCoverId;
        data['cloudTrackCount'] = this.cloudTrackCount;
        data['commentThreadId'] = this.commentThreadId;
        data['coverImgId'] = this.coverImgId;
        data['coverImgId_str'] = this.coverImgId_str;
        data['coverImgUrl'] = this.coverImgUrl;
        data['createTime'] = this.createTime;
        data['highQuality'] = this.highQuality;
        data['id'] = this.id;
        data['name'] = this.name;
        data['newImported'] = this.newImported;
        data['opRecommend'] = this.opRecommend;
        data['ordered'] = this.ordered;
        data['playCount'] = this.playCount;
        data['privacy'] = this.privacy;
        data['specialType'] = this.specialType;
        data['status'] = this.status;
        data['subscribed'] = this.subscribed;
        data['subscribedCount'] = this.subscribedCount;
        data['titleImage'] = this.titleImage;
        data['totalDuration'] = this.totalDuration;
        data['trackCount'] = this.trackCount;
        data['trackNumberUpdateTime'] = this.trackNumberUpdateTime;
        data['trackUpdateTime'] = this.trackUpdateTime;
        data['updateTime'] = this.updateTime;
        data['userId'] = this.userId;


        if (this.creator != null) {
            data['creator'] = this.creator.toJson();
        }


        if (this.tags != null) {
            data['tags'] = this.tags;
        }

        return data;
    }
}

class Creator {
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
    int gender;
    bool mutual;
    String nickname;
    int province;
    Object remarkName;
    String signature;
    int userId;
    int userType;
    int vipType;

    Creator({this.accountStatus, this.authStatus, this.authority, this.avatarImgId, this.avatarImgIdStr, this.avatarImgId_str, this.avatarUrl, this.backgroundImgId, this.backgroundImgIdStr, this.backgroundUrl, this.birthday, this.city, this.defaultAvatar, this.description, this.detailDescription, this.djStatus, this.expertTags, this.experts, this.followed, this.gender, this.mutual, this.nickname, this.province, this.remarkName, this.signature, this.userId, this.userType, this.vipType});

    factory Creator.fromJson(Map<String, dynamic> json) {
        return Creator(
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