class DailyRecommendResp {
    int code;
    List<Recommend> recommend;

    DailyRecommendResp({this.code, this.recommend});

    factory DailyRecommendResp.fromJson(Map<String, dynamic> json) {
        return DailyRecommendResp(
            code: json['code'],
            recommend: json['recommend'] != null ? (json['recommend'] as List).map((i) => Recommend.fromJson(i)).toList() : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        if (this.recommend != null) {
            data['recommend'] = this.recommend.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Recommend {
    Album album;
    List<Artist> artists;
    String commentThreadId;
    String copyFrom;
    int copyright;
    int dayPlays;
    String disc;
    int duration;
    int fee;
    int ftype;
    int hearTime;
    int id;
    int mark;
    int mvid;
    String name;
    int no;
    int playedNum;
    int popularity;
    int position;
    String reason;
    String ringtone;
    List<Object> rtUrls;
    int rtype;
    int score;
    bool starred;
    int starredNum;
    int status;

    Recommend({this.album, this.artists, this.commentThreadId, this.copyFrom, this.copyright, this.dayPlays, this.disc, this.duration, this.fee, this.ftype, this.hearTime, this.id, this.mark, this.mvid, this.name, this.no, this.playedNum, this.popularity, this.position, this.reason, this.ringtone, this.rtUrls, this.rtype, this.score, this.starred, this.starredNum, this.status});

    factory Recommend.fromJson(Map<String, dynamic> json) {
        return Recommend(
            album: json['album'] != null ? Album.fromJson(json['album']) : null,
            artists: json['artists'] != null ? (json['artists'] as List).map((i) => Artist.fromJson(i)).toList() : null,
            commentThreadId: json['commentThreadId'],
            copyFrom: json['copyFrom'],
            copyright: json['copyright'],
            dayPlays: json['dayPlays'],
            disc: json['disc'],
            duration: json['duration'],
            fee: json['fee'],
            ftype: json['ftype'],
            hearTime: json['hearTime'],
            id: json['id'],
            mark: json['mark'],
            mvid: json['mvid'],
            name: json['name'],
            no: json['no'],
            playedNum: json['playedNum'],
            popularity: json['popularity'],
            position: json['position'],
            reason: json['reason'],
            ringtone: json['ringtone'],
            rtype: json['rtype'],
            score: json['score'],
            starred: json['starred'],
            starredNum: json['starredNum'],
            status: json['status'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['commentThreadId'] = this.commentThreadId;
        data['copyFrom'] = this.copyFrom;
        data['copyright'] = this.copyright;
        data['dayPlays'] = this.dayPlays;
        data['disc'] = this.disc;
        data['duration'] = this.duration;
        data['fee'] = this.fee;
        data['ftype'] = this.ftype;
        data['hearTime'] = this.hearTime;
        data['id'] = this.id;
        data['mark'] = this.mark;
        data['mvid'] = this.mvid;
        data['name'] = this.name;
        data['no'] = this.no;
        data['playedNum'] = this.playedNum;
        data['popularity'] = this.popularity;
        data['position'] = this.position;
        data['reason'] = this.reason;
        data['ringtone'] = this.ringtone;
        data['rtype'] = this.rtype;
        data['score'] = this.score;
        data['starred'] = this.starred;
        data['starredNum'] = this.starredNum;
        data['status'] = this.status;
        if (this.album != null) {
            data['album'] = this.album.toJson();
        }
        if (this.artists != null) {
            data['artists'] = this.artists.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Artist {
    int albumSize;
    List<Object> alias;
    String briefDesc;
    int id;
    int img1v1Id;
    String img1v1Url;
    int musicSize;
    String name;
    int picId;
    String picUrl;
    int topicPerson;
    String trans;

    Artist({this.albumSize, this.alias, this.briefDesc, this.id, this.img1v1Id, this.img1v1Url, this.musicSize, this.name, this.picId, this.picUrl, this.topicPerson, this.trans});

    factory Artist.fromJson(Map<String, dynamic> json) {
        return Artist(
            albumSize: json['albumSize'],
            briefDesc: json['briefDesc'],
            id: json['id'],
            img1v1Id: json['img1v1Id'],
            img1v1Url: json['img1v1Url'],
            musicSize: json['musicSize'],
            name: json['name'],
            picId: json['picId'],
            picUrl: json['picUrl'],
            topicPerson: json['topicPerson'],
            trans: json['trans'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['albumSize'] = this.albumSize;
        data['briefDesc'] = this.briefDesc;
        data['id'] = this.id;
        data['img1v1Id'] = this.img1v1Id;
        data['img1v1Url'] = this.img1v1Url;
        data['musicSize'] = this.musicSize;
        data['name'] = this.name;
        data['picId'] = this.picId;
        data['picUrl'] = this.picUrl;
        data['topicPerson'] = this.topicPerson;
        data['trans'] = this.trans;
        return data;
    }
}

class Album {
    List<Object> alias;
    String blurPicUrl;
    String briefDesc;
    int companyId;
    int copyrightId;
    String description;
    int id;
    int mark;
    String name;
    int pic;
    int picId;
    String picUrl;
    int publishTime;
    int size;
    List<Object> songs;
    int status;
    String subType;
    String tags;
    String type;

    Album({this.alias, this.blurPicUrl, this.briefDesc, this.companyId, this.copyrightId, this.description, this.id, this.mark, this.name, this.pic, this.picId, this.picUrl, this.publishTime, this.size, this.songs, this.status, this.subType, this.tags, this.type});

    factory Album.fromJson(Map<String, dynamic> json) {
        return Album(
            blurPicUrl: json['blurPicUrl'],
            briefDesc: json['briefDesc'],
            companyId: json['companyId'],
            copyrightId: json['copyrightId'],
            description: json['description'],
            id: json['id'],
            mark: json['mark'],
            name: json['name'],
            pic: json['pic'],
            picId: json['picId'],
            picUrl: json['picUrl'],
            publishTime: json['publishTime'],
            size: json['size'],
            status: json['status'],
            subType: json['subType'],
            tags: json['tags'],
            type: json['type'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['blurPicUrl'] = this.blurPicUrl;
        data['briefDesc'] = this.briefDesc;
        data['companyId'] = this.companyId;
        data['copyrightId'] = this.copyrightId;
        data['description'] = this.description;
        data['id'] = this.id;
        data['mark'] = this.mark;
        data['name'] = this.name;
        data['pic'] = this.pic;
        data['picId'] = this.picId;
        data['picUrl'] = this.picUrl;
        data['publishTime'] = this.publishTime;
        data['size'] = this.size;
        data['status'] = this.status;
        data['subType'] = this.subType;
        data['tags'] = this.tags;
        data['type'] = this.type;
        return data;
    }
}