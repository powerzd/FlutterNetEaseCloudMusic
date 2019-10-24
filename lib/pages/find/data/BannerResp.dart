class BannerResp {
    List<Banner> banners;
    int code;

    BannerResp({this.banners, this.code});

    factory BannerResp.fromJson(Map<String, dynamic> json) {
        return BannerResp(
            banners: json['banners'] != null ? (json['banners'] as List).map((i) => Banner.fromJson(i)).toList() : null,
            code: json['code'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['code'] = this.code;
        if (this.banners != null) {
            data['banners'] = this.banners.map((v) => v.toJson()).toList();
        }
        return data;
    }
}

class Banner {
    String bannerId;
    String encodeId;
    bool exclusive;
    List<Object> monitorClickList;
    List<Object> monitorImpressList;
    String pic;
    String requestId;
    String scm;
    Object showContext;
    int targetId;
    int targetType;
    String titleColor;
    String typeTitle;
    Object video;

    Banner({this.bannerId, this.encodeId, this.exclusive,  this.monitorClickList,  this.monitorImpressList, this.pic, this.requestId, this.scm,  this.showContext,  this.targetId, this.targetType, this.titleColor, this.typeTitle,  this.video});

    factory Banner.fromJson(Map<String, dynamic> json) {
        return Banner(
            bannerId: json['bannerId'],
            encodeId: json['encodeId'],
            exclusive: json['exclusive'],
            pic: json['pic'],
            requestId: json['requestId'],
            scm: json['scm'],
            targetId: json['targetId'],
            targetType: json['targetType'],
            titleColor: json['titleColor'],
            typeTitle: json['typeTitle'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['bannerId'] = this.bannerId;
        data['encodeId'] = this.encodeId;
        data['exclusive'] = this.exclusive;
        data['pic'] = this.pic;
        data['requestId'] = this.requestId;
        data['scm'] = this.scm;
        data['targetId'] = this.targetId;
        data['targetType'] = this.targetType;
        data['titleColor'] = this.titleColor;
        data['typeTitle'] = this.typeTitle;
        return data;
    }
}

class Song {
    Object a;
    Al al;
    List<Object> alia;
    List<Ar> ar;
    String cd;
    String cf;
    int copyright;
    int cp;
    Object crbt;
    int djId;
    int dt;
    int fee;
    int ftype;
    H h;
    int id;
    L l;
    M m;
    int mark;
    int mst;
    int mv;
    String name;
    int no;
    int pop;
    Privilege privilege;
    int pst;
    int publishTime;
    String rt;
    Object rtUrl;
    List<Object> rtUrls;
    int rtype;
    Object rurl;
    int s_id;
    int st;
    int t;
    int v;

    Song({this.a, this.al, this.alia, this.ar, this.cd, this.cf, this.copyright, this.cp, this.crbt, this.djId, this.dt, this.fee, this.ftype, this.h, this.id, this.l, this.m, this.mark, this.mst, this.mv, this.name, this.no, this.pop, this.privilege, this.pst, this.publishTime, this.rt, this.rtUrl, this.rtUrls, this.rtype, this.rurl, this.s_id, this.st, this.t, this.v});

    factory Song.fromJson(Map<String, dynamic> json) {
        return Song(
            al: json['al'] != null ? Al.fromJson(json['al']) : null,
            ar: json['ar'] != null ? (json['ar'] as List).map((i) => Ar.fromJson(i)).toList() : null,
            cd: json['cd'],
            cf: json['cf'],
            copyright: json['copyright'],
            cp: json['cp'],
            djId: json['djId'],
            dt: json['dt'],
            fee: json['fee'],
            ftype: json['ftype'],
            h: json['h'] != null ? H.fromJson(json['h']) : null,
            id: json['id'],
            l: json['l'] != null ? L.fromJson(json['l']) : null,
            m: json['m'] != null ? M.fromJson(json['m']) : null,
            mark: json['mark'],
            mst: json['mst'],
            mv: json['mv'],
            name: json['name'],
            no: json['no'],
            pop: json['pop'],
            privilege: json['privilege'] != null ? Privilege.fromJson(json['privilege']) : null,
            pst: json['pst'],
            publishTime: json['publishTime'],
            rt: json['rt'],
            rtype: json['rtype'],
            s_id: json['s_id'],
            st: json['st'],
            t: json['t'],
            v: json['v'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['cd'] = this.cd;
        data['cf'] = this.cf;
        data['copyright'] = this.copyright;
        data['cp'] = this.cp;
        data['djId'] = this.djId;
        data['dt'] = this.dt;
        data['fee'] = this.fee;
        data['ftype'] = this.ftype;
        data['id'] = this.id;
        data['mark'] = this.mark;
        data['mst'] = this.mst;
        data['mv'] = this.mv;
        data['name'] = this.name;
        data['no'] = this.no;
        data['pop'] = this.pop;
        data['pst'] = this.pst;
        data['publishTime'] = this.publishTime;
        data['rt'] = this.rt;
        data['rtype'] = this.rtype;
        data['s_id'] = this.s_id;
        data['st'] = this.st;
        data['t'] = this.t;
        data['v'] = this.v;

        if (this.al != null) {
            data['al'] = this.al.toJson();
        }

        if (this.ar != null) {
            data['ar'] = this.ar.map((v) => v.toJson()).toList();
        }

        if (this.h != null) {
            data['h'] = this.h.toJson();
        }
        if (this.l != null) {
            data['l'] = this.l.toJson();
        }
        if (this.m != null) {
            data['m'] = this.m.toJson();
        }
        if (this.privilege != null) {
            data['privilege'] = this.privilege.toJson();
        }

        return data;
    }
}

class Ar {
    List<Object> alias;
    int id;
    String name;
    List<Object> tns;

    Ar({this.alias, this.id, this.name, this.tns});

    factory Ar.fromJson(Map<String, dynamic> json) {
        return Ar(
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

class H {
    int br;
    int fid;
    int size;
    int vd;

    H({this.br, this.fid, this.size, this.vd});

    factory H.fromJson(Map<String, dynamic> json) {
        return H(
            br: json['br'],
            fid: json['fid'],
            size: json['size'],
            vd: json['vd'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['br'] = this.br;
        data['fid'] = this.fid;
        data['size'] = this.size;
        data['vd'] = this.vd;
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

class Al {
    int id;
    String name;
    int pic;
    String picUrl;
    String pic_str;
    List<Object> tns;

    Al({this.id, this.name, this.pic, this.picUrl, this.pic_str, this.tns});

    factory Al.fromJson(Map<String, dynamic> json) {
        return Al(
            id: json['id'],
            name: json['name'],
            pic: json['pic'],
            picUrl: json['picUrl'],
            pic_str: json['pic_str'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['id'] = this.id;
        data['name'] = this.name;
        data['pic'] = this.pic;
        data['picUrl'] = this.picUrl;
        data['pic_str'] = this.pic_str;
        return data;
    }
}

class M {
    int br;
    int fid;
    int size;
    int vd;

    M({this.br, this.fid, this.size, this.vd});

    factory M.fromJson(Map<String, dynamic> json) {
        return M(
            br: json['br'],
            fid: json['fid'],
            size: json['size'],
            vd: json['vd'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['br'] = this.br;
        data['fid'] = this.fid;
        data['size'] = this.size;
        data['vd'] = this.vd;
        return data;
    }
}

class L {
    int br;
    int fid;
    int size;
    int vd;

    L({this.br, this.fid, this.size, this.vd});

    factory L.fromJson(Map<String, dynamic> json) {
        return L(
            br: json['br'],
            fid: json['fid'],
            size: json['size'],
            vd: json['vd'],
        );
    }

    Map<String, dynamic> toJson() {
        final Map<String, dynamic> data = new Map<String, dynamic>();
        data['br'] = this.br;
        data['fid'] = this.fid;
        data['size'] = this.size;
        data['vd'] = this.vd;
        return data;
    }
}