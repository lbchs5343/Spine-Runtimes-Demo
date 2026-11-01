package com.bytedance.msdk.d;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.bytedance.msdk.api.p.dq.mn.kk;
import com.bytedance.msdk.api.p.dq.mn.no;
import com.bytedance.msdk.api.p.dq.mn.o;
import com.bytedance.msdk.dq.d.iw;
import com.bytedance.msdk.ia.le;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.adhost.R;
import com.bytedance.sdk.openadsdk.f.d.d.ia;
import com.bytedance.sdk.openadsdk.f.d.d.mp;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class s implements d, ox, Comparable<s> {

    /* renamed from: b, reason: collision with root package name */
    private String f1032b;
    private long bf;
    private String bl;
    private String bx;
    private int by;

    /* renamed from: c, reason: collision with root package name */
    private String f1033c;
    private String cc;
    private String cd;
    private Map<String, String> ce;

    /* renamed from: d, reason: collision with root package name */
    private String f1034d;
    private com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dk;
    private String dq;
    private String ds;

    /* renamed from: e, reason: collision with root package name */
    private int f1035e;
    private Map<String, Object> er;

    /* renamed from: f, reason: collision with root package name */
    private int f1036f;
    private String fw;
    private double gh;
    private String gx;
    private String h;
    private int ha;
    private String hf;
    private String i;
    protected com.bytedance.msdk.api.p.dq.d ia;
    protected iw ig;
    private int io;
    private String ir;
    protected com.bytedance.msdk.api.p.dq.mn.ox iw;
    private double j;
    private boolean ji;
    private int jy;
    private int k;
    protected com.bytedance.msdk.api.p.dq.p kk;
    private boolean kx;
    private double le;
    private int m;
    private int mc;
    protected kk mn;
    protected iw mp;
    private String n;
    private int nh;
    protected com.bytedance.msdk.api.p.dq.ox.d no;
    private String ny;
    protected o o;
    private long op;
    private String ox;
    private String p;
    private int pa;
    private int q;
    private int s;
    private boolean tl;
    private String tv;
    private String u;
    private int uh;
    private String v;
    private boolean vw;
    private String wi;
    private double wn;
    private String x;
    private int xi;
    private volatile boolean xj;
    private int xv;
    private String xz;
    private String yo;
    private String yy;
    private int z;
    private List<String> r = new ArrayList();
    private int wp = -1;
    private int vf = 1;
    private int ob = 1;
    private int l = 1;
    private int t = 1;
    private volatile boolean cv = false;
    private volatile boolean dc = false;
    private volatile boolean jw = false;
    private volatile boolean fd = false;
    private final Map<String, Object> bu = new le();
    private boolean ws = false;
    private boolean ij = false;
    private String jo = "1";
    private Map<String, Object> nt = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    private Map<String, Object> f1031a = new ConcurrentHashMap();

    private void dq(ViewGroup viewGroup, no noVar) {
        ox(viewGroup);
        View findViewById = viewGroup.findViewById(R.id.tt_mediation_mtg_ad_choice);
        if (findViewById != null) {
            findViewById.setVisibility(8);
        }
        if (noVar != null) {
            dq(viewGroup.findViewById(noVar.ig));
        }
    }

    private void ox(ViewGroup viewGroup) {
        try {
            if (viewGroup.getChildCount() == 0) {
                return;
            }
            int i = 0;
            if (hf() != 3 && (viewGroup.getChildAt(0) instanceof ViewGroup)) {
                ViewGroup viewGroup2 = (ViewGroup) viewGroup.getChildAt(0);
                if (MediationConstant.TT_GDT_NATIVE_ROOT_VIEW_TAG.equals(viewGroup2.getTag(R.id.tt_mediation_gdt_developer_view_root_tag_key))) {
                    viewGroup.removeView(viewGroup2);
                    int i2 = 0;
                    while (i2 < viewGroup2.getChildCount()) {
                        View childAt = viewGroup2.getChildAt(i2);
                        if (childAt != null) {
                            Object tag = childAt.getTag(R.id.tt_mediation_gdt_developer_view_tag_key);
                            if ((tag instanceof String) && tag.equals(MediationConstant.TT_GDT_NATIVE_VIEW_TAG)) {
                                viewGroup2.removeView(childAt);
                                viewGroup.addView(childAt, childAt.getLayoutParams());
                            }
                        }
                        i2++;
                    }
                }
            }
            if (hf() == 2 || !(viewGroup.getChildAt(0) instanceof ViewGroup)) {
                return;
            }
            ViewGroup viewGroup3 = (ViewGroup) viewGroup.getChildAt(0);
            if (MediationConstant.TT_ADMOB_NATIVE_VIEW_ROOT_TAG.equals(viewGroup3.getTag(R.id.tt_mediation_admob_developer_view_root_tag_key))) {
                viewGroup.removeView(viewGroup3);
                while (i < viewGroup3.getChildCount()) {
                    View childAt2 = viewGroup3.getChildAt(i);
                    if (childAt2 != null) {
                        Object tag2 = childAt2.getTag(R.id.tt_mediation_admob_developer_view_tag_key);
                        if ((tag2 instanceof String) && tag2.equals(MediationConstant.TT_ADMOB_NATIVE_VIEW_TAG)) {
                            viewGroup3.removeView(childAt2);
                            viewGroup.addView(childAt2, childAt2.getLayoutParams());
                        }
                    }
                    i++;
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public Map<String, Object> a() {
        return this.er;
    }

    public int ae() {
        return this.m;
    }

    public boolean ah() {
        int i = this.xv;
        return i == 0 || i == 100;
    }

    public String b() {
        return this.cc;
    }

    public String bf() {
        return this.n;
    }

    public void bl() {
    }

    public void bl(String str) {
        this.cd = str;
    }

    public int bn() {
        return this.s;
    }

    public final Map<String, Object> bu() {
        return this.nt;
    }

    public String bx() {
        return this.ir;
    }

    public boolean by() {
        if (this.jw) {
            return true;
        }
        this.jw = true;
        return false;
    }

    public com.bytedance.msdk.api.p.dq.ox.d c() {
        return this.no;
    }

    public String cc() {
        return this.yo;
    }

    public int cd() {
        return -1;
    }

    public void cd(int i) {
        this.m = i;
    }

    public void cd(String str) {
        this.wi = str;
    }

    public void ce() {
    }

    public int cv() {
        return this.uh;
    }

    public int d() {
        return this.jy;
    }

    public void d(double d2) {
        this.wn = d2;
    }

    public void d(int i) {
        this.pa = i;
    }

    public void d(long j) {
        this.op = j;
    }

    @Override // com.bytedance.msdk.d.ox
    public void d(Activity activity) {
    }

    public void d(View view) {
        if (view != null) {
            try {
                ViewParent parent = view.getParent();
                if (parent == null || !(parent instanceof ViewGroup)) {
                    return;
                }
                ((ViewGroup) parent).removeView(view);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public void d(ViewGroup viewGroup) {
    }

    public void d(iw iwVar) {
        this.mp = iwVar;
    }

    public void d(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        this.f1031a.put(str, obj);
    }

    public void d(Map<String, Object> map) {
    }

    public void d(boolean z) {
    }

    public int dc() {
        return this.by;
    }

    public double dk() {
        try {
        } catch (NumberFormatException e2) {
            e2.printStackTrace();
        }
        if (ip()) {
            if (g() < 0.0d) {
                return 0.0d;
            }
            return g();
        }
        if (xx() || jv()) {
            return this.le * Double.valueOf(this.jo).doubleValue();
        }
        return this.le;
    }

    @Override // java.lang.Comparable
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public int compareTo(s sVar) {
        if (sVar == null || this.m > sVar.ae()) {
            return 1;
        }
        if (this.m < sVar.ae()) {
            return -1;
        }
        if (this.io > sVar.wq()) {
            return 1;
        }
        return this.io < sVar.wq() ? -1 : 0;
    }

    @Override // com.bytedance.msdk.d.ox
    public ia dq(Activity activity) {
        return null;
    }

    @Override // com.bytedance.msdk.d.ox
    public ia dq(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        return null;
    }

    public Map<String, Object> dq() {
        return this.bu;
    }

    public void dq(double d2) {
        this.le = d2;
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(int i) {
    }

    public final void dq(long j) {
        if (this.bf == 0) {
            this.bf = j;
        }
    }

    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, no noVar, List<View> list4) {
        if (list3 != null) {
            if (list2 == null) {
                list2 = new ArrayList<>();
            }
            list2.addAll(list3);
        }
        dq(viewGroup, noVar);
    }

    public void dq(Activity activity, TTAdConstant.RitScenes ritScenes, String str) {
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(Activity activity, com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq dqVar) {
        this.dk = dqVar;
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(Dialog dialog) {
    }

    @Override // com.bytedance.msdk.d.d
    public void dq(Bitmap bitmap, int i) {
    }

    public void dq(View view) {
        if (view != null) {
            view.setVisibility(0);
            if (view instanceof ViewGroup) {
                ((ViewGroup) view).removeAllViews();
            } else if (view instanceof ImageView) {
                ((ImageView) view).setImageDrawable(null);
            }
        }
    }

    public void dq(ViewGroup viewGroup) {
    }

    public void dq(ViewGroup viewGroup, Activity activity) {
    }

    public void dq(ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view) {
        dq(viewGroup, (no) null);
    }

    public void dq(com.bytedance.msdk.api.p.dq.d dVar) {
        this.ia = dVar;
    }

    public void dq(kk kkVar) {
        this.mn = kkVar;
    }

    public void dq(o oVar) {
        this.o = oVar;
    }

    public void dq(com.bytedance.msdk.api.p.dq.mn.ox oxVar) {
        this.iw = oxVar;
    }

    public void dq(com.bytedance.msdk.api.p.dq.ox.d dVar) {
        this.no = dVar;
    }

    public void dq(com.bytedance.msdk.api.p.dq.p pVar) {
        this.kk = pVar;
    }

    public void dq(iw iwVar) {
        this.ig = iwVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.e.dq.d.dq.ox oxVar) {
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(com.bytedance.sdk.openadsdk.f.d.dq.d dVar) {
    }

    @Override // com.bytedance.msdk.d.d
    public void dq(com.bytedance.sdk.openadsdk.i.dq.d.dq.dq dqVar) {
    }

    public void dq(Object obj) {
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(String str) {
    }

    public void dq(String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        this.nt.put(str, obj);
    }

    public void dq(List<String> list) {
        if (list != null) {
            this.r.addAll(list);
        }
    }

    public void dq(Map<String, Object> map) {
    }

    @Override // com.bytedance.msdk.d.ox
    public void dq(boolean z) {
    }

    public String ds() {
        return this.ds;
    }

    public void e(String str) {
        this.f1033c = str;
    }

    public boolean e() {
        return false;
    }

    public int en() {
        return this.nh;
    }

    public void er() {
    }

    public void f() {
    }

    public void f(int i) {
        this.xv = i;
    }

    public void f(String str) {
        this.f1032b = str;
    }

    public String fd() {
        return this.tv;
    }

    public List<String> fp() {
        return this.r;
    }

    public String fq() {
        return this.p;
    }

    public void fw() {
    }

    public void fw(int i) {
        this.io = i;
    }

    public void fw(String str) {
        this.yo = str;
    }

    public boolean fx() {
        return this.tl;
    }

    public double g() {
        return this.wn;
    }

    public View gh() {
        return null;
    }

    public void gh(int i) {
        this.s = i;
    }

    public void gh(String str) {
        this.cc = str;
    }

    public double gl() {
        return this.gh;
    }

    public iw gm() {
        return this.ig;
    }

    public boolean gx() {
        if (this.dc) {
            return true;
        }
        this.dc = true;
        return false;
    }

    public void h(String str) {
        this.p = str;
    }

    public boolean h() {
        return false;
    }

    public String ha() {
        return this.yy;
    }

    public int hf() {
        return this.mc;
    }

    public String hy() {
        return ip() ? zi() < 0.0d ? "-1" : String.valueOf(zi()) : String.valueOf(dk());
    }

    @Override // com.bytedance.msdk.d.ox
    public mp i() {
        return null;
    }

    public void i(int i) {
        this.nh = i;
    }

    public void i(String str) {
        this.bl = str;
    }

    public int ia(String str) {
        return TextUtils.equals(str, this.gx) ? this.l : this.vf;
    }

    public long ia() {
        return 0L;
    }

    public void ia(int i) {
        this.l = i;
    }

    public void ia(boolean z) {
        this.ji = z;
    }

    public View ig() {
        return null;
    }

    public void ig(int i) {
        this.k = i;
    }

    public void ig(String str) {
        this.bx = str;
    }

    public String ij() {
        return this.x;
    }

    public String io() {
        return this.jo;
    }

    public boolean ip() {
        return this.xv == 2;
    }

    public com.bytedance.msdk.api.p.dq.d ir() {
        return this.ia;
    }

    public void ir(String str) {
        this.i = str;
    }

    public String iw() {
        return null;
    }

    public void iw(int i) {
        this.uh = i;
    }

    public void iw(String str) {
        this.yy = str;
    }

    public void iw(boolean z) {
        this.xj = z;
    }

    public int j() {
        return this.pa;
    }

    public void ji(String str) {
        this.fw = str;
    }

    public int[] ji() {
        return null;
    }

    public boolean jn() {
        return this.xv == 0;
    }

    public int jo() {
        return this.wp;
    }

    public boolean jv() {
        return this.xv == 3;
    }

    public String jw() {
        return this.ny;
    }

    public void jy() {
    }

    public void jy(int i) {
        this.f1035e = i;
    }

    public void jy(String str) {
        this.hf = str;
    }

    @Override // com.bytedance.msdk.d.ox
    public int k() {
        return 0;
    }

    public void k(int i) {
        this.f1036f = i;
    }

    public void k(String str) {
        this.ir = str;
    }

    public int kk(String str) {
        return TextUtils.equals(str, this.gx) ? this.t : this.ob;
    }

    @Override // com.bytedance.msdk.d.ox
    public com.bytedance.sdk.openadsdk.f.d.d.p kk() {
        return null;
    }

    public void kk(int i) {
        this.t = i;
    }

    public void kk(boolean z) {
        this.tl = z;
    }

    public MediationConstant.AdIsReadyStatus kx() {
        return MediationConstant.AdIsReadyStatus.ADN_NO_READY_API;
    }

    public void kx(String str) {
        this.ox = str;
    }

    public boolean l() {
        return this.ws;
    }

    @Override // com.bytedance.msdk.d.ox
    public Bitmap le() {
        return null;
    }

    public void le(int i) {
        this.jy = i;
    }

    public void le(String str) {
        this.n = str;
    }

    public String lk() {
        return this.dq;
    }

    public String m() {
        return this.hf;
    }

    public boolean mc() {
        return this.kx;
    }

    public long mn() {
        return 0L;
    }

    public void mn(int i) {
        this.by = i;
    }

    public void mn(String str) {
        this.gx = str;
    }

    public void mn(boolean z) {
        this.kx = z;
    }

    public String mp() {
        return null;
    }

    public void mp(int i) {
        this.wp = i;
    }

    public void mp(String str) {
        this.x = str;
    }

    public com.bytedance.msdk.api.p.dq.mn.ox n() {
        return this.iw;
    }

    public void n(String str) {
        this.dq = str;
    }

    public int nh() {
        return this.z;
    }

    public void no() {
    }

    public void no(int i) {
        this.ob = i;
    }

    public void no(String str) {
        this.tv = str;
    }

    public String nt() {
        return this.u;
    }

    public Map<String, String> ny() {
        return this.ce;
    }

    public void o(int i) {
        this.vf = i;
    }

    public void o(String str) {
        this.ny = str;
    }

    public boolean o() {
        return false;
    }

    public boolean ob() {
        return this.ij;
    }

    public int oh() {
        return this.q;
    }

    public kk op() {
        return this.mn;
    }

    public void op(String str) {
        this.f1034d = str;
    }

    public int ox() {
        return this.f1036f;
    }

    public void ox(double d2) {
        this.j = d2;
    }

    public void ox(int i) {
        this.z = i;
    }

    public void ox(String str) {
        this.v = str;
    }

    public void ox(Map<String, Object> map) {
        if (map != null) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "setMediaExtraInfo ".concat(String.valueOf(map)));
            this.bu.putAll(map);
        }
    }

    public void ox(boolean z) {
        this.ij = z;
    }

    public void p() {
        this.iw = null;
        this.mn = null;
        this.ia = null;
    }

    public void p(double d2) {
        this.gh = d2;
    }

    public void p(int i) {
        this.xi = i;
    }

    public void p(String str) {
        this.ds = str;
    }

    public void p(Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        this.nt.putAll(map);
    }

    public void p(boolean z) {
        this.ws = z;
    }

    public Map<String, Object> pa() {
        return this.f1031a;
    }

    public String py() {
        return this.f1034d;
    }

    public com.bytedance.msdk.api.p.dq.mn.iw q() {
        return null;
    }

    public void q(int i) {
        this.mc = i;
    }

    public void q(String str) {
        this.jo = str;
    }

    public int qz() {
        return this.f1035e;
    }

    @Override // com.bytedance.msdk.d.ox
    public double r() {
        return 0.0d;
    }

    public void r(int i) {
        this.q = i;
    }

    public void r(String str) {
        this.h = str;
    }

    public String rp() {
        return this.ox;
    }

    public void s(int i) {
        this.ha = i;
    }

    public void s(String str) {
        this.xz = str;
    }

    public void s(Map<String, String> map) {
        this.ce = map;
    }

    public void s(boolean z) {
        this.vw = z;
    }

    public abstract boolean s();

    public String sc() {
        return ip() ? g() < 0.0d ? "-1" : String.valueOf(g()) : String.valueOf(dk());
    }

    public double sy() {
        if (!ip()) {
            return this.le;
        }
        if (g() < 0.0d) {
            return 0.0d;
        }
        return g();
    }

    public boolean t() {
        if (this.cv) {
            return true;
        }
        this.cv = true;
        return false;
    }

    public boolean tl() {
        if (!TextUtils.isEmpty(this.bl) || !TextUtils.isEmpty(this.n) || this.op > 0 || !TextUtils.isEmpty(this.ir)) {
            return true;
        }
        Map<String, String> map = this.ce;
        return ((map == null || map.size() <= 0) && TextUtils.isEmpty(this.u) && TextUtils.isEmpty(this.f1033c) && TextUtils.isEmpty(this.tv)) ? false : true;
    }

    public String tu() {
        return this.i;
    }

    public String tv() {
        return this.f1033c;
    }

    public final boolean u(String str) {
        MediationConstant.AdIsReadyStatus kx = kx();
        return kx == MediationConstant.AdIsReadyStatus.ADN_NO_READY_API ? !com.bytedance.msdk.core.s.dq.dq.dq().dq(str, this) : kx == MediationConstant.AdIsReadyStatus.AD_IS_READY;
    }

    public boolean uh() {
        if (this.fd) {
            return true;
        }
        this.fd = true;
        return false;
    }

    public String ux() {
        return this.fw;
    }

    public String v() {
        return this.v;
    }

    public int vf() {
        return this.xi;
    }

    public String vw() {
        return this.xz;
    }

    public boolean w() {
        return this.xv == 100;
    }

    public String wi() {
        return TextUtils.isEmpty(this.hf) ? this.f1032b : this.hf;
    }

    public com.bytedance.sdk.openadsdk.gh.dq.d.dq.dq wn() {
        return this.dk;
    }

    @Override // com.bytedance.msdk.d.ox
    public com.bytedance.sdk.openadsdk.f.d.d.s wp() {
        return null;
    }

    public void wp(String str) {
        this.u = str;
    }

    public int wq() {
        return this.io;
    }

    public String ws() {
        return this.bx;
    }

    public long x() {
        return this.op;
    }

    public boolean xi() {
        return this.xj;
    }

    public String xj() {
        return this.bl;
    }

    public String xv() {
        return this.f1032b;
    }

    public boolean xx() {
        return this.xv == 1;
    }

    public int xz() {
        return this.ha;
    }

    public int y() {
        return this.xv;
    }

    public int yo() {
        return this.k;
    }

    public boolean yy() {
        return this.vw;
    }

    public final long z() {
        return this.bf;
    }

    public boolean zc() {
        return (this instanceof com.bytedance.msdk.api.p.dq.d.ox) || (this instanceof com.bytedance.msdk.ox.dq.dq.ox);
    }

    public double zi() {
        return this.j;
    }
}
