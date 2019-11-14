class HotCommentResp {
    List<Data> data;
    int code;
    String message;

    HotCommentResp({this.data, this.code, this.message});

    factory HotCommentResp.fromJson(Map<String, dynamic> json) {
        return HotCommentResp(
            data: json['data'] != null ? (json['data'] as List).map((i) => Data.fromJson(i)).toList() : null, 
            code: json['code'], 
            message: json['message'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['message'] = this.message;
        if (this.data != null) {
            data['data'] = this.data.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Data {
    String content;
    int id;
    bool liked;
    int likedCount;
    int replyCount;
    SimpleResourceInfo simpleResourceInfo;
    SimpleUserInfo simpleUserInfo;
    int time;

    Data({this.content, this.id, this.liked, this.likedCount, this.replyCount, this.simpleResourceInfo, this.simpleUserInfo, this.time});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            content: json['content'], 
            id: json['id'], 
            liked: json['liked'], 
            likedCount: json['likedCount'], 
            replyCount: json['replyCount'], 
            simpleResourceInfo: json['simpleResourceInfo'] != null ? SimpleResourceInfo.fromJson(json['simpleResourceInfo']) : null, 
            simpleUserInfo: json['simpleUserInfo'] != null ? SimpleUserInfo.fromJson(json['simpleUserInfo']) : null, 
            time: json['time'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['content'] = this.content;
        data['id'] = this.id;
        data['liked'] = this.liked;
        data['likedCount'] = this.likedCount;
        data['replyCount'] = this.replyCount;
        data['time'] = this.time;
        if (this.simpleResourceInfo != null) {
            data['simpleResourceInfo'] = this.simpleResourceInfo.toJson();
        }
        if (this.simpleUserInfo != null) {
            data['simpleUserInfo'] = this.simpleUserInfo.toJson();
        }
        return data;
    }
}

class SimpleResourceInfo {
    List<Artist> artists;
    String name;
    Privilege privilege;
    Song song;
    String songCoverUrl;
    int songId;

    SimpleResourceInfo({this.artists, this.name, this.privilege, this.song, this.songCoverUrl, this.songId});

    factory SimpleResourceInfo.fromJson(Map<String, dynamic> json) {
        return SimpleResourceInfo(
            artists: json['artists'] != null ? (json['artists'] as List).map((i) => Artist.fromJson(i)).toList() : null, 
            name: json['name'], 
            privilege: json['privilege'] != null ? Privilege.fromJson(json['privilege']) : null, 
            song: json['song'] != null ? Song.fromJson(json['song']) : null, 
            songCoverUrl: json['songCoverUrl'], 
            songId: json['songId'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['name'] = this.name;
        data['songCoverUrl'] = this.songCoverUrl;
        data['songId'] = this.songId;
        if (this.artists != null) {
            data['artists'] = this.artists.map((v) => v.toJson()).toList();
        }
        if (this.privilege != null) {
            data['privilege'] = this.privilege.toJson();
        }
        if (this.song != null) {
            data['song'] = this.song.toJson();
        }
        return data;
    }
}

class Privilege {
    bool cs;
    int fee;
    int fl;
    int flag;
    int id;
    int maxbr;
    int payed;
    bool preSell;
    bool toast;

    Privilege({this.cs, this.fee, this.fl, this.flag, this.id, this.maxbr, this.payed, this.preSell, this.toast});

    factory Privilege.fromJson(Map<String, dynamic> json) {
        return Privilege(
            cs: json['cs'], 
            fee: json['fee'], 
            fl: json['fl'], 
            flag: json['flag'], 
            id: json['id'], 
            maxbr: json['maxbr'], 
            payed: json['payed'], 
            preSell: json['preSell'], 
            toast: json['toast'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['cs'] = this.cs;
        data['fee'] = this.fee;
        data['fl'] = this.fl;
        data['flag'] = this.flag;
        data['id'] = this.id;
        data['maxbr'] = this.maxbr;
        data['payed'] = this.payed;
        data['preSell'] = this.preSell;
        data['toast'] = this.toast;
        return data;
    }
}

class Song {
    List<String> alia;
    String cd;
    int copyright;
    int cp;
    int djId;
    int fee;
    int ftype;
    int id;
    int mst;
    int mv;
    String name;
    int no;
    int pop;
    int publishTime;
    int rtype;
    int s_id;
    int v;

    Song({this.alia, this.cd, this.copyright, this.cp, this.djId, this.fee, this.ftype, this.id, this.mst, this.mv, this.name, this.no, this.pop, this.publishTime, this.rtype, this.s_id, this.v});

    factory Song.fromJson(Map<String, dynamic> json) {
        return Song(
            alia: json['alia'] != null ? new List<String>.from(json['alia']) : null, 
            cd: json['cd'], 
            copyright: json['copyright'], 
            cp: json['cp'], 
            djId: json['djId'], 
            fee: json['fee'], 
            ftype: json['ftype'], 
            id: json['id'], 
            mst: json['mst'], 
            mv: json['mv'], 
            name: json['name'], 
            no: json['no'], 
            pop: json['pop'], 
            publishTime: json['publishTime'], 
            rtype: json['rtype'], 
            s_id: json['s_id'], 
            v: json['v'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['cd'] = this.cd;
        data['copyright'] = this.copyright;
        data['cp'] = this.cp;
        data['djId'] = this.djId;
        data['fee'] = this.fee;
        data['ftype'] = this.ftype;
        data['id'] = this.id;
        data['mst'] = this.mst;
        data['mv'] = this.mv;
        data['name'] = this.name;
        data['no'] = this.no;
        data['pop'] = this.pop;
        data['publishTime'] = this.publishTime;
        data['rtype'] = this.rtype;
        data['s_id'] = this.s_id;
        data['v'] = this.v;
        if (this.alia != null) {
            data['alia'] = this.alia;
        }
        return data;
    }
}

class Artist {
    int id;
    String name;

    Artist({this.id, this.name});

    factory Artist.fromJson(Map<String, dynamic> json) {
        return Artist(
            id: json['id'], 
            name: json['name'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        return data;
    }
}

class SimpleUserInfo {
    String avatar;
    bool followed;
    String nickname;
    int userId;
    int userType;

    SimpleUserInfo({this.avatar, this.followed, this.nickname, this.userId, this.userType});

    factory SimpleUserInfo.fromJson(Map<String, dynamic> json) {
        return SimpleUserInfo(
            avatar: json['avatar'], 
            followed: json['followed'], 
            nickname: json['nickname'], 
            userId: json['userId'], 
            userType: json['userType'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['avatar'] = this.avatar;
        data['followed'] = this.followed;
        data['nickname'] = this.nickname;
        data['userId'] = this.userId;
        data['userType'] = this.userType;
        return data;
    }
}