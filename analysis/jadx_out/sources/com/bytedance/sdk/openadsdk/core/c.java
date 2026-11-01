package com.bytedance.sdk.openadsdk.core;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.webkit.JavascriptInterface;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.utils.e;
import com.bytedance.sdk.component.widget.SSWebView;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.activity.base.TTMiddlePageActivity;
import com.bytedance.sdk.openadsdk.core.d.p;
import com.bytedance.sdk.openadsdk.core.jy.dq;
import com.bytedance.sdk.openadsdk.core.r.io;
import com.bytedance.sdk.openadsdk.core.r.k;
import com.bytedance.sdk.openadsdk.core.r.l;
import com.bytedance.sdk.openadsdk.core.widget.ia;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class c implements com.bytedance.sdk.component.adexpress.s.d, e.dq, com.bytedance.sdk.openadsdk.core.jy.d {
    private static volatile boolean ha;
    private static final Map<String, Boolean> ox;
    private WeakReference<com.bytedance.sdk.openadsdk.core.fw.d> bl;
    private com.bytedance.sdk.openadsdk.iw.dq ce;
    private AtomicBoolean cv;
    private WeakReference<com.bytedance.sdk.openadsdk.core.fw.iw> dc;
    protected Map<String, Object> dq;
    private WeakReference<com.bytedance.sdk.openadsdk.core.ugeno.ia.d> ds;

    /* renamed from: e, reason: collision with root package name */
    private WeakReference<com.bytedance.sdk.openadsdk.o.dq> f2493e;
    private com.bytedance.sdk.component.dq.fw er;
    private SoftReference<com.bytedance.sdk.component.adexpress.d.no> gh;
    private JSONObject h;
    private JSONObject i;
    private String ia;
    private String ig;
    private HashMap<String, ig> ir;
    private WeakReference<Context> iw;
    private com.bytedance.sdk.openadsdk.core.widget.dq.dq j;
    private WeakReference<com.bytedance.sdk.openadsdk.core.d.s> ji;
    private WeakReference<com.bytedance.sdk.openadsdk.core.fw.dq> k;
    private WeakReference<View> kk;
    private WeakReference<com.bytedance.sdk.openadsdk.core.fw.p> kx;
    private WeakReference<com.bytedance.sdk.openadsdk.core.jy.p> le;
    private com.bytedance.sdk.openadsdk.core.jy.ox mn;
    private WeakReference<com.bytedance.sdk.openadsdk.core.fw.kk> n;
    private int no;
    private String o;
    private boolean ob;
    private List<com.bytedance.sdk.openadsdk.core.r.j> op;
    private WeakReference<SSWebView> p;
    private com.bytedance.sdk.openadsdk.core.r.j q;
    private WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> r;
    private ia.dq uh;
    private List<JSONObject> v;
    private boolean vf;
    private WeakReference<com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk> vw;
    private String wn;
    private WeakReference<com.bytedance.sdk.openadsdk.core.fw.s> wp;
    private com.bytedance.sdk.openadsdk.core.ugeno.d xz;
    private JSONObject yy;

    /* renamed from: d, reason: collision with root package name */
    boolean f2492d = false;
    private boolean mp = false;
    private boolean jy = false;

    /* renamed from: f, reason: collision with root package name */
    private boolean f2494f = true;
    private boolean fw = false;
    private boolean cd = true;
    private boolean u = false;

    /* renamed from: c, reason: collision with root package name */
    private boolean f2491c = false;
    private boolean nh = false;
    private boolean l = false;
    private boolean t = false;
    private boolean gx = false;
    private boolean by = false;
    private com.bytedance.sdk.component.utils.e s = new com.bytedance.sdk.component.utils.e(Looper.getMainLooper(), this);

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        public String f2503d;
        public String dq;
        public String ox;
        public JSONObject p;
        public int s;
    }

    static {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        ox = concurrentHashMap;
        Boolean bool = Boolean.TRUE;
        concurrentHashMap.put("log_event", bool);
        concurrentHashMap.put("private", bool);
        concurrentHashMap.put("dispatch_message", bool);
        concurrentHashMap.put("custom_event", bool);
        concurrentHashMap.put("log_event_v3", bool);
        ha = false;
    }

    public c(Context context) {
        this.iw = new WeakReference<>(context);
    }

    private void by() {
        io gs;
        Context context;
        com.bytedance.sdk.openadsdk.core.r.j jVar = this.q;
        if (jVar != null && (gs = jVar.gs()) != null && gs.d() == 1 && gs.iw() == 1) {
            yy();
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("data", new JSONObject());
            } catch (Throwable unused) {
            }
            WeakReference<Context> weakReference = this.iw;
            if (weakReference == null || (context = weakReference.get()) == null) {
                return;
            }
            this.mn.dq(context, jSONObject, this.o, this.no, this.jy, true);
            dq(jSONObject, false);
        }
    }

    private void cd(JSONObject jSONObject) {
        WeakReference<com.bytedance.sdk.openadsdk.core.fw.d> weakReference = this.bl;
        if (weakReference == null || jSONObject == null || weakReference.get() == null) {
            return;
        }
        this.bl.get().dq(jSONObject.optBoolean("isRenderSuc", false), jSONObject.optInt(PluginConstants.KEY_ERROR_CODE, -1), jSONObject.optString("msg", ""));
    }

    private void d(String str, boolean z) {
        if (this.ce == null || TextUtils.isEmpty(str)) {
            return;
        }
        if (z) {
            this.ce.iw(str);
        } else {
            this.ce.mn(str);
        }
    }

    public static void d(boolean z) {
        ha = z;
    }

    private String dq(String str, String str2) {
        return ((("landing_perf_stats".equals(str2) || "landing_perf_exception".equals(str2)) && "landingpage".equals(str)) || this.gh != null || v()) ? str : com.bytedance.sdk.openadsdk.core.ir.c.dq(this.no);
    }

    public static JSONArray dq(List<com.bytedance.sdk.openadsdk.core.r.j> list) {
        JSONArray jSONArray = new JSONArray();
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                jSONArray.put(list.get(i).ve());
            }
        }
        return jSONArray;
    }

    public static JSONObject dq(com.bytedance.sdk.openadsdk.core.r.j jVar, AtomicBoolean atomicBoolean) {
        boolean dq2;
        JSONObject jSONObject = new JSONObject();
        if (wp.d() != null) {
            try {
                int kk = com.bytedance.sdk.openadsdk.core.ir.c.kk(jVar);
                int ia = com.bytedance.sdk.openadsdk.core.ir.c.ia(jVar);
                boolean z = true;
                int s = com.bytedance.sdk.openadsdk.core.r.bl.p(jVar, true) ? 0 : wp.d().s(kk);
                int iw = dq(ia, jVar) ? 0 : wp.d().iw(kk);
                boolean s2 = wp.d().s(String.valueOf(kk));
                if (atomicBoolean != null) {
                    dq2 = atomicBoolean.get();
                } else {
                    if (ia != 7 && ia != 8) {
                        dq2 = wp.d().p(kk);
                    }
                    dq2 = wp.d().dq(jVar, kk);
                }
                jSONObject.put("ad_slot_type", ia);
                jSONObject.put("voice_control", dq2);
                jSONObject.put("rv_skip_time", s);
                jSONObject.put("fv_skip_show", s2);
                jSONObject.put("iv_skip_time", iw);
                if (jVar == null || !jVar.qc()) {
                    z = false;
                }
                jSONObject.put("show_dislike", z);
                jSONObject.put("video_adaptation", jVar != null ? jVar.uh() : 0);
            } catch (Exception unused) {
            }
        }
        return jSONObject;
    }

    private void dq(final dq dqVar, final JSONObject jSONObject) {
        if (dqVar == null) {
            return;
        }
        try {
            dq(dqVar.p, new com.bytedance.sdk.openadsdk.core.fw.ox() { // from class: com.bytedance.sdk.openadsdk.core.c.12
                @Override // com.bytedance.sdk.openadsdk.core.fw.ox
                public void dq(boolean z, List<com.bytedance.sdk.openadsdk.core.r.j> list, boolean z2) {
                    if (!z) {
                        c.this.ox(dqVar.f2503d, jSONObject);
                        return;
                    }
                    try {
                        jSONObject.put("creatives", c.dq(list));
                        c.this.ox(dqVar.f2503d, jSONObject);
                    } catch (Exception unused) {
                    }
                }
            });
        } catch (Exception unused) {
        }
    }

    public static boolean dq(int i, com.bytedance.sdk.openadsdk.core.r.j jVar) {
        com.bytedance.sdk.openadsdk.core.r.h eo;
        if (i == 8 && com.bytedance.sdk.openadsdk.core.r.h.dq(jVar) && (eo = jVar.eo()) != null) {
            return eo.p();
        }
        return false;
    }

    private boolean dq(String str, int i, com.bytedance.sdk.openadsdk.core.r.k kVar) {
        HashMap<String, ig> hashMap;
        ig igVar;
        if (TextUtils.isEmpty(str) || (hashMap = this.ir) == null || (igVar = hashMap.get(str)) == null) {
            return false;
        }
        igVar.dq(i, kVar);
        return true;
    }

    private boolean gh(JSONObject jSONObject) {
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference != null && weakReference.get() != null && jSONObject != null) {
            double dq2 = this.r.get().dq();
            int d2 = this.r.get().d();
            try {
                jSONObject.put("currentTime", dq2 / 1000.0d);
                jSONObject.put("state", d2);
                return true;
            } catch (Exception unused) {
            }
        }
        return false;
    }

    private JSONObject gx() {
        return dq(this.q, this.cv);
    }

    private void i(JSONObject jSONObject) {
        WeakReference<com.bytedance.sdk.openadsdk.core.jy.p> weakReference;
        com.bytedance.sdk.openadsdk.core.jy.p pVar;
        if (jSONObject == null || (weakReference = this.le) == null || (pVar = weakReference.get()) == null) {
            return;
        }
        try {
            JSONArray optJSONArray = jSONObject.optJSONArray("temaiProductIds");
            if (optJSONArray == null || optJSONArray.length() <= 0) {
                pVar.dq(false, null);
            } else {
                pVar.dq(true, optJSONArray);
            }
        } catch (Exception unused) {
            pVar.dq(false, null);
        }
    }

    private boolean iw(String str) {
        return TextUtils.isEmpty(str) || !"click_other".equals(str) || kx();
    }

    private void j() {
        com.bytedance.sdk.openadsdk.core.r.j jVar;
        WeakReference<SSWebView> weakReference = this.p;
        if (weakReference == null || weakReference.get() == null || (jVar = this.q) == null) {
            return;
        }
        int us = jVar.us();
        int tn = this.q.tn();
        int bs = this.q.bs();
        int mc = this.q.mc();
        int jo = this.q.jo();
        JSONObject rw = this.q.rw();
        JSONObject hm = this.q.hm();
        JSONObject aq = this.q.aq();
        this.p.get().setShakeValue(us);
        this.p.get().setDeepShakeValue(tn);
        this.p.get().setWriggleValue(bs);
        this.p.get().setTwistConfig(rw);
        this.p.get().setShakeInteractConf(hm);
        this.p.get().setTwistInteractConf(aq);
        this.p.get().setCalculationMethod(mc);
        this.p.get().setCalculationTwistMethod(jo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(JSONObject jSONObject) {
        com.bytedance.sdk.component.mp.dq nh = nh();
        if (nh != null) {
            com.bytedance.sdk.component.utils.no.dq(nh, "javascript:ToutiaoJSBridge._handleMessageFromToutiao(" + jSONObject.toString() + ")");
        }
    }

    private void l() {
        WeakReference<com.bytedance.sdk.openadsdk.core.fw.kk> weakReference = this.n;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.n.get().dq();
    }

    private void le(final JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        if (Looper.getMainLooper() == Looper.myLooper()) {
            k(jSONObject);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.c.3
                @Override // java.lang.Runnable
                public void run() {
                    c.this.k(jSONObject);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mn(String str) {
        int indexOf;
        if (str != null && str.startsWith("bytedance://")) {
            try {
                if (str.equals("bytedance://dispatch_message/")) {
                    com.bytedance.sdk.component.mp.dq nh = nh();
                    if (nh != null) {
                        com.bytedance.sdk.component.utils.no.dq(nh, "javascript:ToutiaoJSBridge._fetchQueue()");
                        return;
                    }
                    return;
                }
                if (str.startsWith("bytedance://private/setresult/") && (indexOf = str.indexOf(38, 30)) > 0) {
                    String substring = str.substring(30, indexOf);
                    String substring2 = str.substring(indexOf + 1);
                    if (!substring.equals("SCENE_FETCHQUEUE") || substring2.length() <= 0) {
                        return;
                    }
                    s(substring2);
                }
            } catch (Exception unused) {
            }
        }
    }

    private com.bytedance.sdk.component.mp.dq nh() {
        WeakReference<SSWebView> weakReference = this.p;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private static List<String> ob() {
        return Arrays.asList("appInfo", "adInfo", "getTemplateInfo", "getTeMaiAds");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(String str, JSONObject jSONObject) {
        try {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", "callback");
            jSONObject2.put("__callback_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            le(jSONObject2);
        } catch (Exception unused) {
        }
    }

    public static void ox(JSONObject jSONObject) throws Exception {
        JSONArray jSONArray = new JSONArray();
        Iterator<String> it = ob().iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next());
        }
        jSONObject.put(TTDownloadField.TT_APP_NAME, com.bytedance.sdk.openadsdk.core.mn.dq.dq());
        jSONObject.put("innerAppName", com.bytedance.sdk.openadsdk.core.mn.dq.s());
        jSONObject.put("aid", com.bytedance.sdk.openadsdk.core.mn.dq.d());
        jSONObject.put("sdkEdition", com.bytedance.sdk.openadsdk.core.mn.dq.ox());
        jSONObject.put("appVersion", com.bytedance.sdk.openadsdk.core.mn.dq.p());
        jSONObject.put("netType", com.bytedance.sdk.openadsdk.core.mn.dq.iw());
        jSONObject.put("supportList", jSONArray);
        jSONObject.put("deviceId", com.bytedance.sdk.openadsdk.core.mn.dq.mn());
        jSONObject.put("themeStatus", no.ia().j());
    }

    private void p(String str, JSONObject jSONObject) {
        try {
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("__msg_type", "event");
            jSONObject2.put("__event_id", str);
            if (jSONObject != null) {
                jSONObject2.put("__params", jSONObject);
            }
            le(jSONObject2);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean r(JSONObject jSONObject) {
        return jSONObject.has("borderRadiusTopLeft") && jSONObject.has("borderRadiusBottomLeft") && jSONObject.has("borderRadiusTopRight") && jSONObject.has("borderRadiusBottomRight");
    }

    private void s(String str) {
        try {
            JSONArray jSONArray = new JSONArray(new String(Base64.decode(str, 2)));
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                dq dqVar = new dq();
                try {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i);
                    if (optJSONObject != null) {
                        dqVar.dq = optJSONObject.optString("__msg_type", null);
                        dqVar.f2503d = optJSONObject.optString("__callback_id", null);
                        dqVar.ox = optJSONObject.optString("func");
                        dqVar.p = optJSONObject.optJSONObject("params");
                        dqVar.s = optJSONObject.optInt("JSSDK");
                    }
                } catch (Throwable unused) {
                }
                if (!TextUtils.isEmpty(dqVar.dq) && !TextUtils.isEmpty(dqVar.ox)) {
                    Message obtainMessage = this.s.obtainMessage(11);
                    obtainMessage.obj = dqVar;
                    this.s.sendMessage(obtainMessage);
                }
            }
        } catch (Exception unused2) {
            if (!com.bytedance.sdk.component.utils.ig.dq()) {
                com.bytedance.sdk.component.utils.ig.d("TTAndroidObject", "failed to parse jsbridge msg queue");
                return;
            }
            com.bytedance.sdk.component.utils.ig.d("TTAndroidObject", "failed to parse jsbridge msg queue " + str);
        }
    }

    private void s(String str, JSONObject jSONObject) {
        JSONArray jSONArray;
        String str2;
        String str3;
        String str4;
        String str5;
        JSONObject jSONObject2;
        String str6 = "click";
        String str7 = "";
        try {
            if ("show".equals(str)) {
                jSONArray = jSONObject.optJSONArray("show_url");
                str6 = "show";
            } else if ("click".equals(str)) {
                jSONArray = jSONObject.getJSONArray("click_url");
            } else {
                str6 = null;
                jSONArray = null;
            }
            if (jSONArray != null && jSONArray.length() != 0) {
                String ox2 = i.ox();
                if (TextUtils.isEmpty(ox2)) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.getString(i));
                }
                String optString = jSONObject.optString("log_extra");
                try {
                    jSONObject2 = new JSONObject(optString);
                    str2 = jSONObject2.optString(MediationConstant.EXTRA_ADID);
                    try {
                        str3 = jSONObject2.optString("creative_id");
                    } catch (Throwable unused) {
                        str3 = "";
                        str4 = str3;
                        str5 = str4;
                        HashMap hashMap = new HashMap();
                        hashMap.put("aid", str2);
                        hashMap.put("cid", str3);
                        hashMap.put("req_id", str4);
                        hashMap.put("customer_id", str5);
                        com.bytedance.sdk.openadsdk.core.gh.d.dq(ox2, arrayList, true, hashMap, com.bytedance.sdk.openadsdk.core.ig.ox.dq(optString, str2, str4, str7, str6));
                    }
                } catch (Throwable unused2) {
                    str2 = "";
                    str3 = str2;
                }
                try {
                    str4 = jSONObject2.optString("req_id");
                    try {
                        str5 = jSONObject2.optString("customer_id");
                        try {
                            str7 = com.bytedance.sdk.openadsdk.core.ir.c.d(jSONObject2.optInt("ad_slot_type"));
                        } catch (Throwable unused3) {
                        }
                    } catch (Throwable unused4) {
                        str5 = "";
                    }
                } catch (Throwable unused5) {
                    str4 = "";
                    str5 = str4;
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("aid", str2);
                    hashMap2.put("cid", str3);
                    hashMap2.put("req_id", str4);
                    hashMap2.put("customer_id", str5);
                    com.bytedance.sdk.openadsdk.core.gh.d.dq(ox2, arrayList, true, hashMap2, com.bytedance.sdk.openadsdk.core.ig.ox.dq(optString, str2, str4, str7, str6));
                }
                HashMap hashMap22 = new HashMap();
                hashMap22.put("aid", str2);
                hashMap22.put("cid", str3);
                hashMap22.put("req_id", str4);
                hashMap22.put("customer_id", str5);
                com.bytedance.sdk.openadsdk.core.gh.d.dq(ox2, arrayList, true, hashMap22, com.bytedance.sdk.openadsdk.core.ig.ox.dq(optString, str2, str4, str7, str6));
            }
        } catch (Throwable unused6) {
        }
    }

    private void t() {
        WeakReference<com.bytedance.sdk.openadsdk.core.fw.kk> weakReference = this.n;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.n.get().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uh() {
        Context context;
        List<com.bytedance.sdk.openadsdk.core.r.j> list = this.op;
        if (list == null || list.size() <= 0) {
            return;
        }
        this.ir = new HashMap<>();
        WeakReference<SSWebView> weakReference = this.p;
        SSWebView sSWebView = weakReference != null ? weakReference.get() : null;
        WeakReference<Context> weakReference2 = this.iw;
        if (weakReference2 == null || (context = weakReference2.get()) == null) {
            return;
        }
        for (com.bytedance.sdk.openadsdk.core.r.j jVar : this.op) {
            this.ir.put(jVar.fx(), new ig(context, jVar, sSWebView, this.wn));
        }
    }

    private boolean v() {
        return this.vw != null;
    }

    private JSONObject vf() {
        View view;
        SSWebView sSWebView;
        try {
            view = this.kk.get();
            sSWebView = this.p.get();
        } catch (Throwable unused) {
        }
        if (view == null || sSWebView == null) {
            com.bytedance.sdk.component.utils.ig.p("TTAndroidObject", "setCloseButtonInfo error closeButton is null");
            return null;
        }
        int[] d2 = com.bytedance.sdk.openadsdk.core.ir.ce.d(view);
        int[] d3 = com.bytedance.sdk.openadsdk.core.ir.ce.d((View) sSWebView);
        if (d2 != null && d3 != null) {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("x", com.bytedance.sdk.openadsdk.core.ir.ce.p(wp.getContext(), d2[0] - d3[0]));
            jSONObject.put("y", com.bytedance.sdk.openadsdk.core.ir.ce.p(wp.getContext(), d2[1] - d3[1]));
            jSONObject.put("w", com.bytedance.sdk.openadsdk.core.ir.ce.p(wp.getContext(), view.getWidth()));
            jSONObject.put("h", com.bytedance.sdk.openadsdk.core.ir.ce.p(wp.getContext(), view.getHeight()));
            jSONObject.put("isExist", true);
            return jSONObject;
        }
        com.bytedance.sdk.component.utils.ig.p("TTAndroidObject", "setCloseButtonInfo error position or webViewPosition is null");
        return null;
    }

    private JSONObject wp(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.f.d.ox.d ds;
        if (this.dq != null) {
            if (jSONObject == null) {
                jSONObject = new JSONObject();
            }
            try {
                JSONObject jSONObject2 = new JSONObject();
                String optString = jSONObject.optString("ad_extra_data", null);
                if (optString != null) {
                    jSONObject2 = new JSONObject(optString);
                }
                if (op.iw()) {
                    try {
                        com.bytedance.sdk.openadsdk.core.r.j jVar = this.q;
                        if (jVar != null && (ds = jVar.ds()) != null) {
                            String f2 = ds.f();
                            if (!TextUtils.isEmpty(f2)) {
                                jSONObject2.putOpt("media_extra", f2);
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
                for (Map.Entry<String, Object> entry : this.dq.entrySet()) {
                    jSONObject2.put(entry.getKey(), entry.getValue());
                }
                jSONObject.put("ad_extra_data", jSONObject2.toString());
            } catch (Exception e2) {
                com.bytedance.sdk.component.utils.ig.d(e2.toString());
            }
        }
        return jSONObject;
    }

    private boolean xz() {
        com.bytedance.sdk.openadsdk.core.r.j jVar = this.q;
        if (jVar == null || jVar.td() == null || com.bytedance.sdk.openadsdk.core.ir.i.ox(this.q) || this.u || this.q.td().optInt("parent_type") != 2) {
            return false;
        }
        int ia = com.bytedance.sdk.openadsdk.core.ir.c.ia(this.q);
        if (ia != 8 && ia != 7) {
            return false;
        }
        this.u = true;
        return true;
    }

    private void yy() {
        if (this.mn == null) {
            this.mn = com.bytedance.sdk.openadsdk.core.jy.dq.dq(this, this.q, this.l);
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public void adAnalysisData(String str) {
        try {
            o(new JSONObject(str).getBoolean("openPlayableLandingPage"));
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public String adInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            p(jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public String appInfo() {
        JSONObject jSONObject = new JSONObject();
        try {
            ox(jSONObject);
        } catch (Exception unused) {
        }
        return jSONObject.toString();
    }

    public JSONObject bl() {
        JSONObject jSONObject = new JSONObject();
        com.bytedance.sdk.openadsdk.core.r.j jVar = this.q;
        if (jVar != null) {
            String ip = jVar.ip();
            if (!TextUtils.isEmpty(ip)) {
                try {
                    return new JSONObject(ip);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        }
        return jSONObject;
    }

    public void c() {
        WeakReference<com.bytedance.sdk.openadsdk.core.fw.s> weakReference = this.wp;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.wp.get().d();
    }

    public void cd() {
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.r.get().o();
    }

    public int ce() {
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference == null || weakReference.get() == null) {
            return 0;
        }
        return this.r.get().ox();
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public void changeVideoState(final String str) {
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.c.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.kk(new JSONObject(str));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public void clickEvent(final String str) {
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.c.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.ig(new JSONObject(str));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    public c d(int i) {
        this.jy = true;
        return this;
    }

    public c d(SSWebView sSWebView) {
        this.p = new WeakReference<>(sSWebView);
        return this;
    }

    public c d(String str) {
        this.ia = str;
        return this;
    }

    public c d(List<JSONObject> list) {
        this.v = list;
        return this;
    }

    public JSONObject d() {
        WeakReference<com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk> weakReference = this.vw;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.vw.get().getCreativeVideoViewInfo();
    }

    public void d(final Uri uri) {
        long j;
        try {
            String host = uri.getHost();
            if (!"log_event".equals(host) && !"custom_event".equals(host) && !"log_event_v3".equals(host)) {
                if (!"private".equals(host) && !"dispatch_message".equals(host)) {
                    com.bytedance.sdk.component.utils.ig.d("TTAndroidObject", "handlrUir: not match schema host");
                    return;
                }
                com.bytedance.sdk.component.utils.ia.d().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.c.4
                    @Override // java.lang.Runnable
                    public void run() {
                        c.this.mn(uri.toString());
                    }
                });
                return;
            }
            String queryParameter = uri.getQueryParameter("category");
            String queryParameter2 = uri.getQueryParameter(TTDownloadField.TT_TAG);
            String queryParameter3 = uri.getQueryParameter(TTDownloadField.TT_LABEL);
            if (iw(queryParameter3)) {
                if (com.bytedance.sdk.openadsdk.core.r.op.d(this.q) && TextUtils.equals(queryParameter3, "track")) {
                    return;
                }
                long j2 = 0;
                try {
                    j = Long.parseLong(uri.getQueryParameter("value"));
                } catch (Exception unused) {
                    j = 0;
                }
                try {
                    j2 = Long.parseLong(uri.getQueryParameter("ext_value"));
                } catch (Exception unused2) {
                }
                JSONObject jSONObject = new JSONObject();
                String queryParameter4 = uri.getQueryParameter("extra");
                if (!TextUtils.isEmpty(queryParameter4)) {
                    try {
                        jSONObject = new JSONObject(queryParameter4);
                    } catch (Exception unused3) {
                    }
                }
                s(queryParameter3, jSONObject);
                if ("click".equals(queryParameter3)) {
                    jSONObject = wp(jSONObject);
                    WeakReference<com.bytedance.sdk.openadsdk.core.fw.s> weakReference = this.wp;
                    if (weakReference != null && weakReference.get() != null) {
                        this.wp.get().ox();
                    }
                }
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(queryParameter, dq(queryParameter2, queryParameter3), queryParameter3, j, j2, jSONObject);
            }
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.dq("TTAndroidObject", "handleUri exception: ", e2);
        }
    }

    public void d(String str, JSONObject jSONObject) {
        try {
            com.bytedance.sdk.component.dq.fw fwVar = this.er;
            if (fwVar != null) {
                fwVar.dq(str, (String) jSONObject);
            }
        } catch (Throwable th) {
            Log.e("TTAndroidObject", "sendJsMsg2020 error", th);
        }
    }

    public void d(JSONObject jSONObject) {
        this.yy = jSONObject;
    }

    public c dq(View view) {
        this.kk = new WeakReference<>(view);
        return this;
    }

    public c dq(com.bytedance.sdk.component.adexpress.d.no noVar) {
        this.gh = new SoftReference<>(noVar);
        return this;
    }

    public c dq(SSWebView sSWebView) {
        com.bytedance.sdk.component.utils.ig.p("webviewpool", "===useJsb2 webView hashCode:" + sSWebView.hashCode());
        com.bytedance.sdk.component.dq.fw d2 = com.bytedance.sdk.component.dq.fw.dq(sSWebView).dq(new com.bytedance.sdk.openadsdk.kk.dq()).dq("ToutiaoJSBridge").dq(new com.bytedance.sdk.component.dq.ig() { // from class: com.bytedance.sdk.openadsdk.core.c.1
            @Override // com.bytedance.sdk.component.dq.ig
            public <T> T dq(String str, Type type) {
                return null;
            }

            @Override // com.bytedance.sdk.component.dq.ig
            public <T> String dq(T t) {
                return null;
            }
        }).dq(no.ia().c()).d(true).dq().d();
        this.er = d2;
        com.bytedance.sdk.openadsdk.core.f.dq.i.dq(d2, this);
        com.bytedance.sdk.openadsdk.core.f.dq.p.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.iw.dq(this.er, this, this.q);
        com.bytedance.sdk.openadsdk.core.f.dq.ji.dq(this.er, this.q);
        com.bytedance.sdk.openadsdk.core.f.dq.q.dq(this.er);
        com.bytedance.sdk.openadsdk.core.f.dq.wp.dq(this.er, sSWebView);
        com.bytedance.sdk.openadsdk.core.f.dq.mn.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.ig.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.u.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.s.dq(this.er, this);
        com.bytedance.sdk.openadsdk.kk.dq.s.dq(this.er, this);
        com.bytedance.sdk.openadsdk.kk.dq.d.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.cd.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.gh.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.fw.dq(this.er, this);
        com.bytedance.sdk.openadsdk.kk.dq.p.dq(this.er, this);
        com.bytedance.sdk.openadsdk.kk.dq.dq.dq(this.er, this);
        com.bytedance.sdk.openadsdk.kk.dq.iw.dq(this.er, this);
        com.bytedance.sdk.openadsdk.kk.dq.mn.dq(this.er, this);
        com.bytedance.sdk.openadsdk.kk.dq.ox.dq(this.er, this);
        j();
        com.bytedance.sdk.openadsdk.core.f.dq.ox.dq(this.er, this.p.get(), this.ia);
        com.bytedance.sdk.openadsdk.core.f.dq.kx.dq(this.er, this.p.get(), this.ia);
        com.bytedance.sdk.openadsdk.core.f.dq.d.dq(this.er, this.p.get(), this.ia);
        com.bytedance.sdk.openadsdk.core.f.dq.e.dq(this.er, this.p.get(), this.ia);
        com.bytedance.sdk.openadsdk.core.f.dq.op.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.r.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.ir.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.er.dq(this.er, this, this.q);
        com.bytedance.sdk.openadsdk.core.f.dq.f.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.ia.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.jy.dq(this.er, this.q);
        com.bytedance.sdk.openadsdk.core.f.dq.le.dq(this.er, this.iw.get(), this.q);
        com.bytedance.sdk.openadsdk.core.f.dq.no.dq(this.er, this.q, this.v);
        com.bytedance.sdk.openadsdk.core.f.dq.k.dq(this.er, this, this.ds);
        com.bytedance.sdk.openadsdk.core.f.dq.n.dq(this.er, this, this.ds);
        com.bytedance.sdk.openadsdk.core.f.dq.wn.dq(this.er, sSWebView, this);
        com.bytedance.sdk.openadsdk.core.f.dq.o.dq(this.er, this.q, this);
        com.bytedance.sdk.openadsdk.core.f.dq.ce.dq(this.er, this.uh);
        com.bytedance.sdk.openadsdk.core.f.dq.c.dq(this.er, this);
        com.bytedance.sdk.openadsdk.core.f.dq.h.dq(this.er, this.xz);
        com.bytedance.sdk.openadsdk.core.f.dq.bl.dq(this.er, this, this.q);
        com.bytedance.sdk.openadsdk.core.f.dq.mp.dq(this.er, this.i);
        com.bytedance.sdk.openadsdk.core.f.dq.kk.dq(this.er, this.q, this);
        com.bytedance.sdk.openadsdk.core.f.dq.dq.dq(this.er, this.iw.get());
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.core.d.s sVar) {
        this.ji = new WeakReference<>(sVar);
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.core.fw.d dVar) {
        this.bl = new WeakReference<>(dVar);
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.core.fw.dq dqVar) {
        this.k = new WeakReference<>(dqVar);
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.core.fw.kk kkVar) {
        this.n = new WeakReference<>(kkVar);
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.core.fw.p pVar) {
        this.kx = new WeakReference<>(pVar);
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.core.fw.s sVar) {
        this.wp = new WeakReference<>(sVar);
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.core.jy.p pVar) {
        this.le = new WeakReference<>(pVar);
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.core.nativeexpress.o oVar) {
        this.r = new WeakReference<>(oVar);
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.core.r.j jVar) {
        this.q = jVar;
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk kkVar) {
        this.vw = new WeakReference<>(kkVar);
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.core.ugeno.ia.d dVar) {
        this.ds = new WeakReference<>(dVar);
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.iw.dq dqVar) {
        this.ce = dqVar;
        return this;
    }

    public c dq(com.bytedance.sdk.openadsdk.o.dq dqVar) {
        this.f2493e = new WeakReference<>(dqVar);
        return this;
    }

    public c dq(String str) {
        this.wn = str;
        return this;
    }

    public c dq(Map<String, Object> map) {
        this.dq = map;
        return this;
    }

    public c dq(JSONObject jSONObject) {
        this.h = jSONObject;
        return this;
    }

    public c dq(boolean z) {
        this.l = z;
        return this;
    }

    public JSONObject dq() {
        WeakReference<com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk> weakReference = this.vw;
        if (weakReference == null || weakReference.get() == null) {
            return null;
        }
        return this.vw.get().getContainerInfo();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0285, code lost:
    
        if (r3 != null) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0287, code lost:
    
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x02c9, code lost:
    
        if (r3 != null) goto L176;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JSONObject dq(dq dqVar, int i) throws Exception {
        char c2;
        Context context;
        JSONObject jSONObject;
        if (!"call".equals(dqVar.dq)) {
            return null;
        }
        no.ia().c();
        JSONObject jSONObject2 = new JSONObject();
        String str = dqVar.ox;
        str.getClass();
        switch (str.hashCode()) {
            case -2036781162:
                if (str.equals("subscribe_app_ad")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1752549500:
                if (str.equals("adInfoStash")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1423303823:
                if (str.equals("adInfo")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -1330994877:
                if (str.equals("pauseWebView")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1169135450:
                if (str.equals("changeVideoState")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -844321441:
                if (str.equals("webview_time_track")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -800853518:
                if (str.equals("clickEvent")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -794273169:
                if (str.equals("appInfo")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -715147645:
                if (str.equals("getScreenSize")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case -489318846:
                if (str.equals("getMaterialMeta")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -278382602:
                if (str.equals("send_temai_product_ids")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case -173752734:
                if (str.equals("getTeMaiAds")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 27837080:
                if (str.equals("download_app_ad")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case 105049135:
                if (str.equals("unsubscribe_app_ad")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 352242576:
                if (str.equals("getDownloadStatus")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case 399543522:
                if (str.equals("getCloseButtonInfo")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case 402955465:
                if (str.equals("isViewable")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case 442647767:
                if (str.equals("sendReward")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case 571273292:
                if (str.equals("dynamicTrack")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case 650209982:
                if (str.equals("getTemplateInfo")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case 672928467:
                if (str.equals("cancel_download_app_ad")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case 711635577:
                if (str.equals("getCurrentVideoState")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case 885131792:
                if (str.equals("getVolume")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case 1107374321:
                if (str.equals("pauseWebViewTimers")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case 1151744482:
                if (str.equals("muteVideo")) {
                    c2 = 24;
                    break;
                }
                c2 = 65535;
                break;
            case 1237100796:
                if (str.equals("renderDidFinish")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            case 1532142616:
                if (str.equals("removeLoading")) {
                    c2 = 26;
                    break;
                }
                c2 = 65535;
                break;
            case 1634511418:
                if (str.equals("endcard_load")) {
                    c2 = 27;
                    break;
                }
                c2 = 65535;
                break;
            case 1713585602:
                if (str.equals("getNetworkData")) {
                    c2 = 28;
                    break;
                }
                c2 = 65535;
                break;
            case 1731806400:
                if (str.equals("playable_style")) {
                    c2 = 29;
                    break;
                }
                c2 = 65535;
                break;
            case 2086000188:
                if (str.equals("skipVideo")) {
                    c2 = 30;
                    break;
                }
                c2 = 65535;
                break;
            case 2105008900:
                if (str.equals("landscape_click")) {
                    c2 = 31;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                yy();
                WeakReference<Context> weakReference = this.iw;
                if (weakReference != null && (context = weakReference.get()) != null) {
                    this.mn.dq(context, dqVar.p, this.o, this.no, this.jy, this.by);
                    break;
                }
                break;
            case 1:
                fw(dqVar.p);
                break;
            case 2:
                p(jSONObject2);
                break;
            case 3:
                l();
                break;
            case 4:
                kk(dqVar.p);
                break;
            case 5:
                iw(dqVar.p);
                break;
            case 6:
                ig(dqVar.p);
                break;
            case 7:
                ox(jSONObject2);
                break;
            case '\b':
                WeakReference<com.bytedance.sdk.openadsdk.core.fw.dq> weakReference2 = this.k;
                com.bytedance.sdk.openadsdk.core.fw.dq dqVar2 = weakReference2 != null ? weakReference2.get() : null;
                if (dqVar2 != null) {
                    int d2 = dqVar2.d();
                    int dq2 = dqVar2.dq();
                    jSONObject2.put(MediaFormat.KEY_WIDTH, d2);
                    jSONObject2.put(MediaFormat.KEY_HEIGHT, dq2);
                    break;
                }
                break;
            case '\t':
                jy(jSONObject2);
                break;
            case '\n':
                i(dqVar.p);
                break;
            case 11:
                jSONObject = this.h;
                break;
            case '\f':
                ig(true);
                JSONObject jSONObject3 = dqVar.p;
                boolean optBoolean = jSONObject3 != null ? jSONObject3.optBoolean("is_compliant_download") : false;
                if (!this.fw) {
                    dq(dqVar.p, optBoolean);
                    break;
                } else {
                    JSONObject jSONObject4 = dqVar.p;
                    dq(com.bytedance.sdk.openadsdk.core.jy.dq.dq(this.q, jSONObject4 != null ? jSONObject4.optJSONObject("data") : null, this.o), optBoolean);
                    break;
                }
            case '\r':
                com.bytedance.sdk.openadsdk.core.jy.ox oxVar = this.mn;
                if (oxVar != null) {
                    oxVar.dq(dqVar.p);
                    break;
                }
                break;
            case 14:
                jSONObject2 = com.bytedance.sdk.openadsdk.core.f.dq.q.dq(dqVar.p);
                break;
            case 15:
                jSONObject = vf();
                break;
            case 16:
                jSONObject2.put("viewStatus", this.f2491c ? 1 : 0);
                break;
            case 17:
                this.f2492d = true;
                WeakReference<com.bytedance.sdk.openadsdk.core.fw.s> weakReference3 = this.wp;
                if (weakReference3 != null && weakReference3.get() != null) {
                    this.wp.get().dq();
                    break;
                }
                break;
            case 18:
                q(dqVar.p);
                break;
            case 19:
                jy();
                jSONObject2 = this.i;
                break;
            case 20:
                com.bytedance.sdk.openadsdk.core.jy.ox oxVar2 = this.mn;
                if (oxVar2 != null) {
                    oxVar2.d(dqVar.p);
                    break;
                }
                break;
            case 21:
                gh(jSONObject2);
                break;
            case 22:
                AudioManager audioManager = (AudioManager) wp.getContext().getSystemService(MediaFormat.KEY_AUDIO);
                jSONObject2.put("endcard_mute", (audioManager != null ? audioManager.getStreamVolume(3) : -1) <= 0);
                break;
            case 23:
                t();
                break;
            case 24:
                ia(dqVar.p);
                break;
            case 25:
                mp(dqVar.p);
                break;
            case 26:
                WeakReference<com.bytedance.sdk.openadsdk.core.fw.p> weakReference4 = this.kx;
                if (weakReference4 != null && weakReference4.get() != null) {
                    this.kx.get().dq();
                    break;
                }
                break;
            case 27:
                cd(dqVar.p);
                break;
            case 28:
                dq(dqVar, jSONObject2);
                break;
            case 29:
                s(jSONObject2);
                break;
            case 30:
                f();
                break;
            case 31:
                WeakReference<com.bytedance.sdk.openadsdk.core.d.s> weakReference5 = this.ji;
                if (weakReference5 != null && weakReference5.get() != null) {
                    this.ji.get().dq();
                    break;
                }
                break;
        }
        if (i == 1 && !TextUtils.isEmpty(dqVar.f2503d)) {
            ox(dqVar.f2503d, jSONObject2);
            no.ia().c();
        }
        return jSONObject2;
    }

    public void dq(float f2) {
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        try {
            this.r.get().dq(f2);
        } catch (Exception unused) {
        }
    }

    public void dq(float f2, float f3, float f4, float f5, int i) {
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.r.get().dq(f2, f3, f4, f5, i);
    }

    public void dq(int i) {
        if (ha) {
            com.bytedance.sdk.component.utils.ig.d("TTAndroidObject", "blocked Twist");
            return;
        }
        if (i != 1) {
            if (i == 2) {
                dq("twist_callback", (JSONObject) null);
            }
        } else {
            if (this.q != null && p()) {
                com.bytedance.sdk.openadsdk.core.o.ox.ox.iw.p = true;
            }
            dq("wobble_callback", (JSONObject) null);
        }
    }

    public void dq(int i, int i2) {
        int ox2 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(wp.getContext(), i);
        int ox3 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(wp.getContext(), i2);
        WeakReference<com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk> weakReference = this.vw;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.vw.get().dq(Integer.MIN_VALUE, Integer.MIN_VALUE, ox2, ox3);
    }

    public void dq(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8 = Integer.MIN_VALUE;
        if (i == Integer.MAX_VALUE || i2 == Integer.MAX_VALUE) {
            i5 = Integer.MIN_VALUE;
            i6 = Integer.MIN_VALUE;
        } else {
            i5 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(wp.getContext(), i);
            i6 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(wp.getContext(), i2);
        }
        if (i3 == Integer.MAX_VALUE || i4 == Integer.MAX_VALUE) {
            i7 = Integer.MIN_VALUE;
        } else {
            i8 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(wp.getContext(), i3);
            i7 = com.bytedance.sdk.openadsdk.core.ir.ce.ox(wp.getContext(), i4);
        }
        WeakReference<com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk> weakReference = this.vw;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.vw.get().dq(i5, i6, i8, i7);
    }

    @Override // com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
        if (message != null && message.what == 11) {
            Object obj = message.obj;
            if (obj instanceof dq) {
                try {
                    dq((dq) obj, 1);
                } catch (Exception unused) {
                }
            }
        }
    }

    public void dq(SSWebView.d dVar) {
        WeakReference<SSWebView> weakReference = this.p;
        if (weakReference == null || weakReference.get() == null || dVar == null) {
            return;
        }
        this.p.get().setOnShakeListener(dVar);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.fw.iw iwVar) {
        this.dc = new WeakReference<>(iwVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void dq(com.bytedance.sdk.openadsdk.core.r.j jVar, int i) {
        WeakReference<Context> weakReference = this.iw;
        if (weakReference == null || jVar == null || weakReference.get() == null) {
            return;
        }
        Context context = this.iw.get();
        com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(context, jVar, this.wn, this.no);
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).d(true);
        ((com.bytedance.sdk.openadsdk.core.d.dq.d.iw) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.d.iw.class)).dq(i);
        com.bytedance.sdk.component.no.s.dq.dq().dq(jVar.hashCode() + jVar.el()).put("live_saas_interaction_type", Integer.valueOf(i));
        final String fx = jVar.fx();
        com.bytedance.sdk.openadsdk.core.o.d.p d2 = com.bytedance.sdk.openadsdk.core.o.s.d(context, jVar, this.wn, false);
        ((com.bytedance.sdk.openadsdk.core.d.dq.dq.d) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.dq.d.class)).dq((com.bytedance.sdk.openadsdk.core.o.d.ox) d2);
        dqVar.dq(null, new com.bytedance.sdk.openadsdk.core.r.o());
        if (d2 != null) {
            d2.dq(new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.c.5
                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void d(long j, long j2, String str, String str2) {
                    if (j > 0) {
                        dq.C0166dq.dq(fx, 2, (int) ((j2 * 100) / j));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void dq() {
                    dq.C0166dq.dq(fx, 1, 0);
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void dq(long j, long j2, String str, String str2) {
                    if (j > 0) {
                        dq.C0166dq.dq(fx, 3, (int) ((j2 * 100) / j));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void dq(long j, String str, String str2) {
                    dq.C0166dq.dq(fx, 5, 100);
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void dq(String str, String str2) {
                    dq.C0166dq.dq(fx, 6, 100);
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
                public void ox(long j, long j2, String str, String str2) {
                    if (j > 0) {
                        dq.C0166dq.dq(fx, 4, (int) ((j2 * 100) / j));
                    }
                }
            });
        }
        if (!v()) {
            if (context instanceof com.bytedance.sdk.openadsdk.core.mn.d) {
                ((com.bytedance.sdk.openadsdk.core.mn.d) context).dq(1);
            }
        } else {
            WeakReference<com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk> weakReference2 = this.vw;
            if (weakReference2 == null || weakReference2.get() == null) {
                return;
            }
            this.vw.get().X_();
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.r.j jVar, boolean z) {
        WeakReference<com.bytedance.sdk.openadsdk.core.d.s> weakReference = this.ji;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.ji.get().dq(jVar, z);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.ugeno.d dVar) {
        this.xz = dVar;
    }

    public void dq(ia.dq dqVar) {
        this.uh = dqVar;
    }

    public void dq(com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        com.bytedance.sdk.openadsdk.core.le.d.dq(this.q, (JSONObject) null, new com.bytedance.sdk.openadsdk.core.fw.ox() { // from class: com.bytedance.sdk.openadsdk.core.c.2
            @Override // com.bytedance.sdk.openadsdk.core.fw.ox
            public void dq(boolean z, List<com.bytedance.sdk.openadsdk.core.r.j> list, boolean z2) {
                c.this.op = list;
                c.this.uh();
                c.this.wp();
            }
        }, dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.jy.d
    public void dq(String str, JSONObject jSONObject) {
        no.ia().c();
        p(str, jSONObject);
    }

    public void dq(String str, boolean z) {
        com.bytedance.sdk.openadsdk.core.jy.ox oxVar = this.mn;
        if (oxVar != null) {
            oxVar.dq(str, z);
        }
    }

    public void dq(JSONObject jSONObject, com.bytedance.sdk.openadsdk.core.fw.ox oxVar) {
        com.bytedance.sdk.openadsdk.core.le.d.dq(this.q, jSONObject, oxVar, (com.bytedance.sdk.openadsdk.f.d.ox.d) null);
    }

    public void dq(JSONObject jSONObject, boolean z) {
        WeakReference<Context> weakReference;
        if (this.mn == null || (weakReference = this.iw) == null || weakReference.get() == null) {
            return;
        }
        this.mn.dq(this.cd && this.f2494f);
        this.mn.d(z);
        this.mn.dq(this.iw.get(), jSONObject, this.wn, this.o);
    }

    public boolean dq(Uri uri) {
        if (uri == null) {
            return false;
        }
        if ("bytedance".equals(uri.getScheme())) {
            return ox.containsKey(uri.getHost());
        }
        return false;
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public void dynamicTrack(String str) {
        try {
            q(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    public boolean e() {
        return this.nh;
    }

    public void er() {
        WeakReference<com.bytedance.sdk.openadsdk.core.fw.iw> weakReference = this.dc;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dc.get().dq();
    }

    public void f() {
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().ox(this.q, "stats_reward_full_deal_skip_video");
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.r.get().iw();
    }

    public void f(JSONObject jSONObject) {
        try {
            jSONObject.put("isPrePlayable", this.t);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public void f(boolean z) {
        this.cv = new AtomicBoolean(z);
    }

    public void fw() {
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.r.get().mn();
    }

    public void fw(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        this.ia = jSONObject.optString("cid");
        this.o = jSONObject.optString("log_extra");
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public String getCurrentVideoState() {
        JSONObject jSONObject = new JSONObject();
        gh(jSONObject);
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public String getData(String str) {
        if (TextUtils.isEmpty(str)) {
            return this.i.toString();
        }
        try {
            JSONObject dq2 = com.bytedance.sdk.openadsdk.core.nativeexpress.d.d.dq(this.i, new JSONObject(str));
            return dq2 == null ? this.i.toString() : dq2.toString();
        } catch (Exception unused) {
            return this.i.toString();
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public String getTemplateInfo() {
        d("getTemplateInfo", true);
        try {
            jy();
            d("getTemplateInfo", false);
            return this.i.toString();
        } catch (Exception unused) {
            return "";
        }
    }

    public void gh() {
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.r.get().p();
    }

    public void h() {
        com.bytedance.sdk.openadsdk.core.r.j jVar = this.q;
        if (jVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.iw.dq(jVar, this.iw.get(), n());
    }

    public void i() {
        WeakReference<com.bytedance.sdk.openadsdk.o.dq> weakReference = this.f2493e;
        if (weakReference != null && weakReference.get() != null) {
            this.f2493e.get().dq();
            return;
        }
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference2 = this.r;
        if (weakReference2 == null || weakReference2.get() == null) {
            return;
        }
        this.r.get().no();
    }

    public void ia() {
        WeakReference<Context> weakReference = this.iw;
        if (weakReference == null || weakReference.get() == null || !(this.iw.get() instanceof TTMiddlePageActivity)) {
            return;
        }
        ((Activity) this.iw.get()).finish();
    }

    public void ia(JSONObject jSONObject) {
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference == null || weakReference.get() == null || jSONObject == null) {
            return;
        }
        try {
            this.r.get().dq(jSONObject.optBoolean("mute", false));
        } catch (Exception unused) {
        }
    }

    public void ia(boolean z) {
        this.by = z;
    }

    public c ig() {
        this.fw = true;
        return this;
    }

    public void ig(JSONObject jSONObject) {
        double d2;
        double d3;
        double d4;
        double d5;
        double d6;
        double d7;
        double d8;
        double d9;
        JSONObject jSONObject2;
        double d10;
        SoftReference<com.bytedance.sdk.component.adexpress.d.no> softReference;
        if (jSONObject == null) {
            return;
        }
        try {
            String optString = jSONObject.optString("adId");
            int optInt = jSONObject.optInt("areaType", 1);
            String optString2 = jSONObject.optString("clickAreaType");
            String optString3 = jSONObject.optString("clickAreaId");
            JSONObject optJSONObject = jSONObject.optJSONObject("clickInfo");
            String optString4 = jSONObject.optString("subConvertLinkTag");
            int optInt2 = jSONObject.optInt("dpaPosition", -1);
            JSONObject jSONObject3 = new JSONObject();
            com.bytedance.sdk.openadsdk.core.r.fw.dq(jSONObject.optString("clickScene"));
            jSONObject3.put("openPlayableLandingPage", jSONObject.optBoolean("openPlayableLandingPage"));
            jSONObject3.put("convertActionType", jSONObject.optInt("convertActionType", Integer.MIN_VALUE));
            jSONObject3.put("live_saas_param_interaction_type", jSONObject.optInt("live_saas_param_interaction_type", -1));
            jSONObject3.put("is_compliant_download", jSONObject.optBoolean("is_compliant_download"));
            double d11 = -1.0d;
            if (optJSONObject != null) {
                double optDouble = optJSONObject.optDouble("down_x", -1.0d);
                double optDouble2 = optJSONObject.optDouble("down_y", -1.0d);
                double optDouble3 = optJSONObject.optDouble("up_x", -1.0d);
                double optDouble4 = optJSONObject.optDouble("up_y", -1.0d);
                double optDouble5 = optJSONObject.optDouble("down_time", -1.0d);
                double optDouble6 = optJSONObject.optDouble("up_time", -1.0d);
                double optDouble7 = optJSONObject.optDouble("button_x", -1.0d);
                double optDouble8 = optJSONObject.optDouble("button_y", -1.0d);
                double optDouble9 = optJSONObject.optDouble("button_width", -1.0d);
                d9 = optJSONObject.optDouble("button_height", -1.0d);
                d11 = optDouble;
                jSONObject2 = jSONObject3;
                d2 = optDouble2;
                d10 = optDouble3;
                d3 = optDouble4;
                d4 = optDouble5;
                d5 = optDouble6;
                d6 = optDouble7;
                d7 = optDouble8;
                d8 = optDouble9;
            } else {
                d2 = -1.0d;
                d3 = -1.0d;
                d4 = -1.0d;
                d5 = -1.0d;
                d6 = -1.0d;
                d7 = -1.0d;
                d8 = -1.0d;
                d9 = -1.0d;
                jSONObject2 = jSONObject3;
                d10 = -1.0d;
            }
            com.bytedance.sdk.openadsdk.core.r.k dq2 = new k.dq().p((float) d11).ox((float) d2).d((float) d10).dq((float) d3).d((long) d4).dq((long) d5).dq((int) d6).d((int) d7).ox((int) d8).p((int) d9).dq(optString2).d(optString3).dq(true).dq((SparseArray<p.dq>) null).dq(jSONObject2).s(optString4).s(optInt2).dq();
            if (dq(optString, optInt, dq2) || (softReference = this.gh) == null || softReference.get() == null) {
                by();
            } else {
                this.gh.get().dq(null, optInt, dq2);
            }
        } catch (Exception unused) {
            SoftReference<com.bytedance.sdk.component.adexpress.d.no> softReference2 = this.gh;
            if (softReference2 == null || softReference2.get() == null) {
                by();
            } else {
                this.gh.get().dq(null, -1, null);
            }
        }
    }

    public void ig(boolean z) {
        this.nh = z;
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public void initRenderFinish() {
        new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.c.10
            @Override // java.lang.Runnable
            public void run() {
                if (c.this.j != null) {
                    com.bytedance.sdk.openadsdk.core.widget.dq.dq unused = c.this.j;
                }
            }
        });
    }

    public void ir() {
        com.bytedance.sdk.openadsdk.core.jy.ox oxVar = this.mn;
        if (oxVar != null) {
            oxVar.d();
        }
    }

    public com.bytedance.sdk.component.dq.fw iw() {
        return this.er;
    }

    public c iw(boolean z) {
        this.f2491c = z;
        return this;
    }

    public void iw(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.iw.dq dqVar;
        if (jSONObject == null || (dqVar = this.ce) == null) {
            return;
        }
        dqVar.d(jSONObject);
    }

    public void ji() {
        com.bytedance.sdk.openadsdk.core.r.j jVar = this.q;
        if (jVar == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.iw.d(jVar, this.iw.get(), n());
    }

    public JSONObject jy() {
        try {
            JSONObject jSONObject = this.i;
            if (jSONObject != null && this.q != null) {
                jSONObject.put("setting", gx());
                this.i.put("extension", this.q.fq());
            }
        } catch (Exception unused) {
        }
        return this.i;
    }

    public void jy(boolean z) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("visibleState", !z ? 1 : 0);
        } catch (Exception e2) {
            com.bytedance.sdk.component.utils.ig.p("TTAndroidObject", e2.getMessage());
        }
        p("visibleStateChange", jSONObject);
    }

    public boolean jy(JSONObject jSONObject) {
        try {
            jSONObject.put("creatives", dq(this.op));
        } catch (Exception unused) {
        }
        return true;
    }

    public void k() {
        dq((JSONObject) null, new com.bytedance.sdk.openadsdk.core.fw.ox() { // from class: com.bytedance.sdk.openadsdk.core.c.13
            @Override // com.bytedance.sdk.openadsdk.core.fw.ox
            public void dq(boolean z, List<com.bytedance.sdk.openadsdk.core.r.j> list, boolean z2) {
                c.this.op = list;
                c.this.uh();
                c.this.wp();
            }
        });
    }

    public com.bytedance.sdk.openadsdk.core.r.j kk() {
        return this.q;
    }

    public void kk(JSONObject jSONObject) {
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference == null || weakReference.get() == null || jSONObject == null) {
            return;
        }
        try {
            this.r.get().dq(jSONObject.optInt("stateType", -1));
        } catch (Exception unused) {
        }
    }

    public void kk(boolean z) {
        this.f2492d = z;
    }

    public boolean kx() {
        com.bytedance.sdk.openadsdk.core.r.j jVar = this.q;
        return jVar != null && com.bytedance.sdk.openadsdk.core.r.r.no(jVar) == 1;
    }

    public boolean le() {
        return this.mp;
    }

    public c mn(JSONObject jSONObject) {
        this.i = jSONObject;
        return this;
    }

    public void mn(boolean z) {
        this.gx = z;
    }

    public boolean mn() {
        return this.gx;
    }

    public void mp(final JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.iw.dq dqVar = this.ce;
        if (dqVar != null) {
            dqVar.jy();
        }
        com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("renderDidFinish") { // from class: com.bytedance.sdk.openadsdk.core.c.11
            @Override // java.lang.Runnable
            public void run() {
                int i;
                double d2;
                double d3;
                boolean z;
                double d4;
                double d5;
                int i2;
                String optString;
                double d6;
                double d7;
                double d8;
                if (c.this.gh == null || c.this.gh.get() == null || jSONObject == null || c.this.iw == null) {
                    return;
                }
                com.bytedance.sdk.component.adexpress.d.q qVar = new com.bytedance.sdk.component.adexpress.d.q();
                qVar.dq(1);
                try {
                    boolean optBoolean = jSONObject.optBoolean("isRenderSuc");
                    JSONObject optJSONObject = jSONObject.optJSONObject("AdSize");
                    if (optJSONObject != null) {
                        d2 = optJSONObject.optDouble(MediaFormat.KEY_WIDTH);
                        d3 = optJSONObject.optDouble(MediaFormat.KEY_HEIGHT);
                    } else {
                        d2 = 0.0d;
                        d3 = 0.0d;
                    }
                    JSONObject optJSONObject2 = jSONObject.optJSONObject("videoInfo");
                    if (optJSONObject2 != null) {
                        float f2 = ((Context) c.this.iw.get()).getResources().getDisplayMetrics().density;
                        float f3 = Resources.getSystem().getDisplayMetrics().density;
                        double optDouble = optJSONObject2.optDouble("x");
                        z = optBoolean;
                        i2 = 101;
                        double optDouble2 = optJSONObject2.optDouble("y");
                        d5 = d3;
                        double optDouble3 = optJSONObject2.optDouble(MediaFormat.KEY_WIDTH);
                        double optDouble4 = optJSONObject2.optDouble(MediaFormat.KEY_HEIGHT);
                        if (c.this.r(optJSONObject2)) {
                            d4 = d2;
                            double optDouble5 = optJSONObject2.optDouble("borderRadiusTopLeft");
                            d7 = optDouble4;
                            double optDouble6 = optJSONObject2.optDouble("borderRadiusTopRight");
                            d8 = optDouble3;
                            double optDouble7 = optJSONObject2.optDouble("borderRadiusBottomLeft");
                            d6 = optDouble2;
                            double optDouble8 = optJSONObject2.optDouble("borderRadiusBottomRight");
                            if (wp.d().fn()) {
                                qVar.dq(com.bytedance.sdk.openadsdk.core.ir.ce.d(f2, com.bytedance.sdk.openadsdk.core.ir.ce.dq(f3, (float) optDouble5)));
                                qVar.d(com.bytedance.sdk.openadsdk.core.ir.ce.d(f2, com.bytedance.sdk.openadsdk.core.ir.ce.dq(f3, (float) optDouble6)));
                                qVar.ox(com.bytedance.sdk.openadsdk.core.ir.ce.d(f2, com.bytedance.sdk.openadsdk.core.ir.ce.dq(f3, (float) optDouble7)));
                                qVar.p(com.bytedance.sdk.openadsdk.core.ir.ce.d(f2, com.bytedance.sdk.openadsdk.core.ir.ce.dq(f3, (float) optDouble8)));
                            } else {
                                qVar.dq((float) optDouble5);
                                qVar.d((float) optDouble6);
                                qVar.ox((float) optDouble7);
                                qVar.p((float) optDouble8);
                            }
                        } else {
                            d6 = optDouble2;
                            d7 = optDouble4;
                            d4 = d2;
                            d8 = optDouble3;
                        }
                        if (wp.d().fn()) {
                            qVar.ox(com.bytedance.sdk.openadsdk.core.ir.ce.d(f2, com.bytedance.sdk.openadsdk.core.ir.ce.dq(f3, (float) optDouble)));
                            qVar.p(com.bytedance.sdk.openadsdk.core.ir.ce.d(f2, com.bytedance.sdk.openadsdk.core.ir.ce.dq(f3, (float) d6)));
                            qVar.s(com.bytedance.sdk.openadsdk.core.ir.ce.d(f2, com.bytedance.sdk.openadsdk.core.ir.ce.dq(f3, (float) d8)));
                            qVar.iw(com.bytedance.sdk.openadsdk.core.ir.ce.d(f2, com.bytedance.sdk.openadsdk.core.ir.ce.dq(f3, (float) d7)));
                        } else {
                            qVar.ox(optDouble);
                            qVar.p(d6);
                            qVar.s(d8);
                            qVar.iw(d7);
                        }
                    } else {
                        z = optBoolean;
                        d4 = d2;
                        d5 = d3;
                        i2 = 101;
                    }
                    optString = jSONObject.optString("msg", o.dq(i2));
                    i = 101;
                } catch (Exception unused) {
                    i = 101;
                }
                try {
                    int optInt = jSONObject.optInt(PluginConstants.KEY_ERROR_CODE, 101);
                    qVar.dq(z);
                    qVar.dq(d4);
                    qVar.d(d5);
                    qVar.dq(optString);
                    qVar.d(optInt);
                    ((com.bytedance.sdk.component.adexpress.d.no) c.this.gh.get()).dq(qVar);
                } catch (Exception unused2) {
                    qVar.d(i);
                    qVar.dq(o.dq(i));
                    ((com.bytedance.sdk.component.adexpress.d.no) c.this.gh.get()).dq(qVar);
                }
            }
        });
    }

    public void mp(boolean z) {
        this.cd = z;
        if (z) {
            return;
        }
        this.q.dq(true);
    }

    public boolean mp() {
        return this.f2492d;
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public void muteVideo(final String str) {
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.c.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    c.this.ia(new JSONObject(str));
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    public String n() {
        return com.bytedance.sdk.openadsdk.core.ir.c.dq(this.no);
    }

    public com.bytedance.sdk.openadsdk.core.d.s no() {
        WeakReference<com.bytedance.sdk.openadsdk.core.d.s> weakReference = this.ji;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void no(JSONObject jSONObject) {
        double d2;
        double d3;
        double d4;
        double d5;
        double d6;
        double d7;
        double d8;
        String str;
        String str2;
        double d9;
        double d10;
        if (jSONObject == null) {
            return;
        }
        try {
            String optString = jSONObject.optString("adId");
            int optInt = jSONObject.optInt("areaType", 1);
            String optString2 = jSONObject.optString("subConvertLinkTag");
            int optInt2 = jSONObject.optInt("dpaPosition", -1);
            String optString3 = jSONObject.optString("clickAreaType");
            JSONObject optJSONObject = jSONObject.optJSONObject("clickInfo");
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("is_compliant_download", jSONObject.optBoolean("is_compliant_download"));
            jSONObject2.put("convertActionType", jSONObject.optInt("convertActionType", Integer.MIN_VALUE));
            double d11 = -1.0d;
            if (optJSONObject != null) {
                double optDouble = optJSONObject.optDouble("down_x", -1.0d);
                double optDouble2 = optJSONObject.optDouble("down_y", -1.0d);
                double optDouble3 = optJSONObject.optDouble("up_x", -1.0d);
                double optDouble4 = optJSONObject.optDouble("up_y", -1.0d);
                double optDouble5 = optJSONObject.optDouble("down_time", -1.0d);
                double optDouble6 = optJSONObject.optDouble("up_time", -1.0d);
                double optDouble7 = optJSONObject.optDouble("button_x", -1.0d);
                double optDouble8 = optJSONObject.optDouble("button_y", -1.0d);
                double optDouble9 = optJSONObject.optDouble("button_width", -1.0d);
                d8 = optJSONObject.optDouble("button_height", -1.0d);
                str = optString;
                d11 = optDouble;
                d2 = optDouble2;
                d9 = optDouble3;
                d3 = optDouble5;
                d4 = optDouble6;
                d5 = optDouble7;
                d6 = optDouble8;
                d7 = optDouble9;
                str2 = optString2;
                d10 = optDouble4;
            } else {
                d2 = -1.0d;
                d3 = -1.0d;
                d4 = -1.0d;
                d5 = -1.0d;
                d6 = -1.0d;
                d7 = -1.0d;
                d8 = -1.0d;
                str = optString;
                str2 = optString2;
                d9 = -1.0d;
                d10 = -1.0d;
            }
            com.bytedance.sdk.openadsdk.core.r.k dq2 = new k.dq().p((int) d11).ox((int) d2).d((int) d9).dq((int) d10).d((long) d3).dq((long) d4).dq((int) d5).d((int) d6).ox((int) d7).p((int) d8).dq(optString3).dq(true).dq(jSONObject2).dq((SparseArray<p.dq>) null).s(str2).s(optInt2).dq();
            SoftReference<com.bytedance.sdk.component.adexpress.d.no> softReference = this.gh;
            if (softReference != null && softReference.get() != null) {
                this.gh.get().dq(null, optInt, dq2, o(jSONObject));
            }
            dq(str, optInt, dq2);
        } catch (Exception unused) {
            SoftReference<com.bytedance.sdk.component.adexpress.d.no> softReference2 = this.gh;
            if (softReference2 == null || softReference2.get() == null) {
                return;
            }
            this.gh.get().dq(null, -1, null, 0);
        }
    }

    public void no(boolean z) {
        this.t = z;
    }

    public int o(JSONObject jSONObject) {
        if (jSONObject.optBoolean("interactShowDownloadDialog", false)) {
            this.q.dq(true);
            return 2;
        }
        if (jSONObject.optInt("downloadDialogStatus") != 1) {
            return 0;
        }
        if (this.q.zi().dq() == 2) {
            this.q.dq(true);
        }
        return 1;
    }

    public void o(boolean z) {
        this.mp = z;
    }

    public boolean o() {
        com.bytedance.sdk.openadsdk.core.r.j jVar = this.q;
        return jVar != null && jVar.wn();
    }

    public void op() {
        com.bytedance.sdk.openadsdk.core.jy.ox oxVar = this.mn;
        if (oxVar != null) {
            oxVar.dq();
        }
        if (xz()) {
            k();
        }
    }

    public c ox(int i) {
        this.no = i;
        return this;
    }

    public c ox(String str) {
        this.o = str;
        return this;
    }

    public c ox(List<com.bytedance.sdk.openadsdk.core.r.j> list) {
        this.op = list;
        return this;
    }

    public com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk ox() {
        WeakReference<com.bytedance.sdk.openadsdk.core.ugeno.component.interact.kk> weakReference = this.vw;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public void ox(boolean z) {
        this.vf = z;
    }

    public c p(String str) {
        this.ig = str;
        return this;
    }

    public void p(int i) {
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.r.get().d(i);
    }

    public void p(JSONObject jSONObject) throws Exception {
        if (!TextUtils.isEmpty(this.ia)) {
            jSONObject.put("cid", this.ia);
        }
        if (!TextUtils.isEmpty(this.o)) {
            jSONObject.put("log_extra", this.o);
        }
        if (!TextUtils.isEmpty(this.ig)) {
            jSONObject.put("download_url", this.ig);
        }
        com.bytedance.sdk.openadsdk.core.r.j jVar = this.q;
        if (jVar != null) {
            jSONObject.put("isDirectDownload", jVar.ia());
        }
        if (com.bytedance.sdk.openadsdk.core.r.gh.no(this.q)) {
            jSONObject.put("voice_btn_position", com.bytedance.sdk.openadsdk.core.r.gh.jy(this.q));
        }
    }

    public void p(boolean z) {
        this.ob = z;
    }

    public boolean p() {
        WeakReference<SSWebView> weakReference = this.p;
        if (weakReference == null || weakReference.get() == null) {
            return false;
        }
        return this.p.get().ox();
    }

    public JSONObject q() {
        return this.yy;
    }

    public void q(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            Uri parse = Uri.parse(jSONObject.optString("trackData"));
            if ("bytedance".equals(parse.getScheme().toLowerCase())) {
                com.bytedance.sdk.openadsdk.core.ir.r.dq(parse, this);
            }
        } catch (Exception unused) {
        }
    }

    public void q(boolean z) {
        this.f2494f = z;
        if (z) {
            return;
        }
        this.q.dq(true);
    }

    public void r() {
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.r.get().s();
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public void renderDidFinish(String str) {
        try {
            mp(new JSONObject(str));
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public void requestPauseVideo(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt("time");
            String optString = jSONObject.optString("flag");
            WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            this.r.get().dq(optInt, optString);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public int s(boolean z) {
        if (com.bytedance.sdk.openadsdk.core.r.n.dq(this.q) != 0 && z) {
            return 2;
        }
        if (this.vf) {
            return 1;
        }
        return this.ob ? com.bytedance.sdk.openadsdk.core.r.n.dq(this.q) == 2 ? 2 : 1 : com.bytedance.sdk.openadsdk.core.r.n.dq(this.q) == 0 ? 1 : 2;
    }

    public void s() {
        com.bytedance.sdk.component.dq.fw fwVar = this.er;
        if (fwVar == null) {
            return;
        }
        fwVar.dq();
        this.er = null;
    }

    public void s(JSONObject jSONObject) throws Exception {
        if (TextUtils.isEmpty(l.d(this.q))) {
            return;
        }
        jSONObject.put("playable_style", l.d(this.q));
    }

    @Override // com.bytedance.sdk.component.adexpress.s.d
    @JavascriptInterface
    public void skipVideo() {
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().ox(this.q, "stats_reward_full_call_skip_video");
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.c.9
            @Override // java.lang.Runnable
            public void run() {
                c.this.f();
            }
        });
    }

    public void u() {
        com.bytedance.sdk.openadsdk.core.jy.ox oxVar = this.mn;
        if (oxVar != null) {
            oxVar.ox();
        }
    }

    public void wn() {
        WeakReference<com.bytedance.sdk.openadsdk.core.nativeexpress.o> weakReference = this.r;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.r.get().ia();
    }

    public void wp() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("material", dq(this.op));
            dq("materialMeta", jSONObject);
        } catch (Exception unused) {
        }
    }
}
