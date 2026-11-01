package com.bytedance.sdk.component.ox.d;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class ia {

    /* renamed from: a, reason: collision with root package name */
    public static final ia f2113a;
    public static final ia ae;
    public static final ia ah;

    /* renamed from: b, reason: collision with root package name */
    public static final ia f2114b;
    public static final ia bf;
    public static final ia bl;
    public static final ia bn;
    public static final ia bu;
    public static final ia bx;
    public static final ia by;

    /* renamed from: c, reason: collision with root package name */
    public static final ia f2115c;
    public static final ia cc;
    public static final ia cd;
    public static final ia ce;
    public static final ia cv;

    /* renamed from: d, reason: collision with root package name */
    public static final ia f2116d;
    public static final ia dc;
    public static final ia dk;
    public static final ia dn;
    static final Comparator<String> dq;
    public static final ia ds;

    /* renamed from: e, reason: collision with root package name */
    public static final ia f2117e;
    private static final Map<String, ia> el;
    public static final ia en;
    public static final ia er;

    /* renamed from: f, reason: collision with root package name */
    public static final ia f2118f;
    public static final ia fd;
    public static final ia fp;
    public static final ia fq;
    public static final ia fw;
    public static final ia fx;

    /* renamed from: g, reason: collision with root package name */
    public static final ia f2119g;
    public static final ia gh;
    public static final ia gl;
    public static final ia gm;
    public static final ia gx;
    public static final ia h;
    public static final ia ha;
    public static final ia hf;
    public static final ia hy;
    public static final ia i;
    public static final ia ia;
    public static final ia ig;
    public static final ia ij;
    public static final ia io;
    public static final ia ip;
    public static final ia ir;
    public static final ia iw;
    public static final ia j;
    public static final ia ji;
    public static final ia jn;
    public static final ia jo;
    public static final ia jv;
    public static final ia jw;
    public static final ia jy;
    public static final ia k;
    public static final ia kf;
    public static final ia kk;
    public static final ia kx;
    public static final ia l;
    public static final ia le;
    public static final ia lk;
    public static final ia m;
    public static final ia mc;
    public static final ia mn;
    public static final ia mp;
    public static final ia n;
    public static final ia nh;
    public static final ia no;
    public static final ia nt;
    public static final ia ny;
    public static final ia o;
    public static final ia ob;
    public static final ia oh;
    public static final ia op;
    public static final ia ox;
    public static final ia p;
    public static final ia pa;
    public static final ia py;
    public static final ia q;
    public static final ia qz;
    public static final ia r;
    public static final ia rp;
    public static final ia s;
    public static final ia sc;
    public static final ia sy;
    public static final ia t;
    public static final ia tl;
    public static final ia tu;
    public static final ia tv;
    public static final ia u;
    public static final ia uh;
    public static final ia ux;
    public static final ia v;
    public static final ia vf;
    public static final ia vw;
    public static final ia w;
    public static final ia wi;
    public static final ia wn;
    public static final ia wp;
    public static final ia wq;
    public static final ia ws;
    public static final ia x;
    public static final ia xi;
    public static final ia xj;
    public static final ia xv;
    public static final ia xx;
    public static final ia xz;
    public static final ia y;
    public static final ia yo;
    public static final ia yy;
    public static final ia z;
    public static final ia zc;
    public static final ia zi;
    final String kr;

    static {
        Comparator<String> comparator = new Comparator<String>() { // from class: com.bytedance.sdk.component.ox.d.ia.1
            @Override // java.util.Comparator
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public int compare(String str, String str2) {
                int min = Math.min(str.length(), str2.length());
                for (int i2 = 4; i2 < min; i2++) {
                    char charAt = str.charAt(i2);
                    char charAt2 = str2.charAt(i2);
                    if (charAt != charAt2) {
                        return charAt < charAt2 ? -1 : 1;
                    }
                }
                int length = str.length();
                int length2 = str2.length();
                if (length != length2) {
                    return length < length2 ? -1 : 1;
                }
                return 0;
            }
        };
        dq = comparator;
        el = new TreeMap(comparator);
        f2116d = dq("SSL_RSA_WITH_NULL_MD5", 1);
        ox = dq("SSL_RSA_WITH_NULL_SHA", 2);
        p = dq("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);
        s = dq("SSL_RSA_WITH_RC4_128_MD5", 4);
        iw = dq("SSL_RSA_WITH_RC4_128_SHA", 5);
        mn = dq("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);
        ia = dq("SSL_RSA_WITH_DES_CBC_SHA", 9);
        kk = dq("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);
        o = dq("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);
        no = dq("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);
        ig = dq("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);
        mp = dq("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);
        q = dq("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);
        jy = dq("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);
        f2118f = dq("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);
        fw = dq("SSL_DH_anon_WITH_RC4_128_MD5", 24);
        cd = dq("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);
        gh = dq("SSL_DH_anon_WITH_DES_CBC_SHA", 26);
        r = dq("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);
        i = dq("TLS_KRB5_WITH_DES_CBC_SHA", 30);
        le = dq("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);
        k = dq("TLS_KRB5_WITH_RC4_128_SHA", 32);
        wp = dq("TLS_KRB5_WITH_DES_CBC_MD5", 34);
        f2117e = dq("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
        kx = dq("TLS_KRB5_WITH_RC4_128_MD5", 36);
        h = dq("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
        ji = dq("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
        bl = dq("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
        n = dq("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
        op = dq("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
        ir = dq("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
        u = dq("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
        f2115c = dq("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
        ce = dq("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
        er = dq("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
        wn = dq("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
        j = dq("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
        nh = dq("TLS_RSA_WITH_NULL_SHA256", 59);
        vf = dq("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
        ob = dq("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
        l = dq("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
        t = dq("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
        gx = dq("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
        by = dq("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
        uh = dq("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
        xz = dq("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
        yy = dq("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
        v = dq("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
        ds = dq("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);
        vw = dq("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);
        ha = dq("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);
        cv = dq("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);
        dc = dq("TLS_PSK_WITH_RC4_128_SHA", 138);
        jw = dq("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);
        fd = dq("TLS_PSK_WITH_AES_128_CBC_SHA", 140);
        bu = dq("TLS_PSK_WITH_AES_256_CBC_SHA", 141);
        ws = dq("TLS_RSA_WITH_SEED_CBC_SHA", 150);
        ij = dq("TLS_RSA_WITH_AES_128_GCM_SHA256", MediaPlayer.MEDIA_PLAYER_OPTION_GET_AUDIO_DEVICE_OPEN_TIME);
        xi = dq("TLS_RSA_WITH_AES_256_GCM_SHA384", MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_CODEC_NAME);
        z = dq("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", MediaPlayer.MEDIA_PLAYER_OPTION_GET_AUDIO_CODEC_NAME);
        pa = dq("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", MediaPlayer.MEDIA_PLAYER_OPTION_SET_FRAMES_DROP);
        io = dq("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", MediaPlayer.MEDIA_PLAYER_OPTION_GET_VIDEO_DEVICE_OPENED_TIME);
        m = dq("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", MediaPlayer.MEDIA_PLAYER_OPTION_GET_AUDIO_DEVICE_OPENED_TIME);
        xv = dq("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);
        wi = dq("TLS_DH_anon_WITH_AES_256_GCM_SHA384", MediaPlayer.MEDIA_PLAYER_OPTION_SUPER_RES_STRENGTH_OPTION);
        cc = dq("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        mc = dq("TLS_FALLBACK_SCSV", 22016);
        jo = dq("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);
        yo = dq("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);
        hf = dq("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);
        f2114b = dq("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);
        tl = dq("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);
        xj = dq("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);
        bf = dq("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);
        x = dq("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
        bx = dq("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
        nt = dq("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
        tv = dq("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
        ny = dq("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
        f2113a = dq("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
        dk = dq("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
        sy = dq("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
        f2119g = dq("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
        zi = dq("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
        sc = dq("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
        hy = dq("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
        ip = dq("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
        ah = dq("TLS_ECDH_anon_WITH_NULL_SHA", 49173);
        xx = dq("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
        jv = dq("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
        jn = dq("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
        w = dq("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
        y = dq("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
        wq = dq("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
        ae = dq("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
        fp = dq("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
        rp = dq("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
        fq = dq("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
        bn = dq("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
        oh = dq("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
        ux = dq("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);
        en = dq("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);
        qz = dq("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);
        lk = dq("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);
        py = dq("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);
        gl = dq("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);
        tu = dq("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);
        fx = dq("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);
        gm = dq("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);
        zc = dq("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);
        kf = dq("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);
        dn = dq("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);
    }

    private ia(String str) {
        str.getClass();
        this.kr = str;
    }

    public static synchronized ia dq(String str) {
        ia iaVar;
        synchronized (ia.class) {
            Map<String, ia> map = el;
            iaVar = map.get(str);
            if (iaVar == null) {
                iaVar = new ia(str);
                map.put(str, iaVar);
            }
        }
        return iaVar;
    }

    private static ia dq(String str, int i2) {
        return dq(str);
    }

    public static List<ia> dq(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(dq(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public String dq() {
        return this.kr;
    }

    public String toString() {
        return this.kr;
    }
}
