package com.bytedance.sdk.openadsdk.core.live.dq;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.e;
import com.bytedance.sdk.openadsdk.core.ig.dq;
import com.bytedance.sdk.openadsdk.core.live.dq.iw;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.er;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.wn;
import com.bytedance.sdk.openadsdk.core.r.yy;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import g.awf;
import g.cpo;
import g.hat;
import g.tn;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mn extends iw {
    private final AtomicBoolean ia = new AtomicBoolean(false);
    private volatile int kk = 0;
    protected String mn;
    private volatile Set<String> o;

    public mn() {
        ia();
    }

    private Object d(String str) {
        if (this.kk != 2) {
            StringBuilder p = awf.p("callSimpleExpandMethod ", str, " failed for plugin state = ");
            p.append(this.kk);
            ig.d("TTLiveSDkBridge", p.toString());
            return null;
        }
        HashMap p2 = tn.p("expand_method_name", str);
        if (this.dq == null) {
            return null;
        }
        Bridge bridge = this.dq;
        hat f2 = hat.f();
        f2.f19148c.put(0, p2);
        return bridge.call(7, f2.k(), null);
    }

    private <T> T dq(Bridge bridge, int i, Class<T> cls) {
        hat f2 = hat.f();
        f2.f19148c.put(0, "com.byted.live.lite");
        return (T) bridge.call(i, f2.k(), cls);
    }

    private String dq(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            if (applicationInfo == null) {
                return null;
            }
            String string = applicationInfo.metaData.getString("ZEUS_PLUGIN_LIVE");
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return ox(new JSONObject(string).optInt("apiVersionCode"));
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    private JSONObject dq(int i, String str) {
        er nr;
        JSONArray ia;
        if (this.iw != null && this.iw.get() != null) {
            j jVar = this.iw.get();
            if (TextUtils.equals(jVar.ff(), str) && (nr = jVar.nr()) != null && (ia = nr.ia()) != null && ia.length() != 0) {
                int length = ia.length();
                for (int i2 = 0; i2 < length; i2++) {
                    JSONObject optJSONObject = ia.optJSONObject(i2);
                    if (optJSONObject.optInt("type") == i) {
                        return optJSONObject;
                    }
                }
            }
        }
        return null;
    }

    private void dq(String str, String str2, String str3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("req_id", str);
            jSONObject.putOpt(TTDownloadField.TT_LABEL, str2);
            jSONObject.putOpt("mesage", str3);
        } catch (JSONException unused) {
        }
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq("reportPangleEvent", jSONObject, (Throwable) null);
    }

    private void ia() {
        kk();
        this.mn = dq(wp.getContext());
        no.ia().dq("com.byted.live.lite", this.mn, this.s, null);
        if (!wp.d().el()) {
            this.kk = -4;
            ig.d("TTLiveSDkBridge", "forbiddom init live");
            return;
        }
        if (this.dq == null) {
            this.dq = no.ia().iw(2);
        }
        if (this.dq != null) {
            Bridge bridge = this.dq;
            hat f2 = hat.f();
            f2.f19148c.put(0, new com.bytedance.sdk.openadsdk.core.live.d.dq(this));
            bridge.call(9, f2.k(), Void.class);
        } else {
            ig.d("TTLiveSDkBridge", "No bridge for live");
        }
        Bridge nh = no.ia().nh();
        hat g2 = hat.g(1);
        g2.f19148c.put(0, "com.byted.live.lite");
        cpo k = g2.k();
        Boolean bool = Boolean.FALSE;
        if (nh != null) {
            bool = (Boolean) nh.call(6, k, Boolean.class);
        }
        if (bool.booleanValue() && this.kk != 2) {
            this.kk = 1;
        }
        com.bytedance.sdk.openadsdk.tools.d.ox(21, d() > 0 ? "1" : "0");
        com.bytedance.sdk.openadsdk.tools.d.ox(20, d() == 2 ? "1" : "0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ig() {
        Object d2 = d("getLiveSdkConfig");
        if (d2 == null || !(d2 instanceof JSONObject)) {
            return;
        }
        this.ox = (JSONObject) d2;
    }

    private void kk() {
        Bridge nh = no.ia().nh();
        if (nh == null) {
            return;
        }
        b_((String) dq(nh, 8, String.class));
    }

    private void mp() {
        JSONObject dq = dq(AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBLS, this.p);
        if (dq != null) {
            try {
                dq.putOpt("status", 1);
            } catch (JSONException unused) {
            }
        }
    }

    private Map no() {
        HashMap hashMap = new HashMap();
        hashMap.put("app_name", wp.getContext().getPackageName());
        wn xi = wp.d().xi();
        if (xi != null) {
            hashMap.put("partner", xi.ox());
            hashMap.put("p_secret", xi.p());
            hashMap.put("g_appid", String.valueOf(xi.d()));
        }
        hashMap.put("channel", "csj_channel");
        hashMap.put("debug", Boolean.valueOf(ig.ox()));
        hashMap.put("ec_host_appid", "1371");
        HashMap hashMap2 = new HashMap();
        if (!no.ia().mn()) {
            hashMap2.put("enable_init_oaid", "false");
        }
        if (!no.ia().s()) {
            hashMap2.put("can_use_sensor", "false");
        }
        if (!hashMap2.isEmpty()) {
            hashMap.put("live_tob_init_extra", hashMap2);
        }
        com.bytedance.sdk.openadsdk.core.bl.d uo = wp.d().uo();
        if (uo != null) {
            boolean dq = uo.dq();
            ig.dq("TTLiveSDkBridge", "INIT_SUB_PROCESS=", Boolean.valueOf(dq));
            hashMap.put("sub_process", Boolean.valueOf(dq));
        }
        hashMap.put("c_control", no.ia().kk());
        return hashMap;
    }

    private boolean o() {
        com.bytedance.sdk.openadsdk.core.bl.mn d2 = wp.d();
        wn xi = d2.xi();
        int d3 = no.ia().fw().d();
        return (xi == null || !xi.s() || !d2.el() || d3 == 4 || d3 == 5) ? false : true;
    }

    private String ox(int i) {
        char[] charArray = String.valueOf(i).toCharArray();
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < charArray.length; i2++) {
            sb.append(charArray[i2]);
            if (i2 < charArray.length - 1) {
                sb.append(".");
            }
        }
        return sb.toString();
    }

    private boolean ox(String str) {
        if (str.startsWith("csj_saas")) {
            return true;
        }
        if (this.o == null) {
            this.o = new HashSet(11);
            this.o.add("saas_easyplayable");
            this.o.add("real_auth_status");
            this.o.add("live_panel");
            this.o.add("live_exit");
            this.o.add("mnpl_user_close");
            this.o.add("clickarea");
            this.o.add("enterSection");
            this.o.add("mini_playable_real_show");
            this.o.add("mnpl_user_close");
            this.o.add("mnpl_sdk_lifecycle_status");
        }
        return this.o.contains(str);
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int d() {
        return this.kk;
    }

    public void d(Map<String, String> map) {
        com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar;
        if (map == null || map.size() == 0) {
            return;
        }
        String str = map.get("type");
        String str2 = map.get("status");
        String str3 = map.get("open_uid");
        String str4 = map.get("task_key");
        if (!"1".equals(str2) || TextUtils.isEmpty(str)) {
            ig.d("TTLiveSDkBridge", "onTaskFinish status is :" + str2);
            return;
        }
        try {
            JSONObject optJSONObject = dq(Integer.parseInt(str), str4).optJSONObject("extra");
            if (optJSONObject == null) {
                return;
            }
            String optString = optJSONObject.optString("callback");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            JSONObject jSONObject = new JSONObject(optString);
            if (!TextUtils.isEmpty(jSONObject.optString(abn.EXTRA_UA_APP_NAME)) && (dqVar = (com.bytedance.sdk.openadsdk.f.d.dq.dq) e.dq(this.p, com.bytedance.sdk.openadsdk.f.d.dq.dq.class)) != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("open_uid", str3);
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.opt(next));
                }
                dqVar.dq(3, hashMap);
            }
        } catch (Exception e2) {
            ig.dq("TTLiveSDkBridge", "onTaskFinish parse extra error", e2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.iw, com.bytedance.sdk.openadsdk.core.live.dq.p
    public int dq(j jVar, final ox oxVar, final String str) {
        mn mnVar;
        final j jVar2;
        if (jVar == null) {
            return 0;
        }
        final String nh = jVar.nh();
        if (TextUtils.isEmpty(nh)) {
            return 0;
        }
        if (this.kk != 2) {
            return -1;
        }
        this.f3158d = str;
        yy ma = jVar.ma();
        if (2 == p() || ma == null) {
            mnVar = this;
            jVar2 = jVar;
        } else {
            final boolean z = ma.p() == 1;
            mnVar = this;
            jVar2 = jVar;
            if (dq(jVar2, new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.live.dq.mn.3
                @Override // com.bytedance.sdk.openadsdk.core.live.dq.iw.dq
                public void dq(boolean z2) {
                    int dq = mn.this.dq(nh);
                    ig.dq("TTLiveSDkBridge", "auth result:" + z2 + ", schema handle:" + dq);
                    if (dq != 1) {
                        ox oxVar2 = oxVar;
                        if (oxVar2 != null) {
                            oxVar2.dq(dq);
                            return;
                        }
                        return;
                    }
                    ox oxVar3 = oxVar;
                    if (oxVar3 != null) {
                        oxVar3.dq();
                    }
                    if (z2 || !z) {
                        return;
                    }
                    new com.bytedance.sdk.openadsdk.core.live.ox.dq().dq(str).dq(wp.getContext(), jVar2);
                }
            }, true)) {
                return 2;
            }
        }
        mnVar.iw = new SoftReference<>(jVar2);
        return dq(nh);
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.dq, com.bytedance.sdk.openadsdk.core.live.dq.p
    public void dq() {
        if (this.ia.get()) {
            ig.d("TTLiveSDkBridge", "already init!");
            return;
        }
        if (this.kk <= 0) {
            ig.d("TTLiveSDkBridge", "plugin not Load!");
            return;
        }
        if (this.kk == 2) {
            ig.d("TTLiveSDkBridge", "init started or successed:" + this.kk);
            return;
        }
        if (!o()) {
            ig.d("TTLiveSDkBridge", "init live failed！ not valid env！");
            return;
        }
        if (!com.bytedance.sdk.openadsdk.core.live.p.d.ox(this.s)) {
            com.bytedance.sdk.openadsdk.core.live.p.d.p(this.s);
            return;
        }
        this.ia.set(true);
        com.bytedance.sdk.openadsdk.core.live.p.d.dq(this.s);
        this.kk = 4;
        if (this.dq != null) {
            ig.dq("TTLiveSDkBridge", "liveSDkBridge init invoke 5500");
            Bridge bridge = this.dq;
            hat f2 = hat.f();
            f2.f19148c.put(0, no());
            bridge.call(5, f2.k(), null);
        }
        com.bytedance.sdk.openadsdk.core.live.p.d.d(this.s);
    }

    public void dq(int i, String str, boolean z) {
        this.kk = i;
        if (i == -3) {
            if (z) {
                return;
            }
            com.bytedance.sdk.openadsdk.core.gh.ig.ox(str, "com.byted.live.lite");
        } else {
            if (i == 1) {
                com.bytedance.sdk.openadsdk.tools.d.ox(21, "1");
                return;
            }
            if (i != 2) {
                return;
            }
            if (!z) {
                com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(true);
            }
            com.bytedance.sdk.openadsdk.tools.d.ox(21, "1");
            com.bytedance.sdk.openadsdk.tools.d.ox(20, "1");
            kk();
            ig();
        }
    }

    public void dq(Map<String, String> map) {
        String str = map.get(TTDownloadField.TT_LABEL);
        final String str2 = map.get("req_id");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (!ox(str)) {
            ig.d("TTLiveSDkBridge", "not valid label " + str);
            return;
        }
        j jVar = this.iw != null ? this.iw.get() : null;
        final String str3 = map.get("ad_extra_data");
        com.bytedance.sdk.openadsdk.iw.dq.dq dqVar = new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.live.dq.mn.2
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject) throws JSONException {
                if (TextUtils.isEmpty(str3)) {
                    return;
                }
                JSONObject jSONObject2 = new JSONObject(str3);
                jSONObject2.put("req_id", str2);
                jSONObject.put("ad_extra_data", jSONObject2);
            }
        };
        if (jVar == null) {
            new dq.C0163dq().dq(this.f3158d).d(str).dq(dqVar);
            dq(str2, str, TTAdConstant.MATE_IS_NULL_MSG);
            return;
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(jVar, this.f3158d, str, dqVar);
        String el = jVar.el();
        if (TextUtils.equals(el, str2)) {
            return;
        }
        dq(str2, str, tn.x("mate req is ", el));
    }

    public void dq(boolean z, String str) {
        String str2;
        com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar;
        com.bytedance.sdk.openadsdk.h.mn.dq(new kk("getLiveSdk") { // from class: com.bytedance.sdk.openadsdk.core.live.dq.mn.1
            @Override // java.lang.Runnable
            public void run() {
                mn.this.ig();
            }
        });
        if (this.iw != null && this.iw.get() != null) {
            com.bytedance.sdk.openadsdk.core.ig.ox.dq(z ? 2 : 1, this.f3158d != null ? this.f3158d : "", this.iw.get());
        }
        if (!z || (str2 = this.p) == null || (dqVar = (com.bytedance.sdk.openadsdk.f.d.dq.dq) e.dq(str2, com.bytedance.sdk.openadsdk.f.d.dq.dq.class)) == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("open_uid", str);
        dqVar.dq(1, hashMap);
        mp();
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public JSONObject mn() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public void ox() {
        if (this.dq == null || !s()) {
            return;
        }
        d("warmingUpBeforeEnter");
    }

    public void ox(Map<String, String> map) {
        com.bytedance.sdk.openadsdk.f.d.dq.dq dqVar = (com.bytedance.sdk.openadsdk.f.d.dq.dq) e.dq(this.p, com.bytedance.sdk.openadsdk.f.d.dq.dq.class);
        if (dqVar == null) {
            return;
        }
        dqVar.dq(4, map);
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public int p() {
        Object d2;
        return (this.dq == null || !s() || (d2 = d("hasAuthenticated")) == null || !(d2 instanceof Boolean)) ? false : ((Boolean) d2).booleanValue() ? 2 : 1;
    }

    @Override // com.bytedance.sdk.openadsdk.core.live.dq.p
    public boolean s() {
        return this.kk == 2;
    }
}
