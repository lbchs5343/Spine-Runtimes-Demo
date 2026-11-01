package com.bytedance.sdk.component.adexpress.d;

import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mp {
    private JSONObject bl;
    private int cd;

    /* renamed from: d, reason: collision with root package name */
    private s f1661d;
    private JSONObject dq;

    /* renamed from: e, reason: collision with root package name */
    private int f1662e;

    /* renamed from: f, reason: collision with root package name */
    private boolean f1663f;
    private String fw;
    private int gh;
    private JSONObject h;
    private int i;
    private String ia;
    private int ig;
    private final boolean ir;
    private String iw;
    private JSONObject ji;
    private int jy;
    private String k;
    private boolean kk;
    private boolean kx;
    private int le;
    private String mn;
    private String mp;
    private boolean n;
    private long no;
    private int o;
    private String op;
    private String ox;
    private kk p;
    private Map<String, String> q;
    private int r;
    private int s;
    private boolean u;
    private double wp;

    public static class dq {
        private JSONObject bl;
        private int cd;

        /* renamed from: d, reason: collision with root package name */
        private s f1664d;
        private JSONObject dq;

        /* renamed from: e, reason: collision with root package name */
        private int f1665e;

        /* renamed from: f, reason: collision with root package name */
        private boolean f1666f;
        private String fw;
        private int gh;
        private JSONObject h;
        private int i;
        private String ia;
        private int ig;
        private String iw;
        private JSONObject ji;
        private int jy;
        private String k;
        private boolean kk;
        private int le;
        private String mn;
        private String mp;
        private boolean n;
        private long no;
        private int o;
        private String op;
        private String ox;
        private kk p;
        private Map<String, String> q;
        private int r;
        private int s;
        private double wp;
        private boolean kx = true;
        private boolean ir = true;
        private boolean u = true;

        public dq d(int i) {
            this.o = i;
            return this;
        }

        public dq d(String str) {
            this.iw = str;
            return this;
        }

        public dq d(JSONObject jSONObject) {
            this.h = jSONObject;
            return this;
        }

        public dq d(boolean z) {
            this.kk = z;
            return this;
        }

        public dq dq(int i) {
            this.s = i;
            return this;
        }

        public dq dq(kk kkVar) {
            this.p = kkVar;
            return this;
        }

        public dq dq(String str) {
            this.ox = str;
            return this;
        }

        public dq dq(Map<String, String> map) {
            this.q = map;
            return this;
        }

        public dq dq(JSONObject jSONObject) {
            this.dq = jSONObject;
            return this;
        }

        public dq dq(boolean z) {
            this.u = z;
            return this;
        }

        public mp dq() {
            return new mp(this);
        }

        public dq ia(int i) {
            this.i = i;
            return this;
        }

        public dq ia(String str) {
            this.op = str;
            return this;
        }

        public dq iw(int i) {
            this.gh = i;
            return this;
        }

        public dq iw(String str) {
            this.fw = str;
            return this;
        }

        public dq kk(int i) {
            this.le = i;
            return this;
        }

        public dq mn(int i) {
            this.r = i;
            return this;
        }

        public dq mn(String str) {
            this.k = str;
            return this;
        }

        public dq ox(int i) {
            this.ig = i;
            return this;
        }

        public dq ox(String str) {
            this.mn = str;
            return this;
        }

        public dq ox(JSONObject jSONObject) {
            this.ji = jSONObject;
            return this;
        }

        public dq ox(boolean z) {
            this.n = z;
            return this;
        }

        public dq p(int i) {
            this.jy = i;
            return this;
        }

        public dq p(String str) {
            this.ia = str;
            return this;
        }

        public dq p(JSONObject jSONObject) {
            this.bl = jSONObject;
            return this;
        }

        public dq s(int i) {
            this.cd = i;
            return this;
        }

        public dq s(String str) {
            this.mp = str;
            return this;
        }
    }

    public mp(dq dqVar) {
        this.u = true;
        this.dq = dqVar.dq;
        this.f1661d = dqVar.f1664d;
        this.ox = dqVar.ox;
        this.p = dqVar.p;
        this.s = dqVar.s;
        this.iw = dqVar.iw;
        this.mn = dqVar.mn;
        this.ia = dqVar.ia;
        this.kk = dqVar.kk;
        this.o = dqVar.o;
        this.no = dqVar.no;
        this.ig = dqVar.ig;
        this.mp = dqVar.mp;
        this.q = dqVar.q;
        this.jy = dqVar.jy;
        this.f1663f = dqVar.f1666f;
        this.fw = dqVar.fw;
        this.cd = dqVar.cd;
        this.gh = dqVar.gh;
        this.r = dqVar.r;
        this.i = dqVar.i;
        this.le = dqVar.le;
        this.k = dqVar.k;
        this.wp = dqVar.wp;
        this.f1662e = dqVar.f1665e;
        this.kx = dqVar.kx;
        this.h = dqVar.h;
        this.ji = dqVar.ji;
        this.bl = dqVar.bl;
        this.n = dqVar.n;
        this.op = dqVar.op;
        this.ir = dqVar.ir;
        this.u = dqVar.u;
    }

    public int cd() {
        return this.r;
    }

    public double d() {
        return this.wp;
    }

    public void dq(int i) {
        this.s = i;
    }

    public boolean dq() {
        return this.kx;
    }

    public String e() {
        return this.op;
    }

    public int f() {
        return this.cd;
    }

    public int fw() {
        return this.gh;
    }

    public JSONObject gh() {
        return this.h;
    }

    public JSONObject i() {
        return this.bl;
    }

    public int ia() {
        return this.f1662e;
    }

    public Map<String, String> ig() {
        return this.q;
    }

    public int iw() {
        return this.s;
    }

    public String jy() {
        return this.fw;
    }

    public int k() {
        return this.le;
    }

    public boolean kk() {
        return this.kk;
    }

    public boolean kx() {
        return this.ir;
    }

    public int le() {
        return this.i;
    }

    public boolean mn() {
        return this.u;
    }

    public int mp() {
        return this.jy;
    }

    public int no() {
        return this.ig;
    }

    public long o() {
        return this.no;
    }

    public JSONObject ox() {
        s sVar;
        if (this.dq == null && (sVar = this.f1661d) != null) {
            this.dq = sVar.dq();
        }
        return this.dq;
    }

    public String p() {
        return this.ox;
    }

    public boolean q() {
        return this.f1663f;
    }

    public JSONObject r() {
        return this.ji;
    }

    public kk s() {
        return this.p;
    }

    public boolean wp() {
        return this.n;
    }
}
