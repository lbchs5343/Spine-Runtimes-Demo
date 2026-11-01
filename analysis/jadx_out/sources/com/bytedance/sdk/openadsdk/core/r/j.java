package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.r.ha;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.abn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class j {

    /* renamed from: a, reason: collision with root package name */
    private String f3454a;
    private bl aa;
    private ob ae;
    private e ao;
    private int ax;
    private String az;

    /* renamed from: b, reason: collision with root package name */
    private int f3455b;
    private long bl;
    private JSONObject bs;
    private String bx;
    private uh by;

    /* renamed from: c, reason: collision with root package name */
    private boolean f3456c;
    private String cd;
    private boolean ce;
    private int cv;

    /* renamed from: d, reason: collision with root package name */
    public String f3457d;
    private int dc;
    private String dk;
    private int dn;
    public io dq;

    /* renamed from: e, reason: collision with root package name */
    private String f3458e;
    private int eb;
    private vf el;
    private int en;
    private String ez;

    /* renamed from: f, reason: collision with root package name */
    private long f3459f;
    private String fa;
    private String fd;
    private boolean fi;
    private gx fp;
    private String fw;
    private vw fx;

    /* renamed from: g, reason: collision with root package name */
    private String f3460g;
    private int gm;
    private int gn;
    private String gs;
    private yy gv;
    private dq gx;
    private JSONObject h;
    private com.bytedance.sdk.openadsdk.f.d.ox.d ha;
    private wp he;
    private int hf;
    private q hg;
    private JSONObject ho;
    private String hy;
    private op hz;
    private p i;
    private String ia;
    private String ig;
    private String il;
    private int ip;
    private pa ir;
    private le iu;
    private String iw;
    private bu ix;
    private volatile JSONObject iy;
    private s jb;
    private JSONObject jc;
    private String ji;
    private String ju;
    private String jv;
    private String jy;
    private fw k;
    private int kf;
    private String kj;
    private JSONObject kk;
    private jy kr;
    private String kx;
    private Map<String, Object> l;
    private i le;
    private int lk;
    private String lm;
    private String lq;
    private JSONObject mj;
    private n ml;
    private int n;
    private int ne;
    private boolean nm;
    private String nt;
    private String ny;
    private JSONObject o;
    private r ob;
    private fd oh;
    private int op;
    private com.bytedance.sdk.openadsdk.core.dislike.ox.d ox;
    private int p;
    private int pa;
    private int pn;
    private String ps;
    private int py;
    private int qc;
    private int qz;
    private u rc;
    private boolean ri;
    private c rp;
    private com.bytedance.sdk.openadsdk.core.ugeno.o.dq rq;
    private h rr;
    private ws ru;
    private int rv;
    private ji s;
    private String sc;
    private int sd;
    private int sl;
    private gh sp;
    private long sy;
    private dq t;
    private int td;
    private ha tl;
    private boolean tv;
    private int u;
    private t uh;
    private er uo;
    private JSONObject us;
    private kx uw;
    private int ux;
    private com.bytedance.sdk.openadsdk.core.ugeno.mn.dq ve;
    private boolean vf;
    private l vk;
    private int wp;
    private long x;
    private JSONObject xi;
    private ig xn;
    private int xo;
    private cv xq;
    private ce xz;
    private no yj;
    private int yo;
    private String yw;
    private String zc;
    private boolean zi;
    private cd zr;
    private int mn = -1;
    private List<ji> no = new ArrayList();
    private List<String> mp = new ArrayList();
    private List<String> q = new ArrayList();
    private String gh = "0";
    private String r = "0";
    private int er = -1;
    private long wn = System.currentTimeMillis();
    private String j = UUID.randomUUID().toString();
    private String nh = "";
    private int yy = 2;
    private int v = -200;
    private int ds = 0;
    private ia vw = new ia();
    private int jw = 1;
    private int bu = 0;
    private int ws = 0;
    private int ij = 0;
    private int z = 1;
    private int io = 0;
    private int m = 0;
    private int xv = 0;
    private int wi = 1;
    private int cc = 0;
    private int mc = 1;
    private int jo = 0;
    private int xj = 1;
    private boolean bf = false;
    private int ah = 1;
    private float xx = 100.0f;
    private int jn = 0;
    private int w = 2;
    private int y = 0;
    private int wq = 100;
    private int fq = 2;
    private int bn = 2;
    private float gl = 0.07f;
    private float tu = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    private long fn = 0;
    private boolean fg = true;
    private int dr = -1;
    private int es = 0;
    private int ie = 0;
    private long ev = 0;
    private int np = 0;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private String f3461d;
        private String dq;
        private String ia;
        private String ig;
        private String iw;
        private String kk;
        private String mn;
        private String no;
        private String o;
        private String ox;
        private String p;
        private String s;

        public String d() {
            return this.dq;
        }

        public void d(String str) {
            this.dq = str;
        }

        public String dq() {
            return this.iw;
        }

        public void dq(String str) {
            this.iw = str;
        }

        public String ia() {
            return this.ig;
        }

        public void ia(String str) {
            this.ig = str;
        }

        public String ig() {
            return this.no;
        }

        public void ig(String str) {
            this.no = str;
        }

        public String iw() {
            return this.s;
        }

        public void iw(String str) {
            this.s = str;
        }

        public String kk() {
            return this.ia;
        }

        public void kk(String str) {
            this.ia = str;
        }

        public String mn() {
            return this.mn;
        }

        public void mn(String str) {
            this.mn = str;
        }

        public String no() {
            return this.o;
        }

        public void no(String str) {
            this.o = str;
        }

        public String o() {
            return this.kk;
        }

        public void o(String str) {
            this.kk = str;
        }

        public String ox() {
            return this.f3461d;
        }

        public void ox(String str) {
            this.f3461d = str;
        }

        public String p() {
            return this.ox;
        }

        public void p(String str) {
            this.ox = str;
        }

        public String s() {
            return this.p;
        }

        public void s(String str) {
            this.p = str;
        }
    }

    public static boolean d(j jVar) {
        if (jVar == null) {
            return false;
        }
        return jVar.gv() == 5 || jVar.gv() == 15 || jVar.gv() == 166;
    }

    public static boolean dq(j jVar) {
        return jVar != null && jVar.ir() == 1;
    }

    public static void iw(j jVar) {
        if (jVar == null) {
            return;
        }
        jVar.ev = System.currentTimeMillis();
    }

    public static boolean ox(j jVar) {
        try {
            if (jVar.td() != null) {
                if (jVar.td().optInt("parent_type") == 1) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public static boolean p(j jVar) {
        return jVar != null && jVar.qc == 1;
    }

    private float pp() {
        if (this.tl == null) {
            return 5.0f;
        }
        return r0.jy();
    }

    public static boolean s(j jVar) {
        if (jVar == null || jVar.ev <= 0 || jVar.ie <= 0) {
            return false;
        }
        boolean z = System.currentTimeMillis() - jVar.ev < ((long) jVar.ie);
        if (z) {
            jVar.np++;
            com.bytedance.sdk.openadsdk.core.gh.ig.dq().d(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.r.j.1
                @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("count", j.this.np);
                    jSONObject.put("click_freq", j.this.ie);
                    return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().dq("click_intercept").ia(j.this.dn()).d(jSONObject.toString());
                }
            }, "click_intercept");
        }
        return z;
    }

    public JSONObject a() {
        return this.mj;
    }

    public int aa() {
        return this.jn;
    }

    public String ae() {
        return this.iw;
    }

    public int ah() {
        return this.td;
    }

    public String ao() {
        return this.sc;
    }

    public String ap() {
        return this.zc;
    }

    public JSONObject aq() {
        return this.jc;
    }

    public boolean ax() {
        return yj() == 1;
    }

    public int az() {
        return this.io;
    }

    public ha.dq b() {
        ha haVar = this.tl;
        if (haVar != null) {
            return haVar.q();
        }
        return null;
    }

    public int bf() {
        fd fdVar = this.oh;
        if (fdVar == null) {
            return 30;
        }
        return fdVar.ox();
    }

    public int bl() {
        return this.bn;
    }

    public void bl(int i) {
        this.mn = i;
    }

    public void bl(String str) {
        this.sc = str;
    }

    public JSONObject bn() {
        return this.o;
    }

    public int bs() {
        return this.en;
    }

    public int bu() {
        ha haVar = this.tl;
        if (haVar == null) {
            return 1;
        }
        return haVar.dq();
    }

    public void bu(int i) {
        this.qc = i;
    }

    public int bx() {
        vw vwVar = this.fx;
        if (vwVar == null) {
            return 90;
        }
        return vwVar.d();
    }

    public int by() {
        return this.dr;
    }

    public void by(int i) {
        if (i < 0 || i > 180) {
            this.en = 50;
        } else {
            this.en = i;
        }
    }

    public bl c() {
        return this.aa;
    }

    public void c(int i) {
        this.io = i;
    }

    public void c(String str) {
        this.fa = str;
    }

    public int cc() {
        ha haVar = this.tl;
        if (haVar == null) {
            return 0;
        }
        return haVar.ia();
    }

    public int cd() {
        if (gh.p(this)) {
            return 0;
        }
        return this.sd;
    }

    public void cd(int i) {
        this.dc = i;
    }

    public void cd(String str) {
        this.fw = str;
    }

    public int ce() {
        return this.yy;
    }

    public void ce(int i) {
        this.m = i;
    }

    public void ce(String str) {
        this.gs = str;
    }

    public int cv() {
        return this.v;
    }

    public void cv(int i) {
        if (i <= 0 || i > 9) {
            this.w = 3;
        } else {
            this.w = i;
        }
    }

    public void d(double d2) {
        if (d2 == 2.0d || d2 == 1.0d) {
            this.fq = (int) d2;
        } else {
            this.fq = 2;
        }
    }

    public void d(float f2) {
        this.gl = f2;
    }

    public void d(int i) {
        this.pn = i;
    }

    public void d(long j) {
        this.sy = j;
    }

    public void d(dq dqVar) {
        this.gx = dqVar;
    }

    public void d(ji jiVar) {
        this.no.add(jiVar);
    }

    public void d(String str) {
        this.kj = str;
    }

    public void d(JSONObject jSONObject) {
        this.iy = jSONObject;
    }

    public void d(boolean z) {
        this.nm = z;
    }

    public boolean d() {
        return dq() == 1;
    }

    public int dc() {
        return this.z;
    }

    public void dc(int i) {
        this.qz = i;
    }

    public bu dh() {
        return this.ix;
    }

    public com.bytedance.sdk.component.adexpress.dq.ox.p dk() {
        if (tv() == null) {
            return null;
        }
        String d2 = tv().d();
        String p = tv().p();
        String ox = tv().ox();
        String s = tv().s();
        return com.bytedance.sdk.component.adexpress.dq.ox.p.dq().dq(d2).d(ox).ox(p).p(s).s(tv().dq()).iw(String.valueOf(com.bytedance.sdk.openadsdk.core.ir.c.kk(this)));
    }

    public String dn() {
        return this.kx;
    }

    public vw dp() {
        return this.fx;
    }

    public int dq() {
        return this.eb;
    }

    public void dq(double d2) {
        if (d2 == 2.0d || d2 == 1.0d) {
            this.bn = (int) d2;
        } else {
            this.bn = 2;
        }
    }

    public void dq(float f2) {
        this.xx = f2;
    }

    public void dq(int i) {
        this.eb = i;
    }

    public void dq(long j) {
        this.x = j;
    }

    public void dq(com.bykv.vk.openvk.component.video.api.ox.ox oxVar) {
        if (this.ir == null) {
            this.ir = new pa();
        }
        this.ir.dq(oxVar);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.dislike.ox.d dVar) {
        this.ox = dVar;
    }

    public void dq(bl blVar) {
        this.aa = blVar;
    }

    public void dq(bu buVar) {
        this.ix = buVar;
    }

    public void dq(c cVar) {
        this.rp = cVar;
    }

    public void dq(ce ceVar) {
        this.xz = ceVar;
    }

    public void dq(cv cvVar) {
        this.xq = cvVar;
    }

    public void dq(e eVar) {
        this.ao = eVar;
    }

    public void dq(er erVar) {
        this.uo = erVar;
    }

    public void dq(fd fdVar) {
        this.oh = fdVar;
    }

    public void dq(fw fwVar) {
        this.k = fwVar;
    }

    public void dq(gh ghVar) {
        this.sp = ghVar;
    }

    public void dq(gx gxVar) {
        this.fp = gxVar;
    }

    public void dq(h hVar) {
        this.rr = hVar;
    }

    public void dq(ha haVar) {
        this.tl = haVar;
    }

    public void dq(i iVar) {
        this.le = iVar;
    }

    public void dq(ia iaVar) {
        this.vw = iaVar;
    }

    public void dq(ig igVar) {
        this.xn = igVar;
    }

    public void dq(io ioVar) {
        this.dq = ioVar;
    }

    public void dq(dq dqVar) {
        this.t = dqVar;
        com.bytedance.sdk.component.adexpress.dq.ox.p dk = dk();
        if (dk != null && !ou()) {
            com.bytedance.sdk.component.adexpress.dq.d.d.dq(dk);
        }
        if (dqVar == null || TextUtils.isEmpty(dqVar.kk())) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ugeno.kk.dq(dqVar);
    }

    public void dq(ji jiVar) {
        this.s = jiVar;
    }

    public void dq(jy jyVar) {
        this.kr = jyVar;
    }

    public void dq(kx kxVar) {
        this.uw = kxVar;
    }

    public void dq(l lVar) {
        this.vk = lVar;
    }

    public void dq(le leVar) {
        this.iu = leVar;
    }

    public void dq(n nVar) {
        this.ml = nVar;
    }

    public void dq(no noVar) {
        this.yj = noVar;
    }

    public void dq(ob obVar) {
        this.ae = obVar;
    }

    public void dq(op opVar) {
        this.hz = opVar;
    }

    public void dq(p pVar) {
        this.i = pVar;
    }

    public void dq(pa paVar) {
        this.ir = paVar;
    }

    public void dq(q qVar) {
        this.hg = qVar;
    }

    public void dq(r rVar) {
        this.ob = rVar;
    }

    public void dq(s sVar) {
        this.jb = sVar;
    }

    public void dq(t tVar) {
        this.uh = tVar;
    }

    public void dq(uh uhVar) {
        this.by = uhVar;
    }

    public void dq(vf vfVar) {
        this.el = vfVar;
    }

    public void dq(vw vwVar) {
        this.fx = vwVar;
    }

    public void dq(wp wpVar) {
        this.he = wpVar;
        if (wpVar != null) {
            String d2 = wpVar.d();
            String ox = this.he.ox();
            if (TextUtils.isEmpty(d2)) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.ugeno.kk.dq(d2, ox);
        }
    }

    public void dq(ws wsVar) {
        this.ru = wsVar;
    }

    public void dq(yy yyVar) {
        this.gv = yyVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.ugeno.mn.dq dqVar) {
        this.ve = dqVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.ugeno.o.dq dqVar) {
        this.rq = dqVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        this.ha = dVar;
    }

    public void dq(String str) {
        this.il = str;
    }

    public void dq(Map<String, Object> map) {
        this.l = map;
    }

    public void dq(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("sdk_template_info")) == null) {
            return;
        }
        cd cdVar = new cd();
        this.zr = cdVar;
        cdVar.dq(optJSONObject.optString("lottie_tmp_url"));
    }

    public void dq(boolean z) {
        this.fi = z;
    }

    public int dr() {
        return this.cc;
    }

    public com.bytedance.sdk.openadsdk.f.d.ox.d ds() {
        return this.ha;
    }

    public void ds(int i) {
        this.kf = i;
    }

    public void e(int i) {
        this.td = i;
    }

    public void e(String str) {
        this.nh = str;
    }

    public boolean e() {
        return this.zi;
    }

    public c eb() {
        return this.rp;
    }

    public String el() {
        return this.ji;
    }

    public List<String> en() {
        return this.mp;
    }

    public h eo() {
        return this.rr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            j jVar = (j) obj;
            if (this.gh.equals(jVar.gh) && this.kx.equals(jVar.kx)) {
                return true;
            }
        }
        return false;
    }

    public int er() {
        return this.bu;
    }

    public void er(int i) {
        this.wi = i;
    }

    public void er(String str) {
        this.yw = str;
    }

    public float es() {
        if (this.xx <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.xx = 100.0f;
        }
        return (this.xx * 1000.0f) / 1000.0f;
    }

    public wp ev() {
        return this.he;
    }

    public com.bytedance.sdk.openadsdk.core.dislike.ox.d ez() {
        com.bytedance.sdk.openadsdk.core.dislike.dq.dq();
        return this.ox;
    }

    public long f() {
        return this.x;
    }

    public void f(int i) {
        this.ds = i;
    }

    public void f(String str) {
        this.ig = str;
    }

    public String fa() {
        return this.r;
    }

    public int fd() {
        return this.xj;
    }

    public void fd(int i) {
        this.ie = i;
    }

    public String ff() {
        return hashCode() + el();
    }

    public String fg() {
        return this.f3457d;
    }

    public JSONObject fi() {
        return this.ho;
    }

    public boolean fn() {
        return az() == 1;
    }

    public int fp() {
        return this.mn;
    }

    public JSONObject fq() {
        return this.kk;
    }

    public String fw() {
        return this.bx;
    }

    public void fw(int i) {
        this.cv = i;
    }

    public void fw(String str) {
        this.jy = str;
    }

    public String fx() {
        return this.gh;
    }

    public dq g() {
        return this.gx;
    }

    public com.bytedance.sdk.openadsdk.core.ugeno.mn.dq gh() {
        return this.ve;
    }

    public void gh(int i) {
        this.v = i;
    }

    public void gh(String str) {
        this.cd = str;
    }

    public String gl() {
        return this.fw;
    }

    public p gm() {
        return this.i;
    }

    public String gn() {
        return this.fd;
    }

    public io gs() {
        return this.dq;
    }

    public boolean gt() {
        return this.fg;
    }

    public int gv() {
        return this.wp;
    }

    public int gx() {
        return this.ij;
    }

    public void gx(int i) {
        if (i < 12) {
            i = 12;
        }
        if (i > 20) {
            i = 20;
        }
        this.ux = i;
    }

    public long h() {
        return this.sy;
    }

    public void h(int i) {
        this.u = i;
    }

    public void h(String str) {
        this.f3457d = str;
    }

    public int ha() {
        return this.dc;
    }

    public void ha(int i) {
        this.ne = i != 1 ? 0 : 1;
    }

    public int hashCode() {
        return this.kx.hashCode() + (this.gh.hashCode() * 31);
    }

    public int he() {
        return this.ip;
    }

    public ha.d hf() {
        ha haVar = this.tl;
        if (haVar != null) {
            return haVar.mp();
        }
        return null;
    }

    public JSONObject hg() {
        if (this.h == null) {
            try {
                if (!TextUtils.isEmpty(this.kx)) {
                    this.h = new JSONObject(this.kx);
                }
            } catch (JSONException unused) {
            }
        }
        return this.h;
    }

    public fd hl() {
        return this.oh;
    }

    public JSONObject hm() {
        return this.bs;
    }

    public int ho() {
        if (this.ah != 2) {
            this.ah = 1;
        }
        return this.ah;
    }

    public s hy() {
        return this.jb;
    }

    public String hz() {
        return this.nh;
    }

    public String i() {
        return this.nt;
    }

    public void i(int i) {
        this.pa = i;
    }

    public void i(String str) {
        this.kx = str;
    }

    public void ia(int i) {
        this.xv = i;
    }

    public void ia(String str) {
        this.f3460g = str;
    }

    public void ia(JSONObject jSONObject) {
        this.rc = new u(jSONObject);
    }

    public void ia(boolean z) {
        this.ri = z;
    }

    public boolean ia() {
        return this.fi;
    }

    public int ie() {
        return this.wq;
    }

    public String ig() {
        return this.ez;
    }

    public void ig(int i) {
        this.ij = i;
    }

    public void ig(String str) {
        this.ps = str;
    }

    public boolean ij() {
        ha haVar = this.tl;
        return haVar == null || haVar.ox();
    }

    public boolean il() {
        return he() != 1;
    }

    public int io() {
        ha haVar = this.tl;
        if (haVar == null) {
            return 56;
        }
        return haVar.mn();
    }

    public String ip() {
        return this.ps;
    }

    public int ir() {
        return this.xv;
    }

    public void ir(int i) {
        this.n = i;
    }

    public void ir(String str) {
        this.ju = str;
    }

    public int iu() {
        return this.er;
    }

    public void iw(int i) {
        this.ax = i;
    }

    public void iw(long j) {
        if (j != 0) {
            this.fn = j;
        } else {
            this.fn = System.currentTimeMillis() / 1000;
        }
    }

    public void iw(String str) {
        this.nt = str;
    }

    public void iw(JSONObject jSONObject) {
        this.xi = jSONObject;
    }

    public void iw(boolean z) {
        this.ce = z;
    }

    public boolean iw() {
        return s() == 1;
    }

    public long ix() {
        return this.bl;
    }

    public String iy() {
        return this.hy;
    }

    public l j() {
        return this.vk;
    }

    public void j(int i) {
        this.jo = i;
    }

    public boolean jb() {
        return this.vf;
    }

    public boolean jc() {
        int q = com.bytedance.sdk.openadsdk.core.ir.c.q(this);
        return q == 3 || q == 6;
    }

    public int ji() {
        return this.ax;
    }

    public void ji(int i) {
        this.p = i;
    }

    public void ji(String str) {
        this.hy = str;
    }

    public int jn() {
        return this.u;
    }

    public int jo() {
        return this.py;
    }

    public boolean ju() {
        return this.jo == 1;
    }

    public pa jv() {
        return this.ir;
    }

    public int jw() {
        return this.pa;
    }

    public void jw(int i) {
        this.es = i;
    }

    public JSONObject jy() {
        return this.iy;
    }

    public void jy(int i) {
        this.jw = i;
    }

    public void jy(String str) {
        this.ia = str;
    }

    public String k() {
        return this.ny;
    }

    public void k(int i) {
        this.lk = i;
    }

    public void k(String str) {
        this.r = str;
    }

    public fw kf() {
        return this.k;
    }

    public int kj() {
        return this.yo;
    }

    public String kk() {
        return this.il;
    }

    public void kk(int i) {
        this.yy = i;
    }

    public void kk(String str) {
        this.dk = str;
    }

    public void kk(JSONObject jSONObject) {
        this.us = jSONObject;
    }

    public void kk(boolean z) {
        this.bf = z;
    }

    public int kr() {
        return this.f3455b;
    }

    public String kx() {
        return this.dk;
    }

    public void kx(int i) {
        if (i != 1) {
            i = 0;
        }
        this.gn = i;
    }

    public void kx(String str) {
        this.fd = str;
    }

    public gh l() {
        return this.sp;
    }

    public void l(int i) {
        this.ip = i;
    }

    public void le(int i) {
        this.xj = i;
    }

    public void le(String str) {
        this.ji = str;
    }

    public boolean le() {
        return this.tv;
    }

    public String lk() {
        return this.jy;
    }

    public ob lm() {
        return this.ae;
    }

    public long lq() {
        return this.fn;
    }

    public int ls() {
        return this.kf;
    }

    public int m() {
        ha haVar = this.tl;
        if (haVar == null) {
            return 0;
        }
        return haVar.kk();
    }

    public yy ma() {
        return this.gv;
    }

    public kx mb() {
        return this.uw;
    }

    public int mc() {
        return this.lk;
    }

    public int mj() {
        return this.mc;
    }

    public boolean ml() {
        return (TextUtils.isEmpty(com.bytedance.sdk.openadsdk.core.ir.c.o(this)) || TextUtils.isEmpty(this.nh) || com.bytedance.sdk.openadsdk.core.ir.c.o(this).contains(this.nh)) ? false : true;
    }

    public cd mn() {
        return this.zr;
    }

    public void mn(int i) {
        this.op = i;
    }

    public void mn(String str) {
        this.ny = str;
    }

    public void mn(JSONObject jSONObject) {
        this.ho = jSONObject;
    }

    public void mn(boolean z) {
        this.vf = z;
    }

    public String mp() {
        return this.lm;
    }

    public void mp(int i) {
        this.dr = i;
    }

    public void mp(String str) {
        this.f3458e = str;
    }

    public int mx() {
        return this.y;
    }

    public String mz() {
        return this.yw;
    }

    public int n() {
        return this.fq;
    }

    public void n(int i) {
        this.f3455b = i;
    }

    public void n(String str) {
        this.az = str;
    }

    public int ne() {
        return this.n;
    }

    public String nh() {
        return this.lq;
    }

    public void nh(int i) {
        this.mc = i;
    }

    public String nl() {
        return this.fa;
    }

    public op nm() {
        return this.hz;
    }

    public int no() {
        return this.rv;
    }

    public void no(int i) {
        this.xo = i;
    }

    public void no(String str) {
        this.lq = str;
    }

    public void no(JSONObject jSONObject) {
        this.jc = jSONObject;
    }

    public e np() {
        return this.ao;
    }

    public er nr() {
        return this.uo;
    }

    public int nt() {
        vw vwVar = this.fx;
        if (vwVar == null) {
            return 90;
        }
        return vwVar.ox();
    }

    public ws ny() {
        return this.ru;
    }

    public String o() {
        return this.kj;
    }

    public void o(int i) {
        this.bu = i;
    }

    public void o(String str) {
        this.f3454a = str;
    }

    public void o(JSONObject jSONObject) {
        this.bs = jSONObject;
    }

    public void o(boolean z) {
        this.fg = z;
    }

    public ig ob() {
        return this.xn;
    }

    public void ob(int i) {
        this.hf = i;
    }

    public List<ji> oh() {
        return this.no;
    }

    public int op() {
        return this.op;
    }

    public void op(int i) {
        this.wp = i;
    }

    public void op(String str) {
        this.jv = str;
    }

    public boolean ou() {
        dq dqVar = this.t;
        if (dqVar != null) {
            return !TextUtils.isEmpty(dqVar.o);
        }
        int i = this.cc;
        return i == 9 || i == 10;
    }

    public int ox() {
        return this.pn;
    }

    public void ox(float f2) {
        this.tu = f2;
    }

    public void ox(int i) {
        this.sl = i;
    }

    public void ox(long j) {
        this.f3459f = j;
    }

    public void ox(String str) {
        this.ez = str;
    }

    public void ox(JSONObject jSONObject) {
        this.mj = jSONObject;
    }

    public void ox(boolean z) {
        this.tv = z;
    }

    public void p(int i) {
        this.rv = i;
    }

    public void p(long j) {
        this.bl = j;
    }

    public void p(String str) {
        this.lm = str;
    }

    public void p(JSONObject jSONObject) {
        this.kk = jSONObject;
    }

    public void p(boolean z) {
        this.zi = z;
    }

    public boolean p() {
        return ox() == 1;
    }

    public int pa() {
        ha haVar = this.tl;
        if (haVar == null) {
            return 82;
        }
        return haVar.iw();
    }

    public jy pc() {
        return this.kr;
    }

    public float pn() {
        float f2 = this.gl;
        if (f2 < 0.07f || f2 > 0.175f) {
            this.gl = 0.07f;
        }
        return this.gl;
    }

    public int po() {
        return this.dn;
    }

    public no pq() {
        return this.yj;
    }

    public Map<String, Object> ps() {
        return this.l;
    }

    public ce px() {
        return this.xz;
    }

    public long py() {
        return this.f3459f;
    }

    public void q(int i) {
        this.ws = i;
    }

    public void q(String str) {
        this.iw = str;
    }

    public boolean q() {
        return this.nm;
    }

    public boolean qc() {
        if (ez() != null) {
            return ez().s();
        }
        return false;
    }

    public t qf() {
        return this.uh;
    }

    public int qi() {
        return this.ne == 1 ? 1 : 0;
    }

    public n qo() {
        return this.ml;
    }

    public List<String> qz() {
        return this.q;
    }

    public com.bytedance.sdk.openadsdk.core.ugeno.o.dq r() {
        return this.rq;
    }

    public void r(int i) {
        this.z = i;
    }

    public void r(String str) {
        this.gh = str;
    }

    public int rc() {
        return gh.ia(this);
    }

    public le rh() {
        return this.iu;
    }

    public int ri() {
        return this.wi;
    }

    public boolean ro() {
        return this.ri;
    }

    public String rp() {
        return this.ia;
    }

    public String rq() {
        return this.ju;
    }

    public String rr() {
        if (!TextUtils.isEmpty(this.jv)) {
            this.jv = this.jv.trim();
        }
        return this.jv;
    }

    public int ru() {
        return this.jo;
    }

    public int rv() {
        return this.hf;
    }

    public JSONObject rw() {
        return this.us;
    }

    public int s() {
        return this.sl;
    }

    public void s(int i) {
        this.sd = i;
    }

    public void s(long j) {
        this.wn = j;
    }

    public void s(String str) {
        this.bx = str;
    }

    public void s(JSONObject jSONObject) {
        this.o = jSONObject;
    }

    public void s(boolean z) {
        this.f3456c = z;
    }

    public ha sc() {
        return this.tl;
    }

    public u sd() {
        return this.rc;
    }

    public float sl() {
        float f2 = this.tu;
        if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT || f2 > 50.0f) {
            this.tu = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        return this.tu;
    }

    public long sp() {
        return this.wn;
    }

    public com.bytedance.sdk.component.adexpress.dq.ox.p sy() {
        if (g() == null) {
            return null;
        }
        String d2 = g().d();
        String p = g().p();
        String ox = g().ox();
        String s = g().s();
        return com.bytedance.sdk.component.adexpress.dq.ox.p.dq().dq(d2).d(ox).ox(p).p(s).s(g().dq()).iw(String.valueOf(com.bytedance.sdk.openadsdk.core.ir.c.kk(this)));
    }

    public cv t() {
        return this.xq;
    }

    public void t(int i) {
        this.ah = i;
    }

    public JSONObject td() {
        return this.xi;
    }

    public int tl() {
        fd fdVar = this.oh;
        if (fdVar == null) {
            return 2;
        }
        return fdVar.dq();
    }

    public int tn() {
        if (this.p == 4 && TextUtils.isEmpty(this.fd)) {
            return this.qz;
        }
        return 0;
    }

    public String tt() {
        return this.gs;
    }

    public String tu() {
        return this.cd;
    }

    public dq tv() {
        return this.t;
    }

    public uh u() {
        return this.by;
    }

    public void u(int i) {
        this.er = i;
    }

    public void u(String str) {
        this.zc = str;
    }

    public int uh() {
        return this.ws;
    }

    public void uh(int i) {
        this.jn = i;
    }

    public String uo() {
        try {
            return hg().optString("convert_id", null);
        } catch (Throwable unused) {
            return null;
        }
    }

    public vf ur() {
        return this.el;
    }

    public int us() {
        return this.ux;
    }

    public int uw() {
        JSONObject jSONObject = this.kk;
        if (jSONObject != null) {
            return jSONObject.optInt("easy_playable_skip_duration", 0);
        }
        return 0;
    }

    public String ux() {
        return this.ig;
    }

    public ia v() {
        return this.vw;
    }

    public void v(int i) {
        int i2 = 500;
        if (i == Integer.MIN_VALUE) {
            i = com.bytedance.sdk.openadsdk.core.ir.c.ia(this) == 3 ? 500 : 1000;
        }
        if (i >= 500) {
            i2 = 3000;
            if (i <= 3000) {
                i2 = i;
            }
        }
        this.gm = i2;
    }

    public int vb() {
        return this.gm;
    }

    public JSONObject ve() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("s_sig_ts", yw());
            jSONObject.put("ad_rec_stamp", lq());
            jSONObject.put("interaction_type", y());
            jSONObject.put("target_url", ae());
            jSONObject.put("use_media_video_player", ir());
            jSONObject.put("landing_scroll_percentage", fp());
            jSONObject.put("gecko_id", rp());
            jSONObject.put("extension", fq());
            jSONObject.put("overlay", bn());
            jSONObject.put(MediationConstant.EXTRA_ADID, fx());
            jSONObject.put(abn.EXTRA_SOURCE, w());
            jSONObject.put("package_name", fg());
            jSONObject.put("screenshot", vk());
            jSONObject.put("play_bar_style", yy());
            jSONObject.put("play_bar_show_time", cv());
            jSONObject.put("if_block_lp", er());
            jSONObject.put("cache_sort", dc());
            jSONObject.put("if_sp_cache", jw());
            jSONObject.put("splash_timeout_stage", fd());
            jSONObject.put("render_control", ce());
            jSONObject.put("is_from_local_cache", xn());
            jSONObject.put("is_from_cache_type", iu());
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("cta", n());
            jSONObject2.put("other", bl());
            jSONObject.put("set_click_type", jSONObject2);
            ji wq = wq();
            if (wq != null && !TextUtils.isEmpty(wq.dq())) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put(abn.EXTRA_URL, wq.dq());
                jSONObject3.put(MediaFormat.KEY_HEIGHT, wq.ox());
                jSONObject3.put(MediaFormat.KEY_WIDTH, wq.d());
                jSONObject.put("icon", jSONObject3);
            }
            Object td = td();
            if (td != null) {
                jSONObject.put("session_params", td);
            }
            ia v = v();
            if (v != null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("click_upper_content_area", v.dq);
                jSONObject4.put("click_upper_non_content_area", v.f3449d);
                jSONObject4.put("click_lower_content_area", v.ox);
                jSONObject4.put("click_lower_non_content_area", v.p);
                jSONObject4.put("click_button_area", v.s);
                jSONObject4.put("click_video_area", v.iw);
                jSONObject.put("click_area", jSONObject4);
            }
            com.bytedance.sdk.openadsdk.f.d.ox.d ds = ds();
            if (ds != null) {
                jSONObject.put("adslot", com.bytedance.sdk.openadsdk.core.ir.h.dq(ds));
            }
            List<ji> oh = oh();
            if (oh != null) {
                JSONArray jSONArray = new JSONArray();
                for (ji jiVar : oh) {
                    JSONObject jSONObject5 = new JSONObject();
                    jSONObject5.put(abn.EXTRA_URL, jiVar.dq());
                    jSONObject5.put(MediaFormat.KEY_HEIGHT, jiVar.ox());
                    jSONObject5.put(MediaFormat.KEY_WIDTH, jiVar.d());
                    jSONObject5.put("image_preview", jiVar.iw());
                    jSONObject5.put("image_key", jiVar.mn());
                    jSONArray.put(jSONObject5);
                }
                jSONObject.put("image", jSONArray);
            }
            List<String> en = en();
            if (en != null) {
                JSONArray jSONArray2 = new JSONArray();
                Iterator<String> it = en.iterator();
                while (it.hasNext()) {
                    jSONArray2.put(it.next());
                }
                jSONObject.put("show_url", jSONArray2);
            }
            List<String> qz = qz();
            if (qz != null) {
                JSONArray jSONArray3 = new JSONArray();
                Iterator<String> it2 = qz.iterator();
                while (it2.hasNext()) {
                    jSONArray3.put(it2.next());
                }
                jSONObject.put("click_url", jSONArray3);
            }
            jSONObject.put("phone_num", ux());
            jSONObject.put(abn.EXTRA_TITLE, lk());
            jSONObject.put("download_num", py());
            jSONObject.put("description", gl());
            jSONObject.put("ext", dn());
            jSONObject.put("req_id", el());
            jSONObject.put("image_mode", gv());
            jSONObject.put("intercept_flag", vw());
            jSONObject.put("web_inspector", ha());
            jSONObject.put("button_text", tu());
            jSONObject.put("ad_logo", xz());
            jSONObject.put("video_adaptation", uh());
            jSONObject.put("feed_video_opentype", gx());
            jSONObject.put("feed_reward_type", by());
            jSONObject.put("orientation", ho());
            jSONObject.put("aspect_ratio", es());
            jSONObject.put("aspect_margin", pn());
            jSONObject.put("corner_radius", sl());
            p gm = gm();
            if (gm != null) {
                JSONObject jSONObject6 = new JSONObject();
                jSONObject6.put("app_name", gm.ox());
                jSONObject6.put("package_name", gm.p());
                jSONObject6.put("download_url", gm.d());
                jSONObject6.put("score", gm.s());
                jSONObject6.put("comment_num", gm.iw());
                jSONObject6.put("quick_app_url", gm.dq());
                jSONObject6.put("app_size", gm.mn());
                jSONObject.put("app", jSONObject6);
            }
            i zc = zc();
            if (zc != null) {
                jSONObject.put("download_sdk_conf", zc.ox());
            }
            if (u() != null) {
                u().d(jSONObject);
            }
            if (qf() != null) {
                qf().dq(jSONObject);
            }
            if (kf() != null) {
                kf().dq(jSONObject);
            }
            if (ez() != null) {
                ez().dq(jSONObject);
            }
            if (j() != null) {
                j().dq(jSONObject);
            }
            if (ob() != null) {
                ob().dq(jSONObject);
            }
            if (l() != null) {
                l().dq(jSONObject);
            }
            if (lm() != null) {
                lm().dq(jSONObject);
            }
            if (t() != null) {
                t().dq(jSONObject);
            }
            if (nm() != null) {
                nm().dq(jSONObject);
            }
            if (zr() != null) {
                zr().dq(jSONObject);
            }
            if (c() != null) {
                c().d(jSONObject);
            }
            jSONObject.put("count_down", ne());
            jSONObject.put("expiration_time", ix());
            jSONObject.put("_child_metas", tt());
            jSONObject.put("src_req_id", hz());
            jSONObject.put("player_type", mx());
            jSONObject.put("video_encode_type", jn());
            jSONObject.put("feed_video_finish_type", op());
            if (jv() != null) {
                jv().dq(jSONObject);
            }
            if (zi() != null) {
                zi().dq(jSONObject);
            }
            jSONObject.put("if_both_open", az());
            jSONObject.put("if_double_deeplink", yj());
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("splash_clickarea", bu());
            jSONObject7.put("splash_clicktext", ws());
            jSONObject7.put("area_height", xi());
            jSONObject7.put("area_width", z());
            jSONObject7.put("area_blank_height", pa());
            jSONObject7.put("half_blank_height", io());
            jSONObject7.put("splash_style_id", m());
            jSONObject7.put("btn_background_dest_color", xv());
            jSONObject7.put("top_splash_clicktext", wi());
            jSONObject7.put("splash_load_time_optimization", cc());
            jSONObject7.put("text_config", yo() != null ? yo().dq() : null);
            jSONObject7.put("top_text_config", hf() != null ? hf().dq() : null);
            jSONObject7.put("sliding_distance", pp());
            jSONObject7.put("slide_area", b() != null ? b().s() : null);
            jSONObject.put("splash_control", jSONObject7);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("position", tl());
            jSONObject8.put("left_or_right_margin", xj());
            jSONObject8.put("top_or_bottom_margin", bf());
            fd fdVar = this.oh;
            jSONObject8.put("skip_style", fdVar == null ? 1 : fdVar.p());
            jSONObject.put("skip_control", jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            jSONObject9.put("show_type", x());
            jSONObject9.put("blank", bx());
            jSONObject9.put("half_blank", nt());
            jSONObject.put("splash_compliance_bar", jSONObject9);
            if (ps() != null) {
                JSONObject jSONObject10 = new JSONObject();
                Set<Map.Entry<String, Object>> entrySet = ps().entrySet();
                if (entrySet != null && !entrySet.isEmpty()) {
                    for (Map.Entry<String, Object> entry : entrySet) {
                        jSONObject10.put(entry.getKey(), entry.getValue());
                    }
                }
                jSONObject.put("media_ext", jSONObject10);
            }
            jSONObject.put("landing_page_type", ri());
            jSONObject.put("isDirectDownload", ia());
            dq tv = tv();
            if (tv != null) {
                JSONObject jSONObject11 = new JSONObject();
                jSONObject11.put(TTDownloadField.TT_ID, tv.d());
                jSONObject11.put(TTDownloadField.TT_MD5, tv.ox());
                jSONObject11.put(abn.EXTRA_URL, tv.p());
                jSONObject11.put("data", tv.s());
                jSONObject11.put("diff_data", tv.iw());
                jSONObject11.put("version", tv.dq());
                jSONObject11.put("dynamic_creative", tv.mn());
                jSONObject11.put("material_type", tv.ia());
                jSONObject11.put("ugen_url", tv.kk());
                jSONObject11.put("ugen_md5", tv.o());
                jSONObject11.put("engine_version", tv.no());
                jSONObject11.put("express_gesture_priority", tv.ig());
                jSONObject.put("tpl_info", jSONObject11);
            }
            dq g2 = g();
            if (g2 != null) {
                JSONObject jSONObject12 = new JSONObject();
                jSONObject12.put("middle_id", g2.d());
                jSONObject12.put("middle_md5", g2.ox());
                jSONObject12.put("middle_url", g2.p());
                jSONObject12.put("middle_data", g2.s());
                jSONObject12.put("middle_diff_data", g2.iw());
                jSONObject12.put("middle_version", g2.dq());
                jSONObject12.put("middle_dynamic_creative", g2.mn());
                jSONObject.put("middle_tpl_info", jSONObject12);
            }
            jSONObject.put("dynamic_creative", a());
            ws wsVar = this.ru;
            if (wsVar != null) {
                jSONObject.put("tpl_info_v3", wsVar.ia());
            }
            jSONObject.put("page_render_type", cd());
            jSONObject.put("promotion_type", ji());
            jSONObject.put("if_lpua_package", this.qc);
            jSONObject.put("click_freq", this.ie);
            com.bytedance.sdk.openadsdk.core.ugeno.mn.dq gh = gh();
            if (gh != null) {
                JSONObject jSONObject13 = new JSONObject();
                jSONObject13.put(TTDownloadField.TT_ID, gh.dq());
                jSONObject13.put(TTDownloadField.TT_MD5, gh.d());
                jSONObject13.put(abn.EXTRA_URL, gh.ox());
                jSONObject13.put("scene", gh.p());
                jSONObject.put("ugeno", jSONObject13);
            }
            com.bytedance.sdk.openadsdk.core.ugeno.o.dq r = r();
            if (r != null) {
                JSONObject jSONObject14 = new JSONObject();
                jSONObject14.put("product_infos", r.dq());
                jSONObject14.put("coupon", r.d());
                jSONObject14.put("render_config", r.ox());
                jSONObject14.put("live_room_data", r.p());
                jSONObject14.putOpt("ec_mall_conf", r.s());
                jSONObject.put("dylite_info", jSONObject14);
            }
            jSONObject.put("native_lp_data", o());
            jSONObject.put("native_lp_tpl_id", no());
            jSONObject.put("native_lp_ugen_url", ig());
            jSONObject.put("native_lp_ugen_md5", mp());
            jSONObject.put("download_url", kk());
            jSONObject.put("native_lp_is_preload", q());
            if (q()) {
                jSONObject.put("native_lp_content", jy());
            }
            jSONObject.put("market_url", gn());
            jSONObject.put("close_on_dislike", xp());
            s hy = hy();
            if (hy != null) {
                JSONObject jSONObject15 = new JSONObject();
                jSONObject15.put("developer_name", hy.mn());
                jSONObject15.put("app_version", hy.s());
                jSONObject15.put("permissions", hy.no());
                jSONObject15.put("privacy_policy_url", hy.ia());
                jSONObject15.put("package_name", hy.ig());
                jSONObject15.put("app_name", hy.mp());
                jSONObject15.put("score", hy.ox());
                jSONObject15.put("creative_tags", hy.p());
                jSONObject15.put("permissions_url", hy.d());
                jSONObject15.put("desc_url", hy.kk());
                jSONObject15.put("reg_number", hy.o());
                jSONObject.put("app_manage", jSONObject15);
            }
            wp ev = ev();
            if (ev != null) {
                JSONObject jSONObject16 = new JSONObject();
                jSONObject16.put("ugen_dialog_url", ev.d());
                jSONObject16.put("ugen_dialog_md5", ev.ox());
                jSONObject16.put("dialog_style", ev.dq());
                jSONObject.put("easy_dl_dialog", jSONObject16);
            }
            if (fi() != null) {
                jSONObject.put("easy_pl_material", fi());
            }
            jSONObject.put("app_manage_type", ah());
            jSONObject.put("lp_down_rule", xx() == 1 ? 1 : 0);
            JSONObject jSONObject17 = new JSONObject();
            jSONObject17.put("render_sequence", dr());
            jSONObject17.put("valid_uchain", ru());
            jSONObject17.put("backup_render_control", mj());
            jSONObject17.put("render_thread", kj());
            jSONObject17.put("reserve_time", rv());
            jSONObject.put("render", jSONObject17);
            jSONObject.put("auction_price", iy());
            jSONObject.put("price", kx());
            jSONObject.put("ad_info", ao());
            jSONObject.put("adx_name", rr());
            jSONObject.put("no_default_ttdsp_price", he());
            jSONObject.put("endcard_close_time", aa());
            jSONObject.put("proportion_watching", ie());
            jSONObject.put("video_skip_result", we());
            jSONObject.put("shake_value", us());
            jSONObject.put("deep_shake_value", tn());
            jSONObject.put("rotation_angle", bs());
            jSONObject.put("calculation_method", mc());
            jSONObject.put("calculation_method_twist", jo());
            jSONObject.put("show_poll_time", vb());
            jSONObject.put("dynamic_join_type", kr());
            jSONObject.put("click_send_type", qi());
            jSONObject.put("cache_ext", fw());
            jSONObject.put("cache_time", f());
            jSONObject.put("req_id", i());
            jSONObject.put("is_cache", le());
            jSONObject.put("log_ext", k());
            jSONObject.put("material_key", wp());
            jSONObject.put("need_get_materials", e());
            jSONObject.put("s_send_ts", h());
            io ioVar = this.dq;
            if (ioVar != null) {
                jSONObject.put("wc_miniapp_info", ioVar.kk());
            }
            no pq = pq();
            if (pq != null) {
                JSONObject jSONObject18 = new JSONObject();
                jSONObject18.put("click_trigger_type", pq.dq());
                jSONObject18.put("shake_start_time", pq.d());
                jSONObject18.put("shake_end_time", pq.ox());
                jSONObject.put("click_trigger_config", jSONObject18);
            }
        } catch (Exception unused) {
        }
        if (px() != null) {
            px().dq(jSONObject);
        }
        try {
            jSONObject.put("live_room_id", ap());
            jSONObject.put("ad_type", ls());
            jSONObject.put("live_interaction_type", po());
            jSONObject.put("ec_schema", nh());
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        try {
            jSONObject.put("ecom_live_params", nl());
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        n qo = qo();
        if (qo != null) {
            qo.dq(jSONObject);
        }
        le rh = rh();
        if (rh != null) {
            rh.dq(jSONObject);
        }
        c eb = eb();
        if (eb != null) {
            try {
                JSONObject jSONObject19 = new JSONObject();
                jSONObject19.put("reward_live_deep_link_user_id", eb.dq());
                jSONObject19.put("reward_live_deep_link_request_id", eb.iw());
                jSONObject19.put("reward_live_deep_link_room_id", eb.d());
                jSONObject19.put("reward_live_last_time", eb.s());
                jSONObject19.put("reawrd_live_short_touch_params", eb.ox());
                jSONObject19.put("reawrd_live_extra_pangle_scheme_params", eb.p());
                jSONObject.put("reward_live_deep_link_params", jSONObject19);
            } catch (Exception unused2) {
            }
        }
        jy pc = pc();
        if (pc != null) {
            try {
                JSONObject jSONObject20 = new JSONObject();
                jSONObject20.put("style_type", pc.dq());
                jSONObject20.put("image_url", pc.d());
                jSONObject20.put("position", pc.ox());
                jSONObject20.put("image_height", pc.p());
                jSONObject20.put("image_scale_rate", pc.iw());
                jSONObject20.put("image_gif_url", pc.s());
                jSONObject20.put("image_gif_aspect_ratio", pc.mn());
                jSONObject.put("dynamic_join_coupon_style", jSONObject20);
            } catch (Exception unused3) {
            }
        }
        q vr = vr();
        if (vr != null) {
            try {
                jSONObject.put("coupon", vr.dq());
            } catch (JSONException e4) {
                e4.printStackTrace();
            }
        }
        er nr = nr();
        if (nr != null) {
            try {
                jSONObject.put("live_info", nr.dq());
            } catch (JSONException unused4) {
            }
        }
        yy ma = ma();
        if (ma != null) {
            try {
                jSONObject.put("saas_info", ma.dq());
            } catch (JSONException unused5) {
            }
        }
        vf ur = ur();
        if (ur != null) {
            try {
                JSONObject jSONObject21 = new JSONObject();
                jSONObject21.put("group_id", ur.dq());
                jSONObject21.put("group_tag", ur.d());
                jSONObject21.put("card_tag", ur.ox());
                jSONObject.put("group_info", jSONObject21);
            } catch (Exception unused6) {
            }
        }
        bu dh = dh();
        if (dh != null) {
            try {
                JSONObject jSONObject22 = new JSONObject();
                jSONObject22.put("video_adapter_type", dh.dq());
                jSONObject22.put("video_mute_type", dh.d());
                jSONObject.put("video_config", jSONObject22);
            } catch (Exception unused7) {
            }
        }
        try {
            jSONObject.put("not_valid_download_url", ro());
        } catch (JSONException e5) {
            e5.printStackTrace();
        }
        try {
            jSONObject.put("dynamic_configs", rq());
            String mz = mz();
            if (!TextUtils.isEmpty(mz)) {
                jSONObject.put("gnd_prefetch_cache_key", mz);
                jSONObject.put("gnd_prefetch_timing", xs());
            }
        } catch (JSONException e6) {
            e6.printStackTrace();
        }
        try {
            jSONObject.put("twist_config", rw());
            jSONObject.put("shake_interact_conf", hm());
            jSONObject.put("twist_interact_conf", aq());
        } catch (JSONException e7) {
            e7.printStackTrace();
        }
        try {
            h hVar = this.rr;
            if (hVar != null) {
                hVar.d(jSONObject);
            }
        } catch (Throwable unused8) {
        }
        try {
            bl blVar = this.aa;
            if (blVar != null) {
                blVar.d(jSONObject);
            }
        } catch (Throwable unused9) {
        }
        try {
            u sd = sd();
            if (sd != null) {
                jSONObject.put("landing_page_conf", sd.dq());
            }
        } catch (JSONException e8) {
            e8.printStackTrace();
        }
        cd mn = mn();
        if (mn != null) {
            try {
                JSONObject jSONObject23 = new JSONObject();
                jSONObject23.put("lottie_tmp_url", mn.dq());
                JSONObject jSONObject24 = new JSONObject();
                jSONObject24.put("sdk_template_info", jSONObject23);
                jSONObject.put("sdk_derive_info", jSONObject24);
            } catch (JSONException e9) {
                e9.printStackTrace();
            }
        }
        try {
            jSONObject.put("disable_video_join", dq());
            jSONObject.put("disable_top_bar", ox());
            jSONObject.put("disable_rtn_button", s());
        } catch (Throwable unused10) {
        }
        return jSONObject;
    }

    public int vf() {
        return this.xo;
    }

    public void vf(int i) {
        this.yo = i;
    }

    public boolean vk() {
        return this.f3456c;
    }

    public q vr() {
        return this.hg;
    }

    public int vw() {
        return this.cv;
    }

    public void vw(int i) {
        this.dn = i;
    }

    public String w() {
        return this.f3458e;
    }

    public int we() {
        return this.w;
    }

    public String wi() {
        ha haVar = this.tl;
        return haVar == null ? "点击查看" : haVar.no();
    }

    public void wn(int i) {
        this.cc = i;
    }

    public boolean wn() {
        return this.bu == 1;
    }

    public String wp() {
        return this.f3460g;
    }

    public void wp(int i) {
        this.py = i;
    }

    public void wp(String str) {
        this.j = str;
    }

    public ji wq() {
        return this.s;
    }

    public String ws() {
        ha haVar = this.tl;
        return haVar == null ? "" : haVar.d();
    }

    public int x() {
        vw vwVar = this.fx;
        if (vwVar == null) {
            return 0;
        }
        return vwVar.dq();
    }

    public int xi() {
        ha haVar = this.tl;
        if (haVar == null) {
            return 50;
        }
        return haVar.p();
    }

    public int xj() {
        fd fdVar = this.oh;
        if (fdVar == null) {
            return 16;
        }
        return fdVar.d();
    }

    public boolean xn() {
        return this.ce;
    }

    public boolean xo() {
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this)) {
            return true;
        }
        if (this.no.isEmpty()) {
            return false;
        }
        if (this.wp == 4 && this.no.size() < 3) {
            return false;
        }
        Iterator<ji> it = this.no.iterator();
        while (it.hasNext()) {
            if (!it.next().s()) {
                return false;
            }
        }
        return true;
    }

    public boolean xp() {
        return this.bf;
    }

    public String xq() {
        return this.j;
    }

    public int xs() {
        return this.es;
    }

    public String xv() {
        ha haVar = this.tl;
        return haVar == null ? "#008DEA" : haVar.o();
    }

    public int xx() {
        return this.gn;
    }

    public int xz() {
        return this.jw;
    }

    public void xz(int i) {
        if (i < 0 || i > 100) {
            return;
        }
        this.wq = i;
    }

    public int y() {
        return this.p;
    }

    public int yj() {
        return this.m;
    }

    public ha.d yo() {
        ha haVar = this.tl;
        if (haVar != null) {
            return haVar.ig();
        }
        return null;
    }

    public String yw() {
        return this.az;
    }

    public int yy() {
        if (es() != 100.0f || ce() == 2) {
            return 0;
        }
        return this.ds;
    }

    public void yy(int i) {
        this.y = i;
    }

    public int z() {
        ha haVar = this.tl;
        if (haVar == null) {
            return 236;
        }
        return haVar.s();
    }

    public i zc() {
        return this.le;
    }

    public r zi() {
        return this.ob;
    }

    public gx zr() {
        return this.fp;
    }
}
