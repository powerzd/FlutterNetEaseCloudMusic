class SubCountResp {
    int artistCount;
    int code;
    int createDjRadioCount;
    int createdPlaylistCount;
    int djRadioCount;
    int mvCount;
    int newProgramCount;
    int programCount;
    int subPlaylistCount;

    SubCountResp({this.artistCount, this.code, this.createDjRadioCount, this.createdPlaylistCount, this.djRadioCount, this.mvCount, this.newProgramCount, this.programCount, this.subPlaylistCount});

    factory SubCountResp.fromJson(Map<String, dynamic> json) {
        return SubCountResp(
            artistCount: json['artistCount'],
            code: json['code'],
            createDjRadioCount: json['createDjRadioCount'],
            createdPlaylistCount: json['createdPlaylistCount'],
            djRadioCount: json['djRadioCount'],
            mvCount: json['mvCount'],
            newProgramCount: json['newProgramCount'],
            programCount: json['programCount'],
            subPlaylistCount: json['subPlaylistCount'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['artistCount'] = this.artistCount;
        data['code'] = this.code;
        data['createDjRadioCount'] = this.createDjRadioCount;
        data['createdPlaylistCount'] = this.createdPlaylistCount;
        data['djRadioCount'] = this.djRadioCount;
        data['mvCount'] = this.mvCount;
        data['newProgramCount'] = this.newProgramCount;
        data['programCount'] = this.programCount;
        data['subPlaylistCount'] = this.subPlaylistCount;
        return data;
    }
}