package com.bytedance.msdk.core;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.msdk.api.p.iw;
import com.bytedance.msdk.dq.ox.q;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.c;
import com.bytedance.msdk.ia.kx;
import com.bytedance.msdk.ia.le;
import com.bytedance.msdk.iw.d.s;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import g.awf;
import g.hat;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.File;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d {
    private static final d vf = new d();
    private boolean bl;

    /* renamed from: c, reason: collision with root package name */
    private ValueSet f844c;

    /* renamed from: d, reason: collision with root package name */
    private String[] f845d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f846e;
    private q er;
    private iw gh;
    private boolean h;
    private String ia;
    private String ig;
    private com.bytedance.msdk.api.p.dq.kk.dq ir;
    private final Map<String, Integer> j;
    private String ji;
    private List<String> k;
    private boolean kk;
    private JSONObject kx;
    private com.bytedance.msdk.api.p.q l;
    private String mp;
    private boolean n;
    private final Map<String, Float> nh;
    private Map<String, String> no;
    private String o;
    private int[] ob;
    private String op;
    private String ox;
    private String p;
    private boolean u;
    private long wn;
    private boolean wp;
    private int dq = 0;
    private boolean s = true;
    private boolean iw = false;
    private boolean mn = false;
    private Set<String> q = new HashSet();
    private Map<String, Map<String, String>> jy = new HashMap();

    /* renamed from: f, reason: collision with root package name */
    private Map<String, Map<String, String>> f847f = new HashMap();
    private boolean fw = false;
    private final Map<String, Object> cd = new le();
    private long r = -1;
    private Map<String, Object> i = new ConcurrentHashMap();
    private Map<String, Object> le = new ConcurrentHashMap();
    private int ce = -1;

    private d() {
        HashMap hashMap = new HashMap();
        this.j = hashMap;
        this.nh = new ConcurrentHashMap();
        if (dq.d().er()) {
            hashMap.put(MediationConstant.KEY_USE_POLICY_AD_GAP, 1);
            hashMap.put(MediationConstant.KEY_USE_POLICY_AD_LOAD, 1);
            hashMap.put(MediationConstant.KEY_USE_POLICY_SECTION_ID, 1);
            hashMap.put(MediationConstant.KEY_USE_POLICY_PAGE_ID, 1);
            hashMap.put(MediationConstant.KEY_USE_POLICY_OBJ_CUSTOM, 1);
        }
    }

    public static String dq(Context context) {
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(context.getApplicationInfo().packageName, 0);
            return (String) (applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo) : "");
        } catch (Throwable th) {
            th.printStackTrace();
            return "";
        }
    }

    private static void kk(String str) {
        kx.dq(str, "appid不能为空");
    }

    public static d no() {
        return vf;
    }

    public com.bytedance.msdk.api.p.q bl() {
        if (this.l == null) {
            this.l = com.bytedance.msdk.api.p.q.dq(no().d());
        }
        return this.l;
    }

    public boolean c() {
        return this.wp;
    }

    public String cd() {
        return this.ia;
    }

    public boolean ce() {
        return this.f846e;
    }

    public q d() {
        if (this.er == null) {
            hat f2 = hat.f();
            s.dq(f2);
            this.er = q.dq(f2.k());
        }
        return this.er;
    }

    public void d(long j) {
        this.wn = j;
    }

    public void d(String str) {
        this.op = str;
    }

    public void d(Map<String, Object> map) {
        if (map == null || map.size() == 0) {
            return;
        }
        this.i.putAll(map);
    }

    public void d(boolean z) {
        this.kk = z;
    }

    public float dq(String str) {
        return this.nh.get(str).floatValue();
    }

    public void dq(int i) {
        this.dq = i;
    }

    public void dq(long j) {
        com.bytedance.msdk.mn.ox.dq.dq().dq(j);
    }

    public void dq(ValueSet valueSet) {
        this.f844c = valueSet;
    }

    public void dq(com.bytedance.msdk.api.p.dq.kk.dq dqVar) {
        this.ir = dqVar;
    }

    public void dq(iw iwVar, boolean z) {
        if (z) {
            this.gh = iwVar;
            return;
        }
        iw iwVar2 = this.gh;
        boolean equals = (iwVar2 == null && iwVar == null) ? true : (iwVar2 == null || iwVar == null) ? false : iwVar2.equals(iwVar);
        this.gh = iwVar;
        if (equals) {
            return;
        }
        com.bytedance.msdk.core.f.d.dq(dq.d()).dq().dq(3);
    }

    public void dq(String str, float f2) {
        this.nh.put(str, Float.valueOf(f2));
    }

    public void dq(List<String> list) {
        this.k = list;
    }

    public void dq(Map<String, String> map) {
        this.no = map;
    }

    public void dq(JSONObject jSONObject) {
        this.kx = jSONObject;
    }

    public void dq(boolean z) {
        this.fw = z;
    }

    public void dq(int... iArr) {
        this.ob = iArr;
    }

    public void dq(String[] strArr) {
        this.f845d = strArr;
    }

    public boolean dq() {
        return this.fw;
    }

    public boolean e() {
        try {
            if ("com.union_test.toutiao".equals(dq.getContext().getPackageName()) && "5001121".equals(this.ox)) {
                return true;
            }
            if ("com.pangolin_demo.toutiao".equals(dq.getContext().getPackageName()) && "5001121".equals(this.ox)) {
                return true;
            }
            if ("com.bytedance.mediation_demo".equals(dq.getContext().getPackageName()) && "5001121".equals(this.ox)) {
                return true;
            }
            if ("com.msdk.qa.monkey".equals(dq.getContext().getPackageName()) && "5001121".equals(this.ox)) {
                return true;
            }
            if (dq.getContext().getPackageName().contains("com.bytedance.mediation_demo_csj")) {
                return "5001121".equals(this.ox);
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public JSONObject er() {
        return this.kx;
    }

    public String f() {
        return this.o;
    }

    public Map<String, String> fw() {
        return this.no;
    }

    public int[] gh() {
        return this.ob;
    }

    public String h() {
        return this.ig;
    }

    public String i() {
        return this.p;
    }

    public String ia() {
        if ((!"com.union_test.toutiao".equals(dq.getContext().getPackageName()) || !"5001121".equals(this.ox)) && (!"com.bytedance.mediation_demo".equals(dq.getContext().getPackageName()) || !"5001121".equals(this.ox))) {
            return null;
        }
        try {
            return bl.dq("tt_mediation_ppe_info", dq.getContext()).d("tt_ppe_content");
        } catch (Exception unused) {
            return null;
        }
    }

    public void ia(String str) {
        this.ji = str;
    }

    public void ia(boolean z) {
        this.f846e = z;
        if (z) {
            try {
                Class.forName("com.bykv.vk.openvk.TTVfSdk");
            } catch (ClassNotFoundException e2) {
                this.f846e = false;
                e2.printStackTrace();
            }
        }
    }

    public String ig() {
        return this.ox;
    }

    public Map<String, Object> ir() {
        return this.le;
    }

    public String iw() {
        return this.op;
    }

    public void iw(String str) {
        if (TextUtils.isEmpty(str)) {
            str = dq(dq.getContext());
        }
        this.p = str;
    }

    public void iw(boolean z) {
        this.iw = z;
    }

    public String j() {
        return this.ji;
    }

    public iw ji() {
        return this.gh;
    }

    public boolean jy() {
        return this.mn;
    }

    public String[] k() {
        return this.f845d;
    }

    public void kk(boolean z) {
        this.h = z;
    }

    public boolean kk() {
        return "com.bytedance.mediation_demo_csj".equals(dq.getContext().getPackageName()) && o();
    }

    public boolean kx() {
        String dq = c.dq();
        return "com.union_test.toutiao".equals(dq) || "com.bytedance.mediation_demo".equals(dq) || "com.msdk.qa.monkey".equals(dq);
    }

    public ValueSet l() {
        return this.f844c;
    }

    public int le() {
        return this.dq;
    }

    public void mn(String str) {
        this.ig = str;
    }

    public void mn(boolean z) {
        this.wp = z;
    }

    public boolean mn() {
        return this.kk;
    }

    public boolean mp() {
        return this.u;
    }

    public void n() {
        this.l = com.bytedance.msdk.api.p.q.dq(no().d());
    }

    public boolean nh() {
        return this.bl;
    }

    public void no(boolean z) {
        this.n = z;
    }

    public void o(boolean z) {
        this.bl = z;
    }

    public boolean o() {
        String path = com.bytedance.sdk.openadsdk.api.plugin.d.ox(dq.getContext()).getPath();
        if (this.ce < 0) {
            if (new File(awf.c(path, "/e2e.text")).exists()) {
                this.ce = 1;
            } else {
                this.ce = 0;
            }
        }
        return this.ce > 0;
    }

    public Map<String, Object> ob() {
        this.cd.put(MediationConstant.KEY_GM_USB, com.bytedance.msdk.core.o.s.s());
        return this.cd;
    }

    public Map<String, Object> op() {
        return this.i;
    }

    public long ox() {
        long j = this.r;
        if (j != -1) {
            return j;
        }
        long p = com.bytedance.msdk.mn.ox.dq.dq().p();
        this.r = p;
        return p;
    }

    public void ox(String str) {
        kk(str);
        this.ox = str;
    }

    public void ox(Map<String, Object> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        this.le.putAll(map);
    }

    public void ox(boolean z) {
        this.u = z;
    }

    public Map<String, Integer> p() {
        return this.j;
    }

    public void p(String str) {
        this.ia = str;
    }

    public void p(boolean z) {
        this.mn = z;
    }

    public boolean q() {
        return this.s;
    }

    public boolean r() {
        return this.iw;
    }

    public long s() {
        return this.wn;
    }

    public void s(String str) {
        this.o = str;
    }

    public void s(boolean z) {
        this.s = z;
    }

    public com.bytedance.msdk.api.p.dq.kk.dq t() {
        return this.ir;
    }

    public List<String> u() {
        return this.k;
    }

    public boolean vf() {
        return this.n;
    }

    public boolean wn() {
        return this.h;
    }

    public String wp() {
        if (!TextUtils.isEmpty(this.mp)) {
            return this.mp;
        }
        String dq = bl.dq((String) null, dq.getContext()).dq();
        this.mp = dq;
        if (!TextUtils.isEmpty(dq)) {
            return this.mp;
        }
        String valueOf = String.valueOf(System.currentTimeMillis());
        bl.dq((String) null, dq.getContext()).dq(valueOf);
        this.mp = valueOf;
        return valueOf;
    }
}
