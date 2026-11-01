package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.TTDownloadEventLogger;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.ir.dq;
import com.bytedance.sdk.openadsdk.downloadnew.core.DownloadBridgeFactory;
import com.bytedance.sdk.openadsdk.f.d.ox.ox;
import com.bytedance.sdk.openadsdk.f.d.ox.p;
import g.abn;
import g.awf;
import g.dkx;
import g.hat;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class no {
    public static final com.bytedance.sdk.openadsdk.f.d.ox.p dq = new dq();
    private static volatile no wn;
    private int bl;

    /* renamed from: c, reason: collision with root package name */
    private volatile String f3270c;
    private String cd;
    private String ce;

    /* renamed from: d, reason: collision with root package name */
    private volatile String f3271d;

    /* renamed from: e, reason: collision with root package name */
    private boolean f3272e;
    private com.bytedance.sdk.openadsdk.jy.ox er;

    /* renamed from: f, reason: collision with root package name */
    private volatile com.bytedance.sdk.openadsdk.f.d.ox.p f3273f;
    private String fw;
    private volatile boolean gh;
    private volatile Bridge h;
    private volatile boolean i;
    private volatile boolean ig;
    private iw ir;
    private volatile String iw;
    private com.bytedance.sdk.openadsdk.core.playable.ia j;
    private int ji;
    private volatile TTDownloadEventLogger jy;
    private volatile JSONObject k;
    private boolean kx;
    private volatile int le;
    private volatile String mn;
    private Bitmap mp;
    private int n;
    private String nh;
    private final Set<Integer> no;
    private long op;
    private volatile String ox;
    private volatile boolean p;
    private final com.bytedance.sdk.openadsdk.core.ir.dq q;
    private volatile boolean r;
    private volatile String s;
    private boolean u;
    private Bridge vf;
    private HashMap<String, Object> wp;
    private volatile com.bytedance.sdk.openadsdk.core.e.dq ia = new com.bytedance.sdk.openadsdk.core.e.dq(2);
    private volatile int kk = 0;
    private volatile boolean o = true;

    public static class d {
        public static final com.bytedance.sdk.component.mn.dq dq = com.bytedance.sdk.openadsdk.core.ir.n.dq("sp_global_info");
    }

    public static final class dq extends com.bytedance.sdk.openadsdk.f.d.ox.p {
        public dq() {
            super(null);
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
        public boolean d() {
            return "1".equals(com.bytedance.sdk.openadsdk.tools.d.dq(17, "1"));
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
        public boolean dq() {
            return "1".equals(com.bytedance.sdk.openadsdk.tools.d.dq(7, "1"));
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
        public com.bytedance.sdk.openadsdk.f.d.ox.ox ia() {
            String[] split;
            String dq = com.bytedance.sdk.openadsdk.tools.d.dq(8, "");
            if (TextUtils.isEmpty(dq) || (split = dq.split(",")) == null) {
                return null;
            }
            String str = split.length > 0 ? split[0] : "";
            String str2 = split.length > 1 ? split[1] : "";
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
                return null;
            }
            return new ox.dq().dq(Double.valueOf(str).doubleValue()).d(Double.valueOf(str2).doubleValue()).dq();
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
        public boolean iw() {
            return "1".equals(com.bytedance.sdk.openadsdk.tools.d.dq(22, "1"));
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
        public String kk() {
            return com.bytedance.sdk.openadsdk.tools.d.dq(10, "");
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
        public boolean mn() {
            return false;
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
        public String no() {
            return com.bytedance.sdk.openadsdk.tools.d.dq(13, "");
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
        public String o() {
            return com.bytedance.sdk.openadsdk.tools.d.dq(18, "");
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
        public boolean ox() {
            return "1".equals(com.bytedance.sdk.openadsdk.tools.d.dq(9, "1"));
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
        public boolean p() {
            return "1".equals(com.bytedance.sdk.openadsdk.tools.d.dq(11, "1"));
        }

        @Override // com.bytedance.sdk.openadsdk.f.d.ox.p
        public boolean s() {
            return "1".equals(com.bytedance.sdk.openadsdk.tools.d.dq(12, "1"));
        }
    }

    private no() {
        Set<Integer> synchronizedSet = Collections.synchronizedSet(new HashSet());
        this.no = synchronizedSet;
        this.ig = false;
        this.mp = null;
        com.bytedance.sdk.openadsdk.core.ir.dq dqVar = new com.bytedance.sdk.openadsdk.core.ir.dq();
        this.q = dqVar;
        this.gh = false;
        this.r = true;
        this.i = true;
        this.le = 0;
        this.k = new JSONObject();
        this.wp = new HashMap<>();
        this.f3272e = false;
        this.kx = false;
        this.h = null;
        this.ji = -1;
        this.bl = -1;
        this.n = -1;
        this.op = -1L;
        this.nh = null;
        Context context = wp.getContext();
        if (context != null) {
            com.bykv.vk.openvk.component.video.api.iw.dq.dq(context);
        }
        synchronizedSet.add(4);
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(dqVar);
        } else if (context != null && context.getApplicationContext() != null) {
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(dqVar);
        }
        this.er = new com.bytedance.sdk.openadsdk.jy.ox();
    }

    private static void cd(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.component.utils.f.dq(str.length() <= 20000, "data超长, 最长为20000");
    }

    private static final String dq(Map<String, Object> map) {
        if (map == null || map.isEmpty()) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (!TextUtils.isEmpty(entry.getKey())) {
                try {
                    jSONObject.putOpt(entry.getKey(), entry.getValue());
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return jSONObject.toString();
    }

    private static com.bytedance.sdk.openadsdk.f.d.ox.p ds() {
        return new p.dq().d(true).dq(true).dq((com.bytedance.sdk.openadsdk.f.d.ox.ox) null).ox(true).dq((String) null).p(true).d((String) null).s(true).ox((String) null).iw(true).p((String) null).mn(false).dq();
    }

    private static void f(String str) {
        com.bytedance.sdk.component.utils.f.dq(str, "name不能为空");
    }

    private static void fw(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.component.utils.f.dq(str.length() <= 1000, "keyword超长, 最长为1000");
    }

    public static no ia() {
        if (wn == null) {
            synchronized (no.class) {
                try {
                    if (wn == null) {
                        wn = new no();
                    }
                } finally {
                }
            }
        }
        return wn;
    }

    private static void jy(String str) {
        com.bytedance.sdk.component.utils.f.dq(str, "appid不能为空");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mp(String str) {
        JSONArray jSONArray;
        try {
            jSONArray = TextUtils.isEmpty(str) ? new JSONArray() : new JSONArray(str);
        } catch (Exception unused) {
            jSONArray = new JSONArray();
        }
        HashMap hashMap = new HashMap();
        JSONArray jSONArray2 = new JSONArray();
        boolean z = false;
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject optJSONObject = jSONArray.optJSONObject(i);
            if (optJSONObject != null) {
                if (!optJSONObject.isNull("__name__")) {
                    String optString = optJSONObject.optString("__name__");
                    String optString2 = optJSONObject.optString("value");
                    if (!TextUtils.isEmpty(optString)) {
                        hashMap.put(optString, optString2);
                    }
                } else if ("csj_rit_list".equals(optJSONObject.optString(abn.EXTRA_UA_APP_NAME))) {
                    kk(optJSONObject.optString("value"));
                    jSONArray.remove(i);
                    z = true;
                } else {
                    jSONArray2.put(optJSONObject);
                }
            }
        }
        if (z) {
            this.iw = jSONArray.toString();
        } else {
            this.iw = str;
        }
        if ((jSONArray2.length() == 0 && hashMap.isEmpty()) || jSONArray2.length() != 0) {
            this.iw = jSONArray2.toString();
        }
        if (hashMap.isEmpty()) {
            return;
        }
        this.wp.putAll(hashMap);
    }

    private static final HashMap<String, Object> q(String str) {
        if (TextUtils.isEmpty(str)) {
            return new HashMap<>();
        }
        HashMap<String, Object> hashMap = new HashMap<>();
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!TextUtils.isEmpty(next)) {
                    hashMap.put(next, jSONObject.opt(next));
                }
            }
            return hashMap;
        } catch (Exception unused) {
            return new HashMap<>();
        }
    }

    public com.bytedance.sdk.openadsdk.core.playable.ia bl() {
        if (this.j == null) {
            this.j = new com.bytedance.sdk.openadsdk.core.playable.ia(10, 8);
        }
        return this.j;
    }

    public Activity by() {
        WeakReference<Activity> dq2 = this.q.dq();
        if (dq2 != null) {
            return dq2.get();
        }
        return null;
    }

    public boolean c() {
        return "5001121".equals(this.f3271d) && "com.union_test.toutiao".equals(com.bytedance.sdk.openadsdk.core.ir.c.kk());
    }

    public String cd() {
        return !TextUtils.isEmpty(this.iw) ? this.iw : com.bytedance.sdk.openadsdk.core.ox.p.dq().o("");
    }

    public boolean ce() {
        return "5001121".equals(this.f3271d);
    }

    public String d() {
        if (TextUtils.isEmpty(this.f3270c)) {
            this.f3270c = com.bytedance.sdk.openadsdk.core.o.o.dq();
        }
        return this.f3270c;
    }

    public void d(int i) {
        this.kk = i;
    }

    public void d(String str) {
        this.nh = str;
    }

    public void d(boolean z) {
        d.dq.dq("sdk_activate_init", z);
    }

    public boolean d(Context context) {
        if (com.bytedance.sdk.openadsdk.core.kx.dq.dq().s()) {
            this.bl = 2;
        } else {
            this.bl = 1;
        }
        return this.bl == 1;
    }

    public void dq(int i) {
        this.ia = new com.bytedance.sdk.openadsdk.core.e.dq(i, true);
    }

    public void dq(long j) {
        this.op = j;
    }

    public void dq(Bitmap bitmap) {
        if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
            String dq2 = com.bytedance.sdk.component.utils.p.dq(bitmap);
            if (!TextUtils.isEmpty(dq2)) {
                d.dq.dq("pause_icon", dq2);
            }
        }
        this.mp = bitmap;
    }

    public void dq(Bundle bundle) {
        if (bundle == null || bundle.keySet().size() <= 0) {
            return;
        }
        for (String str : bundle.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                try {
                    Bundle bundle2 = bundle.getBundle(str);
                    if (bundle2 == null) {
                        return;
                    }
                    String string = bundle2.getString(PluginConstants.KEY_APP_ID, this.f3271d);
                    dq(str, bundle2.getString(PluginConstants.KEY_SDK_VERSION), bundle2.getString(PluginConstants.KEY_PLUGIN_VERSION), string);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    public void dq(Bridge bridge) {
        if (this.h != null) {
            return;
        }
        this.h = new com.bytedance.sdk.openadsdk.f.dq(bridge);
    }

    public void dq(TTDownloadEventLogger tTDownloadEventLogger) {
        this.jy = tTDownloadEventLogger;
        if (ia().h() != null) {
            ia().h().call(20, hat.f19147b, Void.class);
        }
    }

    public void dq(dq.d dVar) {
        if (this.h != null) {
            if (this.ir == null) {
                iw iwVar = new iw();
                this.ir = iwVar;
                iwVar.dq(this.h);
            }
            this.ir.dq(dVar);
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.p pVar) {
        this.f3273f = pVar;
    }

    public void dq(String str) {
        this.f3270c = str;
    }

    public void dq(String str, String str2) {
        try {
            JSONObject optJSONObject = this.k.optJSONObject(str);
            if (optJSONObject != null) {
                optJSONObject.putOpt(PluginConstants.KEY_PLUGIN_VERSION, str2);
            }
        } catch (JSONException unused) {
            com.bytedance.sdk.component.utils.ig.p("GlobalInfo", "JSONObject not found for name " + str + " when update plugin config.");
        }
    }

    public void dq(String str, String str2, String str3, String str4) {
        try {
            JSONObject optJSONObject = this.k.optJSONObject(str);
            if (TextUtils.isEmpty(str4)) {
                str4 = this.f3271d;
            }
            if (optJSONObject == null) {
                optJSONObject = new JSONObject();
            }
            optJSONObject.put(PluginConstants.KEY_APP_ID, str4);
            optJSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, str3);
            optJSONObject.put(PluginConstants.KEY_SDK_VERSION, str2);
            this.k.put(str, optJSONObject);
        } catch (JSONException e2) {
            StringBuilder p = awf.p("addPluginConfig for ", str, " failed: ");
            p.append(e2.getMessage());
            com.bytedance.sdk.component.utils.ig.d("GlobalInfo", p.toString());
        }
    }

    public void dq(int... iArr) {
        if (iArr == null) {
            return;
        }
        try {
            this.no.clear();
            for (int i : iArr) {
                this.no.add(Integer.valueOf(i));
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public boolean dq() {
        return this.q.d();
    }

    public boolean dq(Activity activity) {
        return this.q.dq(activity);
    }

    public boolean dq(Context context) {
        if (com.bytedance.sdk.openadsdk.core.kx.dq.dq().s()) {
            this.ji = 2;
        } else {
            this.ji = 1;
        }
        return this.ji == 1;
    }

    public boolean dq(boolean z) {
        return this.q.dq(z);
    }

    public String e() {
        if (!TextUtils.isEmpty(this.ce)) {
            return this.ce;
        }
        try {
            Object invoke = Class.forName("com.qq.e.comm.managers.status.SDKStatus").getMethod("getIntegrationSDKVersion", null).invoke(null, null);
            if (invoke instanceof String) {
                String str = (String) invoke;
                this.ce = str;
                return str;
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    public String er() {
        if (!TextUtils.isEmpty(this.cd)) {
            return this.cd;
        }
        com.bytedance.sdk.component.mn.dq dq2 = ox.dq();
        String d2 = dq2.d("any_door_id", (String) null);
        this.cd = d2;
        if (!TextUtils.isEmpty(d2)) {
            return this.cd;
        }
        String valueOf = String.valueOf(System.currentTimeMillis());
        dq2.dq("any_door_id", valueOf);
        this.cd = valueOf;
        return valueOf;
    }

    public String f() {
        return !TextUtils.isEmpty(this.s) ? this.s : com.bytedance.sdk.openadsdk.core.ox.p.dq().ia("");
    }

    public com.bytedance.sdk.openadsdk.core.e.dq fw() {
        return this.ia;
    }

    public Map<String, Object> gh() {
        if (!this.wp.isEmpty()) {
            return this.wp;
        }
        String ig = com.bytedance.sdk.openadsdk.core.ox.p.dq().ig("");
        this.wp.putAll(TextUtils.isEmpty(ig) ? q(ig) : new HashMap<>());
        return this.wp;
    }

    public String gx() {
        try {
            if ((wp.d().xj() & 1) == 1) {
                return com.bytedance.sdk.openadsdk.core.ox.p.dq().s();
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public Bridge h() {
        Bridge bridge = this.vf;
        if (bridge != null) {
            return bridge;
        }
        if (op.f3334d >= 5500) {
            this.vf = iw(3);
        } else {
            if (!AdSdkInitializerHolder.isSdkInitSuccess()) {
                return null;
            }
            try {
                this.vf = (Bridge) DownloadBridgeFactory.class.getDeclaredMethod("getDownloadBridge", Context.class).invoke(null, wp.getContext());
            } catch (Throwable th) {
                com.bytedance.sdk.component.utils.ig.p("TTDownload", "Init download bridge failed: " + th.getMessage());
            }
        }
        return this.vf;
    }

    public boolean i() {
        return com.bytedance.sdk.openadsdk.core.multipro.d.ox() ? d.dq.d("allow_show_notify", true) : this.o;
    }

    public void ia(String str) {
        s(str);
        com.bytedance.sdk.openadsdk.core.ox.p.dq().mn(str);
    }

    public void ia(boolean z) {
        this.r = z;
    }

    public void ig(String str) {
        d.dq.dq("toolsBasicInfUrl", str);
    }

    public boolean ig() {
        return d.dq.d("sdk_activate_init", true);
    }

    public int ir() {
        int no;
        return (!com.bytedance.sdk.openadsdk.core.ox.ox.dq().d() || (no = com.bytedance.sdk.openadsdk.core.ox.p.dq().no()) == Integer.MIN_VALUE) ? this.le : no;
    }

    public Bridge iw(int i) {
        if (this.h == null) {
            return null;
        }
        Bridge bridge = this.h;
        hat g2 = hat.g(1);
        g2.o(0, i);
        return (Bridge) bridge.call(10, g2.k(), Bridge.class);
    }

    public String iw() {
        return this.er.dq();
    }

    public void iw(final String str) {
        cd(str);
        com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("setUserData") { // from class: com.bytedance.sdk.openadsdk.core.no.1
            @Override // java.lang.Runnable
            public void run() {
                no.this.mp(str);
            }
        });
    }

    public void iw(boolean z) {
        this.gh = z;
        com.bytedance.sdk.openadsdk.core.ox.s.d();
    }

    public int j() {
        return com.bytedance.sdk.openadsdk.core.ox.p.dq().s(0);
    }

    public TTDownloadEventLogger ji() {
        return this.jy;
    }

    public boolean jy() {
        return com.bytedance.sdk.openadsdk.core.ox.ox.dq().d() ? com.bytedance.sdk.openadsdk.core.ox.p.dq().dq(this.p) : this.p;
    }

    public void k() {
        com.bytedance.sdk.openadsdk.core.ox.p.dq().ox(this.le);
        com.bytedance.sdk.openadsdk.core.ox.p.dq().ox(this.f3271d);
        com.bytedance.sdk.openadsdk.core.ox.p.dq().p(this.ox);
        com.bytedance.sdk.openadsdk.core.ox.p.dq().d(this.p);
        com.bytedance.sdk.openadsdk.core.ox.p.dq().mn(this.s);
        com.bytedance.sdk.openadsdk.core.ox.p.dq().kk(this.iw);
        com.bytedance.sdk.openadsdk.core.ox.p.dq().no(dq(this.wp));
        com.bytedance.sdk.component.mn.dq dqVar = d.dq;
        dqVar.dq("title_bar_theme", this.kk);
        dqVar.dq("allow_show_notify", this.o);
        com.bytedance.sdk.openadsdk.core.ox.p.dq().s(this.ig);
        Set<Integer> set = this.no;
        if (set == null || set.isEmpty()) {
            dqVar.dq("network_state");
            return;
        }
        Iterator<Integer> it = this.no.iterator();
        StringBuilder sb = new StringBuilder();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append(",");
        }
        d.dq.dq("network_state", sb.toString());
    }

    public com.bytedance.sdk.openadsdk.f.d.ox.p kk() {
        return new bl(no());
    }

    public void kk(String str) {
        this.mn = str;
        com.bytedance.sdk.openadsdk.core.bl.s.dq((com.bytedance.sdk.openadsdk.core.bl.p) null).dq(true);
    }

    public void kk(boolean z) {
        this.u = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void kx() {
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("gdt_version", e());
        } catch (JSONException unused) {
        }
        int ox = com.bytedance.sdk.openadsdk.h.no.ox(TTAdSdk.PLUGIN_ADAPTER_PACKAGE_NAME);
        if (ox != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append(ox);
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            for (int i = 0; i < sb2.length(); i++) {
                sb3.append(sb2.charAt(i));
                if (i != sb2.length() - 1) {
                    sb3.append(".");
                }
            }
            if (!TextUtils.isEmpty(sb3.toString())) {
                str = sb3.toString();
                if (jSONObject.has("gdt_version")) {
                    return;
                }
                try {
                    jSONObject.put(PluginConstants.KEY_APP_ID, this.f3271d);
                    jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, str);
                    jSONObject.put(PluginConstants.KEY_SDK_VERSION, str);
                    jSONObject.put("plugin_update_network", "2");
                    this.k.put(TTAdSdk.PLUGIN_ADAPTER_PACKAGE_NAME, jSONObject);
                    return;
                } catch (JSONException unused2) {
                    return;
                }
            }
        }
        str = "1.0.0.0";
        if (jSONObject.has("gdt_version")) {
        }
    }

    public int l() {
        return this.n;
    }

    public boolean le() {
        return this.gh;
    }

    public void mn(int i) {
        this.n = i;
    }

    public void mn(String str) {
        iw(str);
        if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
            com.bytedance.sdk.openadsdk.core.ox.p.dq().kk(str);
            com.bytedance.sdk.openadsdk.core.ox.p.dq().no(dq(this.wp));
        }
    }

    public void mn(boolean z) {
        op.mn = z;
        this.ig = z;
    }

    public boolean mn() {
        return this.er.p();
    }

    public String mp() {
        return !TextUtils.isEmpty(this.f3271d) ? this.f3271d : com.bytedance.sdk.openadsdk.core.ox.p.dq().kk();
    }

    public boolean n() {
        return com.bytedance.sdk.openadsdk.core.ox.ox.dq().d() ? com.bytedance.sdk.openadsdk.core.ox.p.dq().p(false) : this.ig;
    }

    public Bridge nh() {
        return this.h;
    }

    public com.bytedance.sdk.openadsdk.f.d.ox.p no() {
        if (this.f3273f == null) {
            this.f3273f = c() ? dq : ds();
        }
        return this.f3273f;
    }

    public void no(String str) {
        d.dq.dq("toolsAdPreviewUrl", str);
    }

    public String o() {
        return this.nh;
    }

    public void o(String str) {
        d.dq.dq("toolsQueryHost", str);
    }

    public void o(boolean z) {
        com.bytedance.sdk.component.mn.dq dqVar = d.dq;
        dqVar.dq("update_advance_preview_mode", z);
        dqVar.dq("update_advance_preview_mode_time", System.currentTimeMillis());
    }

    public String ob() {
        return this.mn;
    }

    public Bitmap op() {
        return com.bytedance.sdk.openadsdk.core.multipro.d.ox() ? com.bytedance.sdk.component.utils.p.dq(d.dq.d("pause_icon", "")) : this.mp;
    }

    public void ox(String str) {
        jy(str);
        this.f3271d = str;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(PluginConstants.KEY_APP_ID, str);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
            jSONObject.put(PluginConstants.KEY_SDK_VERSION, op.ox);
            this.k.put("com.byted.pangle", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public void ox(boolean z) {
        this.p = z;
    }

    public boolean ox() {
        Object systemService;
        boolean isRequestPinShortcutSupported;
        if (!this.kx && Build.VERSION.SDK_INT >= 26) {
            this.kx = true;
            try {
                systemService = wp.getContext().getSystemService((Class<Object>) dkx.b());
                ShortcutManager q = dkx.q(systemService);
                if (q != null) {
                    isRequestPinShortcutSupported = q.isRequestPinShortcutSupported();
                    this.f3272e = isRequestPinShortcutSupported;
                }
            } catch (Throwable unused) {
            }
        }
        return this.f3272e;
    }

    public boolean ox(int i) {
        if (!com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
            return this.no.contains(Integer.valueOf(i));
        }
        String d2 = d.dq.d("network_state", "");
        if (!TextUtils.isEmpty(d2)) {
            String[] split = d2.split(",");
            if (split.length > 0) {
                for (String str : split) {
                    if (!TextUtils.isEmpty(str) && String.valueOf(i).equals(str)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public com.bytedance.sdk.openadsdk.core.ir.dq p() {
        return this.q;
    }

    public void p(int i) {
        if (i < 0 || i > 2) {
            i = 0;
        }
        try {
            this.le = i;
        } catch (Throwable unused) {
        }
    }

    public void p(String str) {
        f(str);
        this.ox = str;
    }

    public void p(boolean z) {
        this.o = z;
    }

    public String q() {
        return !TextUtils.isEmpty(this.ox) ? this.ox : com.bytedance.sdk.openadsdk.core.ox.p.dq().o();
    }

    public int r() {
        return com.bytedance.sdk.openadsdk.core.multipro.d.ox() ? d.dq.d("title_bar_theme", 0) : this.kk;
    }

    public void s(int i) {
        com.bytedance.sdk.openadsdk.core.ox.p.dq().p(i);
    }

    public void s(String str) {
        fw(str);
        this.s = str;
    }

    public void s(boolean z) {
        ox(z);
        com.bytedance.sdk.openadsdk.core.ox.p.dq().d(z);
    }

    public boolean s() {
        return this.er.ox();
    }

    public long t() {
        return this.op;
    }

    public String u() {
        if (!com.bytedance.sdk.openadsdk.core.ox.ox.dq().d()) {
            return TextUtils.isEmpty(this.fw) ? "" : this.fw;
        }
        String d2 = d.dq.d("tob_ab_sdk_version", "");
        return TextUtils.isEmpty(d2) ? "" : d2;
    }

    public boolean uh() {
        com.bytedance.sdk.component.mn.dq dqVar = d.dq;
        if (dqVar.d("update_advance_preview_mode", false)) {
            long d2 = dqVar.d("update_advance_preview_mode_time", -1L);
            if (d2 != -1) {
                if (System.currentTimeMillis() - d2 <= 3600000) {
                    return true;
                }
                o(false);
            }
        }
        return false;
    }

    public String v() {
        return d.dq.d("toolsBasicInfUrl", "");
    }

    public boolean vf() {
        return this.u;
    }

    public boolean wn() {
        return this.r;
    }

    public JSONObject wp() {
        if (op.d()) {
            ia().kx();
        }
        return this.k;
    }

    public String xz() {
        return d.dq.d("toolsQueryHost", "");
    }

    public String yy() {
        return d.dq.d("toolsAdPreviewUrl", "");
    }
}
