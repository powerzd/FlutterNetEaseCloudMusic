class NewDiskResp {
    List<Album> albums;
    int code;
    int total;

    NewDiskResp({this.albums, this.code, this.total});

    factory NewDiskResp.fromJson(Map<String, dynamic> json) {
        return NewDiskResp(
            albums: json['albums'] != null ? (json['albums'] as List).map((i) => Album.fromJson(i)).toList() : null, 
            code: json['code'], 
            total: json['total'], 
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['total'] = this.total;
        if (this.albums != null) {
            data['albums'] = this.albums.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Album {
    List<Object> alias;
    Artist artist;
    List<ArtistX> artists;
    String blurPicUrl;
    String briefDesc;
    String commentThreadId;
    String company;
    int companyId;
    int copyrightId;
    String description;
    int id;
    int mark;
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
    List<String> transNames;
    String type;

    Album({this.alias, this.artist, this.artists, this.blurPicUrl, this.briefDesc, this.commentThreadId, this.company, this.companyId, this.copyrightId, this.description, this.id, this.mark, this.name, this.onSale, this.paid, this.pic, this.picId, this.picId_str, this.picUrl, this.publishTime, this.size, this.songs, this.status, this.subType, this.tags, this.transNames, this.type});

    factory Album.fromJson(Map<String, dynamic> json) {
        return Album(
            artist: json['artist'] != null ? Artist.fromJson(json['artist']) : null,
            artists: json['artists'] != null ? (json['artists'] as List).map((i) => ArtistX.fromJson(i)).toList() : null, 
            blurPicUrl: json['blurPicUrl'], 
            briefDesc: json['briefDesc'], 
            commentThreadId: json['commentThreadId'], 
            company: json['company'], 
            companyId: json['companyId'], 
            copyrightId: json['copyrightId'], 
            description: json['description'], 
            id: json['id'], 
            mark: json['mark'], 
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
            transNames: json['transNames'] != null ? new List<String>.from(json['transNames']) : null, 
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
        data['mark'] = this.mark;
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
        if (this.transNames != null) {
            data['transNames'] = this.transNames;
        }
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