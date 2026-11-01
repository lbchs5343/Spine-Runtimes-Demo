package com.bytedance.msdk.core.no;

import android.text.TextUtils;
import com.bytedance.msdk.ia.ig;
import g.awf;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class no implements Comparable<no> {
    private kk cd;

    /* renamed from: d, reason: collision with root package name */
    private String f993d;
    private String dq;

    /* renamed from: e, reason: collision with root package name */
    private int f994e;

    /* renamed from: f, reason: collision with root package name */
    private int f995f;
    private int fw;
    private Map<String, String> gh;
    private String i;
    private int ia;
    private String ig;
    private int iw;
    private int jy;
    private com.bytedance.msdk.core.kk.kk k;
    private int kk;
    private int le;
    private int mn;
    private int mp;
    private String no;
    private String o;
    private String ox;
    private int q;
    private int r;
    private com.bytedance.msdk.core.kk.mn wp;
    private String p = "1";
    private String s = "0";

    public Map<String, String> bl() {
        return this.gh;
    }

    public boolean c() {
        return n() || op() || u();
    }

    public String cd() {
        return this.ox;
    }

    public boolean ce() {
        return this.iw == 0;
    }

    public com.bytedance.msdk.core.kk.mn d() {
        return this.wp;
    }

    public void d(int i) {
        this.le = i;
    }

    public void d(String str) {
        this.p = str;
    }

    public int dq() {
        return this.f994e;
    }

    @Override // java.lang.Comparable
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public int compareTo(no noVar) {
        if (noVar == null || this.mn > noVar.wp()) {
            return 1;
        }
        if (this.mn < noVar.wp()) {
            return -1;
        }
        if (this.ia > noVar.e()) {
            return 1;
        }
        return this.ia < noVar.e() ? -1 : 0;
    }

    public void dq(int i) {
        this.f994e = i;
    }

    public void dq(com.bytedance.msdk.core.kk.kk kkVar) {
        this.k = kkVar;
    }

    public void dq(com.bytedance.msdk.core.kk.mn mnVar) {
        this.wp = mnVar;
    }

    public void dq(kk kkVar) {
        this.cd = kkVar;
    }

    public void dq(String str) {
        this.o = str;
    }

    public void dq(Map<String, String> map) {
        this.gh = map;
    }

    public int e() {
        return this.ia;
    }

    public String er() {
        return this.i;
    }

    public String f() {
        return this.f993d;
    }

    public String fw() {
        return TextUtils.isEmpty(this.dq) ? this.f993d : this.dq;
    }

    public int gh() {
        return this.iw;
    }

    public String h() {
        return this.ig;
    }

    public double i() {
        kk kkVar = this.cd;
        if (kkVar != null && !TextUtils.isEmpty(kkVar.s())) {
            try {
                return Double.valueOf(this.cd.s()).doubleValue();
            } catch (Exception e2) {
                com.bytedance.msdk.dq.s.ox.p("WaterFallConfig", "getServerBiddingShowEcpm error " + e2.toString());
            }
        }
        return -1.0d;
    }

    public int ia() {
        return this.mp;
    }

    public void ia(int i) {
        this.fw = i;
    }

    public void ia(String str) {
        this.ig = str;
    }

    public int ig() {
        return this.fw;
    }

    public void ig(int i) {
        this.ia = i;
    }

    public boolean ir() {
        return this.iw == 100;
    }

    public int iw() {
        return this.r;
    }

    public void iw(int i) {
        this.jy = i;
    }

    public void iw(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "0";
        }
        this.s = str;
    }

    public kk ji() {
        return this.cd;
    }

    public String jy() {
        return this.dq;
    }

    public double k() {
        try {
            return Double.valueOf(this.s).doubleValue() * Double.valueOf(this.p).doubleValue();
        } catch (Exception e2) {
            com.bytedance.msdk.dq.s.ox.p("WaterFallConfig", "getEcpm error " + e2.toString());
            return 0.0d;
        }
    }

    public int kk() {
        return this.q;
    }

    public void kk(int i) {
        this.kk = i;
    }

    public void kk(String str) {
        this.i = str;
    }

    public String kx() {
        return this.no;
    }

    public double le() {
        kk kkVar = this.cd;
        if (kkVar != null && !TextUtils.isEmpty(kkVar.iw())) {
            try {
                return Double.valueOf(this.cd.iw()).doubleValue();
            } catch (Exception e2) {
                com.bytedance.msdk.dq.s.ox.p("WaterFallConfig", "getServerBiddingLoadEcpm error " + e2.toString());
            }
        }
        return -1.0d;
    }

    public String mn() {
        return this.o;
    }

    public void mn(int i) {
        this.f995f = i;
    }

    public void mn(String str) {
        this.no = str;
    }

    public int mp() {
        return this.kk;
    }

    public boolean n() {
        return this.iw == 2;
    }

    public int no() {
        return this.f995f;
    }

    public void no(int i) {
        this.mn = i;
    }

    public int o() {
        return this.jy;
    }

    public void o(int i) {
        this.iw = i;
    }

    public boolean op() {
        return this.iw == 1;
    }

    public com.bytedance.msdk.core.kk.kk ox() {
        return this.k;
    }

    public void ox(int i) {
        this.r = i;
    }

    public void ox(String str) {
        this.dq = str;
    }

    public void p(int i) {
        this.mp = i;
    }

    public void p(String str) {
        this.f993d = str;
    }

    public boolean p() {
        return this.le == 1;
    }

    public String q() {
        return this.p;
    }

    public boolean r() {
        int i = this.iw;
        return i == 0 || i == 100;
    }

    public no s() {
        ConcurrentHashMap concurrentHashMap;
        List<String> d2 = ig.d();
        no noVar = new no();
        noVar.dq = this.dq;
        ig.dq(d2, "mAdnetworkName");
        noVar.ox = this.ox;
        ig.dq(d2, "mAdnetwokrSlotId");
        noVar.p = this.p;
        ig.dq(d2, "mExchangeRate");
        noVar.s = this.s;
        ig.dq(d2, "mEcpm");
        noVar.iw = this.iw;
        ig.dq(d2, "mAdnetworkSlotType");
        noVar.mn = this.mn;
        ig.dq(d2, "mLoadSort");
        noVar.ia = this.ia;
        ig.dq(d2, "mShowSort");
        noVar.kk = this.kk;
        ig.dq(d2, "mRitType");
        noVar.jy = this.jy;
        ig.dq(d2, "originType");
        noVar.r = this.r;
        ig.dq(d2, "mSubAdType");
        noVar.o = this.o;
        ig.dq(d2, "mLoaderAdapterName");
        noVar.no = this.no;
        ig.dq(d2, "mWaterfallAbTestParam");
        noVar.ig = this.ig;
        ig.dq(d2, "mServerBiddingExtra");
        noVar.mp = this.mp;
        ig.dq(d2, "adExpiredTime");
        noVar.q = this.q;
        ig.dq(d2, "ifReuseAds");
        noVar.f995f = this.f995f;
        ig.dq(d2, "ifPreRequest");
        noVar.fw = this.fw;
        ig.dq(d2, "ifIsReady");
        noVar.f994e = this.f994e;
        ig.dq(d2, "isRefresh");
        noVar.f993d = this.f993d;
        ig.dq(d2, "mCustomAdnetworkName");
        Map<String, String> map = this.gh;
        if (map == null || map.size() <= 0) {
            concurrentHashMap = null;
        } else {
            concurrentHashMap = new ConcurrentHashMap();
            concurrentHashMap.putAll(this.gh);
        }
        noVar.gh = concurrentHashMap;
        ig.dq(d2, "mMultilevelSlotCpm");
        noVar.i = this.i;
        ig.dq(d2, "mCustomAdapterJson");
        noVar.le = this.le;
        ig.dq(d2, "mAdnRitTimingMode");
        noVar.wp = this.wp;
        ig.dq(d2, "mIntervalFreqctlBean");
        noVar.k = this.k;
        ig.dq(d2, "mIntervalPacingBean");
        ig.d(d2, "WaterFallConfig");
        return noVar;
    }

    public void s(int i) {
        this.q = i;
    }

    public void s(String str) {
        this.ox = str;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("WaterFallConfig{mAdnetworkName='");
        sb.append(this.dq);
        sb.append("', mCustomAdnetworkName='");
        sb.append(this.f993d);
        sb.append("', mAdnetwokrSlotId='");
        sb.append(this.ox);
        sb.append("', mExchangeRate=");
        sb.append(this.p);
        sb.append(", mSlotEcpm=");
        sb.append(this.s);
        sb.append(", mAdnetworkSlotType=");
        sb.append(this.iw);
        sb.append(", mLoadSort=");
        sb.append(this.mn);
        sb.append(", mShowSort=");
        return awf.s(sb, this.ia, '}');
    }

    public boolean u() {
        return this.iw == 3;
    }

    public boolean wn() {
        return com.bytedance.msdk.core.dq.d().ox(this.dq);
    }

    public int wp() {
        return this.mn;
    }
}
