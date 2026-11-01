package com.bytedance.sdk.openadsdk.core;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.ProviderInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s {
    private static String dq = "AppEnvironment";

    /* renamed from: d, reason: collision with root package name */
    private Map<String, String> f3527d;
    private long ox;
    private boolean p;
    private String s;

    public static class dq {
        public static final s dq = new s();
    }

    private s() {
        this.s = "";
        HashMap hashMap = new HashMap();
        this.f3527d = hashMap;
        hashMap.put("ad_style", "default");
        this.f3527d.put(MediationConstant.EXTRA_ADID, "default");
        this.f3527d.put("rit", "default");
        this.f3527d.put("request_id", "default");
        this.f3527d.put("ad_slot_type", "default");
        this.f3527d.put("net_type", "default");
        this.f3527d.put("low_memory", "default");
        this.f3527d.put("total_max_memory_rate", "default");
        this.f3527d.put("commit_hash", "29e9223cf3");
        this.f3527d.put("branch", "");
        this.f3527d.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
        this.f3527d.put("sdk_api_version", op.ox);
        this.f3527d.put("setting_ab_version", com.bytedance.sdk.openadsdk.core.ox.p.dq().s());
        this.ox = com.bytedance.sdk.openadsdk.core.ir.n.dq("tt_sp_app_env").d("last_app_env_time", 0L);
        this.p = false;
    }

    public static s dq() {
        return dq.dq;
    }

    private void p() {
        Runtime runtime = Runtime.getRuntime();
        float maxMemory = (float) ((runtime.maxMemory() * 1.0d) / 1048576.0d);
        float f2 = (float) ((runtime.totalMemory() * 1.0d) / 1048576.0d);
        ActivityManager activityManager = (ActivityManager) wp.getContext().getSystemService(TTDownloadField.TT_ACTIVITY);
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        com.bytedance.sdk.component.utils.ig.p(dq, "系统是否处于低内存运行：" + memoryInfo.lowMemory);
        com.bytedance.sdk.component.utils.ig.p(dq, "maxMemory: ".concat(String.valueOf(maxMemory)));
        com.bytedance.sdk.component.utils.ig.p(dq, "totalMemory: ".concat(String.valueOf(f2)));
        com.bytedance.sdk.component.utils.ig.p(dq, "freeMemory: ".concat(String.valueOf((float) ((runtime.freeMemory() * 1.0d) / 1048576.0d))));
        int i = (int) ((f2 / maxMemory) * 100.0f);
        com.bytedance.sdk.component.utils.ig.p(dq, "totalMaxRate: ".concat(String.valueOf(i)));
        this.f3527d.put("low_memory", String.valueOf(memoryInfo.lowMemory));
        this.f3527d.put("total_max_memory_rate", String.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject s() {
        JSONObject jSONObject = new JSONObject();
        try {
            Context context = wp.getContext();
            if (context == null) {
                return null;
            }
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4111);
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (applicationInfo != null) {
                jSONObject.put("application_name", applicationInfo.name);
            }
            jSONObject.put(PluginConstants.KEY_APP_ID, no.ia().mp());
            if (packageInfo != null) {
                ActivityInfo[] activityInfoArr = packageInfo.activities;
                String[] strArr = packageInfo.requestedPermissions;
                ActivityInfo[] activityInfoArr2 = packageInfo.receivers;
                ServiceInfo[] serviceInfoArr = packageInfo.services;
                ProviderInfo[] providerInfoArr = packageInfo.providers;
                if (activityInfoArr != null) {
                    JSONArray jSONArray = new JSONArray();
                    for (ActivityInfo activityInfo : activityInfoArr) {
                        jSONArray.put(activityInfo.name);
                    }
                    jSONObject.put("activities", jSONArray);
                }
                if (strArr != null) {
                    JSONArray jSONArray2 = new JSONArray();
                    for (String str : strArr) {
                        jSONArray2.put(str);
                    }
                    jSONObject.put("permissions", jSONArray2);
                }
                if (activityInfoArr2 != null) {
                    JSONArray jSONArray3 = new JSONArray();
                    for (ActivityInfo activityInfo2 : activityInfoArr2) {
                        jSONArray3.put(activityInfo2.name);
                    }
                    jSONObject.put("receivers", jSONArray3);
                }
                if (serviceInfoArr != null) {
                    JSONArray jSONArray4 = new JSONArray();
                    for (ServiceInfo serviceInfo : serviceInfoArr) {
                        jSONArray4.put(serviceInfo.name);
                    }
                    jSONObject.put("services", jSONArray4);
                }
                if (providerInfoArr != null) {
                    JSONArray jSONArray5 = new JSONArray();
                    for (ProviderInfo providerInfo : providerInfoArr) {
                        jSONArray5.put(providerInfo.name);
                    }
                    jSONObject.put("providers", jSONArray5);
                }
            }
            return jSONObject;
        } catch (Throwable unused) {
            return null;
        }
    }

    public Map<String, String> d() {
        return this.f3527d;
    }

    public void d(com.bytedance.sdk.openadsdk.core.r.j jVar) {
        if (jVar == null) {
            return;
        }
        this.f3527d.put(MediationConstant.EXTRA_ADID, jVar.fx());
        Map<String, String> map = this.f3527d;
        StringBuilder sb = new StringBuilder();
        sb.append(com.bytedance.sdk.openadsdk.core.ir.c.kk(jVar));
        map.put("rit", sb.toString());
        this.f3527d.put("request_id", com.bytedance.sdk.openadsdk.core.ir.c.mp(jVar));
        Map<String, String> map2 = this.f3527d;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.bytedance.sdk.openadsdk.core.ir.c.ia(jVar));
        map2.put("ad_slot_type", sb2.toString());
        this.f3527d.put("net_type", com.bytedance.sdk.component.utils.q.mn(wp.getContext()));
        if (com.bytedance.sdk.openadsdk.core.ir.i.ox(jVar)) {
            this.f3527d.put("ad_style", "is_playable");
        }
        p();
    }

    public void d(String str) {
        this.f3527d.put("request_ad_info", str);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.r.j jVar) {
        if (jVar == null) {
            return;
        }
        String ao = jVar.ao();
        Map<String, String> map = this.f3527d;
        if (TextUtils.isEmpty(ao)) {
            ao = "";
        }
        map.put("ad_info", ao);
    }

    public void dq(String str) {
        this.f3527d.put("dynamic_ptpl_id", str);
    }

    public void ox() {
        if (this.p || com.bytedance.sdk.openadsdk.core.ir.c.dq(this.ox, System.currentTimeMillis())) {
            return;
        }
        this.p = true;
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().ia(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.s.1
            @Override // com.bytedance.sdk.openadsdk.no.dq.dq
            public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                s.this.p = false;
                com.bytedance.sdk.openadsdk.core.gh.dq.ox<com.bytedance.sdk.openadsdk.core.gh.dq.ox> d2 = com.bytedance.sdk.openadsdk.core.gh.dq.ox.d();
                JSONObject s = s.this.s();
                if (s != null) {
                    long currentTimeMillis = System.currentTimeMillis();
                    s.this.ox = currentTimeMillis;
                    com.bytedance.sdk.openadsdk.core.ir.n.dq("tt_sp_app_env").dq("last_app_env_time", currentTimeMillis);
                    d2.d(s.toString());
                }
                return d2;
            }
        });
    }

    public void ox(String str) {
        this.f3527d.put("show_ad_info", str);
    }
}
