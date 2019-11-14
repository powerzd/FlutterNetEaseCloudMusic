class MessageResp {
    String msg;
    PromotionUrl promotionUrl;
    String title;
    int type;

    MessageResp({this.msg, this.promotionUrl, this.title, this.type});

    factory MessageResp.fromJson(Map<String, dynamic> json) {
        return MessageResp(
            msg: json['msg'],
            promotionUrl: json['promotionUrl'] != null ? PromotionUrl.fromJson(json['promotionUrl']) : null,
            title: json['title'],
            type: json['type'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['msg'] = this.msg;
        data['title'] = this.title;
        data['type'] = this.type;
        if (this.promotionUrl != null) {
            data['promotionUrl'] = this.promotionUrl.toJson();
        }
        return data;
    }
}

class PromotionUrl {
    int addTime;
    int cover;
    String coverStr;
    String coverUrl;
    int id;
    String text;
    String title;
    String url;

    PromotionUrl({this.addTime, this.cover, this.coverStr, this.coverUrl, this.id, this.text, this.title, this.url});

    factory PromotionUrl.fromJson(Map<String, dynamic> json) {
        return PromotionUrl(
            addTime: json['addTime'],
            cover: json['cover'],
            coverStr: json['coverStr'],
            coverUrl: json['coverUrl'],
            id: json['id'],
            text: json['text'],
            title: json['title'],
            url: json['url'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['addTime'] = this.addTime;
        data['cover'] = this.cover;
        data['coverStr'] = this.coverStr;
        data['coverUrl'] = this.coverUrl;
        data['id'] = this.id;
        data['text'] = this.text;
        data['title'] = this.title;
        data['url'] = this.url;
        return data;
    }
}