class CommentResp {
    int code;
    List<Comment> comments;
    int total;

    CommentResp({this.code, this.comments, this.total});

    factory CommentResp.fromJson(Map<String, dynamic> json) {
        return CommentResp(
            code: json['code'],
            comments: json['comments'] != null ? (json['comments'] as List).map((i) => Comment.fromJson(i)).toList() : null,
            total: json['total'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        data['total'] = this.total;
        if (this.comments != null) {
            data['comments'] = this.comments.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Comment {
    String beRepliedContent;
    Object beRepliedExpressionUrl;
    BeRepliedUser beRepliedUser;
    String combindId;
    int commentLocationType;
    String content;
    Object expressionUrl;
    int parentCommentId;
    String resourceJson;
    int resourceType;
    int time;
    User user;

    Comment({this.beRepliedContent, this.beRepliedExpressionUrl, this.beRepliedUser, this.combindId, this.commentLocationType, this.content, this.expressionUrl, this.parentCommentId, this.resourceJson, this.resourceType, this.time, this.user});

    factory Comment.fromJson(Map<String, dynamic> json) {
        return Comment(
            beRepliedContent: json['beRepliedContent'],
            beRepliedUser: json['beRepliedUser'] != null ? BeRepliedUser.fromJson(json['beRepliedUser']) : null,
            combindId: json['combindId'],
            commentLocationType: json['commentLocationType'],
            content: json['content'],
            parentCommentId: json['parentCommentId'],
            resourceJson: json['resourceJson'],
            resourceType: json['resourceType'],
            time: json['time'],
            user: json['user'] != null ? User.fromJson(json['user']) : null,
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['beRepliedContent'] = this.beRepliedContent;
        data['combindId'] = this.combindId;
        data['commentLocationType'] = this.commentLocationType;
        data['content'] = this.content;
        data['parentCommentId'] = this.parentCommentId;
        data['resourceJson'] = this.resourceJson;
        data['resourceType'] = this.resourceType;
        data['time'] = this.time;
        if (this.beRepliedUser != null) {
            data['beRepliedUser'] = this.beRepliedUser.toJson();
        }
        if (this.user != null) {
            data['user'] = this.user.toJson();
        }
        return data;
    }
}

class BeRepliedUser {
    int authStatus;
    String avatarUrl;
    Object expertTags;
    Object experts;
    Object liveInfo;
    Object locationInfo;
    String nickname;
    Object remarkName;
    int userId;
    int userType;
    Object vipRights;
    int vipType;

    BeRepliedUser({this.authStatus, this.avatarUrl, this.expertTags, this.experts, this.liveInfo, this.locationInfo, this.nickname, this.remarkName, this.userId, this.userType, this.vipRights, this.vipType});

    factory BeRepliedUser.fromJson(Map<String, dynamic> json) {
        return BeRepliedUser(
            authStatus: json['authStatus'],
            avatarUrl: json['avatarUrl'],
            nickname: json['nickname'],
            userId: json['userId'],
            userType: json['userType'],
            vipType: json['vipType'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['authStatus'] = this.authStatus;
        data['avatarUrl'] = this.avatarUrl;
        data['nickname'] = this.nickname;
        data['userId'] = this.userId;
        data['userType'] = this.userType;
        data['vipType'] = this.vipType;
        return data;
    }
}

class User {
    int authStatus;
    String avatarUrl;
    Object expertTags;
    Object experts;
    Object liveInfo;
    Object locationInfo;
    String nickname;
    String remarkName;
    int userId;
    int userType;
    Object vipRights;
    int vipType;

    User({this.authStatus, this.avatarUrl, this.expertTags, this.experts, this.liveInfo, this.locationInfo, this.nickname, this.remarkName, this.userId, this.userType, this.vipRights, this.vipType});

    factory User.fromJson(Map<String, dynamic> json) {
        return User(
            authStatus: json['authStatus'],
            avatarUrl: json['avatarUrl'],
            nickname: json['nickname'],
            remarkName: json['remarkName'],
            userId: json['userId'],
            userType: json['userType'],
            vipType: json['vipType'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['authStatus'] = this.authStatus;
        data['avatarUrl'] = this.avatarUrl;
        data['nickname'] = this.nickname;
        data['remarkName'] = this.remarkName;
        data['userId'] = this.userId;
        data['userType'] = this.userType;
        data['vipType'] = this.vipType;
        return data;
    }
}