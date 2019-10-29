class NewMusicResp {
    List<Data> data;
    int code;

    NewMusicResp({this.data, this.code});

    factory NewMusicResp.fromJson(Map<String, dynamic> json) {
        return NewMusicResp(
            data: json['data'] != null ? (json['data'] as List).map((i) => Data.fromJson(i)).toList() : null, 
            code: json['code'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        if (this.data != null) {
            data['data'] = this.data.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Data {
    Album album;
    List<Object> alias;
    List<Artist> artists;
    Object audition;
    BMusic bMusic;
    String commentThreadId;
    String copyFrom;
    int copyrightId;
    Object crbt;
    int dayPlays;
    String disc;
    int duration;
    bool exclusive;
    int fee;
    int ftype;
    HMusic hMusic;
    int hearTime;
    int id;
    LMusic lMusic;
    MMusic mMusic;
    String mp3Url;
    int mvid;
    String name;
    int no;
    int playedNum;
    int popularity;
    int position;
    Privilege privilege;
    String ringtone;
    Object rtUrl;
    Object rtUrls;
    int rtype;
    Object rurl;
    int score;
    bool starred;
    int starredNum;
    int status;

    Data({this.album, this.alias, this.artists, this.audition, this.bMusic, this.commentThreadId, this.copyFrom, this.copyrightId, this.crbt, this.dayPlays, this.disc, this.duration, this.exclusive, this.fee, this.ftype, this.hMusic, this.hearTime, this.id, this.lMusic, this.mMusic, this.mp3Url, this.mvid, this.name, this.no, this.playedNum, this.popularity, this.position, this.privilege, this.ringtone, this.rtUrl, this.rtUrls, this.rtype, this.rurl, this.score, this.starred, this.starredNum, this.status});

    factory Data.fromJson(Map<String, dynamic> json) {
        return Data(
            album: json['album'] != null ? Album.fromJson(json['album']) : null, 
            artists: json['artists'] != null ? (json['artists'] as List).map((i) => Artist.fromJson(i)).toList() : null,
            bMusic: json['bMusic'] != null ? BMusic.fromJson(json['bMusic']) : null,
            commentThreadId: json['commentThreadId'], 
            copyFrom: json['copyFrom'], 
            copyrightId: json['copyrightId'], 
            dayPlays: json['dayPlays'],
            disc: json['disc'], 
            duration: json['duration'], 
            exclusive: json['exclusive'], 
            fee: json['fee'], 
            ftype: json['ftype'], 
            hMusic: json['hMusic'] != null ? HMusic.fromJson(json['hMusic']) : null, 
            hearTime: json['hearTime'], 
            id: json['id'], 
            lMusic: json['lMusic'] != null ? LMusic.fromJson(json['lMusic']) : null, 
            mMusic: json['mMusic'] != null ? MMusic.fromJson(json['mMusic']) : null, 
            mp3Url: json['mp3Url'], 
            mvid: json['mvid'], 
            name: json['name'], 
            no: json['no'], 
            playedNum: json['playedNum'], 
            popularity: json['popularity'], 
            position: json['position'], 
            privilege: json['privilege'] != null ? Privilege.fromJson(json['privilege']) : null, 
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
        data['copyrightId'] = this.copyrightId;
        data['dayPlays'] = this.dayPlays;
        data['disc'] = this.disc;
        data['duration'] = this.duration;
        data['exclusive'] = this.exclusive;
        data['fee'] = this.fee;
        data['ftype'] = this.ftype;
        data['hearTime'] = this.hearTime;
        data['id'] = this.id;
        data['mp3Url'] = this.mp3Url;
        data['mvid'] = this.mvid;
        data['name'] = this.name;
        data['no'] = this.no;
        data['playedNum'] = this.playedNum;
        data['popularity'] = this.popularity;
        data['position'] = this.position;
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

        if (this.bMusic != null) {
            data['bMusic'] = this.bMusic.toJson();
        }

        if (this.hMusic != null) {
            data['hMusic'] = this.hMusic.toJson();
        }
        if (this.lMusic != null) {
            data['lMusic'] = this.lMusic.toJson();
        }
        if (this.mMusic != null) {
            data['mMusic'] = this.mMusic.toJson();
        }
        if (this.privilege != null) {
            data['privilege'] = this.privilege.toJson();
        }

        return data;
    }
}

class HMusic {
    int bitrate;
    int dfsId;
    String extension;
    int id;
    Object name;
    int playTime;
    int size;
    int sr;
    int volumeDelta;

    HMusic({this.bitrate, this.dfsId, this.extension, this.id, this.name, this.playTime, this.size, this.sr, this.volumeDelta});

    factory HMusic.fromJson(Map<String, dynamic> json) {
        return HMusic(
            bitrate: json['bitrate'], 
            dfsId: json['dfsId'], 
            extension: json['extension'], 
            id: json['id'], 
            playTime: json['playTime'],
            size: json['size'], 
            sr: json['sr'], 
            volumeDelta: json['volumeDelta'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['bitrate'] = this.bitrate;
        data['dfsId'] = this.dfsId;
        data['extension'] = this.extension;
        data['id'] = this.id;
        data['playTime'] = this.playTime;
        data['size'] = this.size;
        data['sr'] = this.sr;
        data['volumeDelta'] = this.volumeDelta;
        return data;
    }
}

class Privilege {
    int cp;
    bool cs;
    int dl;
    int fee;
    int fl;
    int flag;
    int id;
    int maxbr;
    int payed;
    int pl;
    bool preSell;
    int sp;
    int st;
    int subp;
    bool toast;

    Privilege({this.cp, this.cs, this.dl, this.fee, this.fl, this.flag, this.id, this.maxbr, this.payed, this.pl, this.preSell, this.sp, this.st, this.subp, this.toast});

    factory Privilege.fromJson(Map<String, dynamic> json) {
        return Privilege(
            cp: json['cp'], 
            cs: json['cs'], 
            dl: json['dl'], 
            fee: json['fee'], 
            fl: json['fl'], 
            flag: json['flag'], 
            id: json['id'], 
            maxbr: json['maxbr'], 
            payed: json['payed'], 
            pl: json['pl'], 
            preSell: json['preSell'], 
            sp: json['sp'], 
            st: json['st'], 
            subp: json['subp'], 
            toast: json['toast'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['cp'] = this.cp;
        data['cs'] = this.cs;
        data['dl'] = this.dl;
        data['fee'] = this.fee;
        data['fl'] = this.fl;
        data['flag'] = this.flag;
        data['id'] = this.id;
        data['maxbr'] = this.maxbr;
        data['payed'] = this.payed;
        data['pl'] = this.pl;
        data['preSell'] = this.preSell;
        data['sp'] = this.sp;
        data['st'] = this.st;
        data['subp'] = this.subp;
        data['toast'] = this.toast;
        return data;
    }
}

class MMusic {
    int bitrate;
    int dfsId;
    String extension;
    int id;
    Object name;
    int playTime;
    int size;
    int sr;
    int volumeDelta;

    MMusic({this.bitrate, this.dfsId, this.extension, this.id, this.name, this.playTime, this.size, this.sr, this.volumeDelta});

    factory MMusic.fromJson(Map<String, dynamic> json) {
        return MMusic(
            bitrate: json['bitrate'], 
            dfsId: json['dfsId'], 
            extension: json['extension'], 
            id: json['id'], 
            playTime: json['playTime'],
            size: json['size'], 
            sr: json['sr'], 
            volumeDelta: json['volumeDelta'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['bitrate'] = this.bitrate;
        data['dfsId'] = this.dfsId;
        data['extension'] = this.extension;
        data['id'] = this.id;
        data['playTime'] = this.playTime;
        data['size'] = this.size;
        data['sr'] = this.sr;
        data['volumeDelta'] = this.volumeDelta;
        return data;
    }
}

class BMusic {
    int bitrate;
    int dfsId;
    String extension;
    int id;
    Object name;
    int playTime;
    int size;
    int sr;
    int volumeDelta;

    BMusic({this.bitrate, this.dfsId, this.extension, this.id, this.name, this.playTime, this.size, this.sr, this.volumeDelta});

    factory BMusic.fromJson(Map<String, dynamic> json) {
        return BMusic(
            bitrate: json['bitrate'], 
            dfsId: json['dfsId'], 
            extension: json['extension'], 
            id: json['id'], 
            playTime: json['playTime'],
            size: json['size'], 
            sr: json['sr'], 
            volumeDelta: json['volumeDelta'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['bitrate'] = this.bitrate;
        data['dfsId'] = this.dfsId;
        data['extension'] = this.extension;
        data['id'] = this.id;
        data['playTime'] = this.playTime;
        data['size'] = this.size;
        data['sr'] = this.sr;
        data['volumeDelta'] = this.volumeDelta;
        return data;
    }
}

class Artist {
    int albumSize;
    List<Object> alias;
    String briefDesc;
    bool followed;
    int id;
    int img1v1Id;
    String img1v1Id_str;
    String img1v1Url;
    int musicSize;
    String name;
    int picId;
    String picUrl;
    int topicPerson;
    String trans;

    Artist({this.albumSize, this.alias, this.briefDesc, this.followed, this.id, this.img1v1Id, this.img1v1Id_str, this.img1v1Url, this.musicSize, this.name, this.picId, this.picUrl, this.topicPerson, this.trans});

    factory Artist.fromJson(Map<String, dynamic> json) {
        return Artist(
            albumSize: json['albumSize'], 
            briefDesc: json['briefDesc'],
            followed: json['followed'], 
            id: json['id'], 
            img1v1Id: json['img1v1Id'], 
            img1v1Id_str: json['img1v1Id_str'], 
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
        data['followed'] = this.followed;
        data['id'] = this.id;
        data['img1v1Id'] = this.img1v1Id;
        data['img1v1Id_str'] = this.img1v1Id_str;
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

class LMusic {
    int bitrate;
    int dfsId;
    String extension;
    int id;
    Object name;
    int playTime;
    int size;
    int sr;
    int volumeDelta;

    LMusic({this.bitrate, this.dfsId, this.extension, this.id, this.name, this.playTime, this.size, this.sr, this.volumeDelta});

    factory LMusic.fromJson(Map<String, dynamic> json) {
        return LMusic(
            bitrate: json['bitrate'], 
            dfsId: json['dfsId'], 
            extension: json['extension'], 
            id: json['id'], 
            playTime: json['playTime'],
            size: json['size'], 
            sr: json['sr'], 
            volumeDelta: json['volumeDelta'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['bitrate'] = this.bitrate;
        data['dfsId'] = this.dfsId;
        data['extension'] = this.extension;
        data['id'] = this.id;
        data['playTime'] = this.playTime;
        data['size'] = this.size;
        data['sr'] = this.sr;
        data['volumeDelta'] = this.volumeDelta;
        return data;
    }
}

class Album {
    List<Object> alias;
    ArtistXX artist;
    List<ArtistX> artists;
    String blurPicUrl;
    String briefDesc;
    String commentThreadId;
    String company;
    int companyId;
    int copyrightId;
    String description;
    int id;
    String name;
    bool onSale;
    bool paid;
    int pic;
    int picId;
    String picId_str;
    String picUrl;
    int publishTime;
    int size;
    List<Object> songs;
    int status;
    String subType;
    String tags;
    String type;

    Album({this.alias, this.artist, this.artists, this.blurPicUrl, this.briefDesc, this.commentThreadId, this.company, this.companyId, this.copyrightId, this.description, this.id, this.name, this.onSale, this.paid, this.pic, this.picId, this.picId_str, this.picUrl, this.publishTime, this.size, this.songs, this.status, this.subType, this.tags, this.type});

    factory Album.fromJson(Map<String, dynamic> json) {
        return Album(
            artist: json['artist'] != null ? ArtistXX.fromJson(json['artist']) : null,
            artists: json['artists'] != null ? (json['artists'] as List).map((i) => ArtistX.fromJson(i)).toList() : null, 
            blurPicUrl: json['blurPicUrl'], 
            briefDesc: json['briefDesc'], 
            commentThreadId: json['commentThreadId'], 
            company: json['company'], 
            companyId: json['companyId'], 
            copyrightId: json['copyrightId'], 
            description: json['description'], 
            id: json['id'], 
            name: json['name'], 
            onSale: json['onSale'], 
            paid: json['paid'], 
            pic: json['pic'], 
            picId: json['picId'], 
            picId_str: json['picId_str'], 
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
        data['commentThreadId'] = this.commentThreadId;
        data['company'] = this.company;
        data['companyId'] = this.companyId;
        data['copyrightId'] = this.copyrightId;
        data['description'] = this.description;
        data['id'] = this.id;
        data['name'] = this.name;
        data['onSale'] = this.onSale;
        data['paid'] = this.paid;
        data['pic'] = this.pic;
        data['picId'] = this.picId;
        data['picId_str'] = this.picId_str;
        data['picUrl'] = this.picUrl;
        data['publishTime'] = this.publishTime;
        data['size'] = this.size;
        data['status'] = this.status;
        data['subType'] = this.subType;
        data['tags'] = this.tags;
        data['type'] = this.type;
        if (this.artist != null) {
            data['artist'] = this.artist.toJson();
        }
        if (this.artists != null) {
            data['artists'] = this.artists.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class ArtistX {
    int albumSize;
    List<Object> alias;
    String briefDesc;
    bool followed;
    int id;
    int img1v1Id;
    String img1v1Id_str;
    String img1v1Url;
    int musicSize;
    String name;
    int picId;
    String picUrl;
    int topicPerson;
    String trans;

    ArtistX({this.albumSize, this.alias, this.briefDesc, this.followed, this.id, this.img1v1Id, this.img1v1Id_str, this.img1v1Url, this.musicSize, this.name, this.picId, this.picUrl, this.topicPerson, this.trans});

    factory ArtistX.fromJson(Map<String, dynamic> json) {
        return ArtistX(
            albumSize: json['albumSize'], 
            briefDesc: json['briefDesc'],
            followed: json['followed'], 
            id: json['id'], 
            img1v1Id: json['img1v1Id'], 
            img1v1Id_str: json['img1v1Id_str'], 
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
        data['followed'] = this.followed;
        data['id'] = this.id;
        data['img1v1Id'] = this.img1v1Id;
        data['img1v1Id_str'] = this.img1v1Id_str;
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

class ArtistXX {
    int albumSize;
    List<Object> alias;
    String briefDesc;
    bool followed;
    int id;
    int img1v1Id;
    String img1v1Id_str;
    String img1v1Url;
    int musicSize;
    String name;
    int picId;
    String picUrl;
    int topicPerson;
    String trans;

    ArtistXX({this.albumSize, this.alias, this.briefDesc, this.followed, this.id, this.img1v1Id, this.img1v1Id_str, this.img1v1Url, this.musicSize, this.name, this.picId, this.picUrl, this.topicPerson, this.trans});

    factory ArtistXX.fromJson(Map<String, dynamic> json) {
        return ArtistXX(
            albumSize: json['albumSize'], 
            briefDesc: json['briefDesc'],
            followed: json['followed'], 
            id: json['id'], 
            img1v1Id: json['img1v1Id'], 
            img1v1Id_str: json['img1v1Id_str'], 
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
        data['followed'] = this.followed;
        data['id'] = this.id;
        data['img1v1Id'] = this.img1v1Id;
        data['img1v1Id_str'] = this.img1v1Id_str;
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