package com.bytedance.sdk.openadsdk.core.bl;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ia;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.le;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.ir.o;
import com.bytedance.sdk.openadsdk.core.ir.wn;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.wp;
import g.abn;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s extends kk {

    @SuppressLint({"StaticFieldLeak"})
    private static volatile s p;

    /* renamed from: d, reason: collision with root package name */
    private final Context f2490d;
    private final p dq;
    private volatile Runnable mn;
    private static final AtomicLong ox = new AtomicLong(0);
    private static boolean s = true;
    private static volatile boolean iw = false;

    public class dq extends BroadcastReceiver {
        private dq() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent == null) {
                return;
            }
            ig.dq("SdkSettingsHelper", "onReceive: ");
            int intExtra = intent.getIntExtra("b_msg_id", -1);
            if (intExtra == 1) {
                long longExtra = intent.getLongExtra("b_msg_time", -1L);
                if (longExtra > 0) {
                    s.ox.set(longExtra);
                    return;
                }
                return;
            }
            if (intExtra == 2) {
                try {
                    if (s.this.dq != null) {
                        s.this.dq.dq();
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    private s(p pVar) {
        super("SdkSettingsHelper");
        this.dq = pVar == null ? wp.d() : pVar;
        Context context = wp.getContext();
        this.f2490d = context;
        if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
            try {
                context.registerReceiver(new dq(), new IntentFilter("com.bytedance.openadsdk.settingReceiver"), c.e(), ia.dq());
            } catch (Throwable unused) {
            }
        }
    }

    public static void d() {
        try {
            n.dq("tt_sdk_settings_other").d();
            n.dq("tt_sdk_settings_slot").d();
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(long j) {
        ox.set(j);
        if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
            dq(j);
        }
        com.bytedance.sdk.component.o.mn.dq(this, 10);
    }

    public static s dq(p pVar) {
        if (p == null) {
            synchronized (s.class) {
                try {
                    if (p == null) {
                        p = new s(pVar);
                    }
                } finally {
                }
            }
        }
        return p;
    }

    public static void dq(long j) {
        if (j > 0 && wp.getContext() != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(c.kk());
                intent.setAction("com.bytedance.openadsdk.settingReceiver");
                intent.putExtra("b_msg_id", 1);
                intent.putExtra("b_msg_time", j);
                wp.getContext().sendBroadcast(intent, c.e());
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, Map<String, String> map) {
        int i = 1;
        try {
            if (!TextUtils.isEmpty(str) && map != null) {
                HashMap hashMap = new HashMap();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (key != null) {
                        hashMap.put(key.toLowerCase(Locale.US), entry.getValue());
                    }
                }
                int intValue = Integer.valueOf((String) hashMap.get("active-control")).intValue();
                long longValue = Long.valueOf((String) hashMap.get("ts")).longValue();
                String str2 = (String) hashMap.get("pst");
                String dq2 = com.bykv.vk.openvk.component.video.api.iw.d.dq(str + intValue + longValue);
                if (dq2 != null) {
                    if (dq2.equalsIgnoreCase(str2)) {
                        i = intValue;
                    }
                }
            }
        } catch (Throwable unused) {
        }
        iw.dq(i);
    }

    private boolean kk() {
        return TextUtils.isEmpty(no.ia().mp());
    }

    private static JSONObject o() {
        JSONObject optJSONObject;
        JSONObject wp = no.ia().wp();
        if (wp == null) {
            return new JSONObject();
        }
        Iterator<String> keys = wp.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            if (!TextUtils.isEmpty(next) && (optJSONObject = wp.optJSONObject(next)) != null) {
                try {
                    optJSONObject.put("plugin_update_network", no.ia().fw().dq(next));
                } catch (JSONException e2) {
                    e2.printStackTrace();
                }
            }
        }
        return wp;
    }

    public static void ox() {
        if (wp.getContext() != null) {
            try {
                Intent intent = new Intent();
                intent.setPackage(c.kk());
                intent.setAction("com.bytedance.openadsdk.settingReceiver");
                intent.putExtra("b_msg_id", 2);
                wp.getContext().sendBroadcast(intent, c.kk() + ".openadsdk.permission.TT_PANGOLIN");
            } catch (Throwable unused) {
            }
        }
    }

    public static boolean s() {
        return iw;
    }

    public void dq(boolean z) {
        try {
            if (kk()) {
                return;
            }
            long currentTimeMillis = System.currentTimeMillis();
            if (!z) {
                if (currentTimeMillis - ox.get() < 600000) {
                    return;
                }
                d(currentTimeMillis);
            } else {
                if (this.mn != null) {
                    ig.d("SdkSettingsHelper", "current task is not null !");
                    return;
                }
                long j = (ox.get() + 60000) - currentTimeMillis;
                if (j > 0) {
                    this.mn = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.bl.s.1
                        @Override // java.lang.Runnable
                        public void run() {
                            s.this.mn = null;
                            s.this.d(System.currentTimeMillis());
                        }
                    };
                    ia.dq().postDelayed(this.mn, j);
                } else {
                    this.mn = null;
                    d(currentTimeMillis);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public JSONObject iw() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ip", o.iw());
            jSONObject.put("ipv6", o.mn());
            jSONObject.put("oaid", le.dq(false));
            jSONObject.put("model", i.le());
            jSONObject.put("conn_type", q.d(this.f2490d));
            jSONObject.put("os", 1);
            jSONObject.put("oversea_version_type", 0);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put("os_version", String.valueOf(Build.VERSION.RELEASE));
            jSONObject.put(PluginConstants.KEY_SDK_VERSION, op.ox);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
            jSONObject.put("is_plugin", op.dq());
            jSONObject.put("is_boost", true);
            jSONObject.put("download_sdk_version", com.bytedance.sdk.openadsdk.core.o.o.p());
            jSONObject.put("package_name", c.kk());
            jSONObject.put("position", c.p() ? 1 : 2);
            jSONObject.put("app_version", c.no());
            jSONObject.put("app_code", c.o());
            String str = Build.MANUFACTURER;
            jSONObject.put("vendor", str);
            jSONObject.put(PluginConstants.KEY_APP_ID, no.ia().mp());
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            jSONObject.put("ts", currentTimeMillis);
            jSONObject.put("req_sign", com.bytedance.sdk.component.utils.s.d(no.ia().mp() != null ? no.ia().mp().concat(String.valueOf(currentTimeMillis)).concat(op.ox) : ""));
            ig.dq("isApplicationForeground", "app_version:" + c.no() + "，vendor:" + str);
            jSONObject.put("locale_language", o.o());
            jSONObject.put("channel", op.iw);
            jSONObject.put("applog_did", com.bytedance.sdk.openadsdk.core.mn.dq().d());
            jSONObject.put("can_use_sensor", no.ia().iw());
            com.bytedance.sdk.openadsdk.jy.d.dq(this.f2490d, jSONObject);
            com.bytedance.sdk.openadsdk.jy.d.d(this.f2490d, jSONObject);
            jSONObject.put("system_app", op.ox());
            if (op.dq()) {
                jSONObject.put("plugins", o());
            }
            jSONObject.put("imei", i.iw());
            jSONObject.put(abn.EXTRA_SOURCE, 1);
            jSONObject.put("device_abi", Build.SUPPORTED_ABIS[0]);
            String ob = no.ia().ob();
            if (!TextUtils.isEmpty(ob)) {
                jSONObject.put("rit_list", ob);
            }
            long c2 = wp.d().c();
            if (c2 > 0) {
                jSONObject.put("data_time", c2);
            }
            Object u = wp.d().u();
            if (u != null) {
                jSONObject.put("digest", u);
            }
            try {
                jSONObject.put("device_score", Double.parseDouble(com.bytedance.sdk.openadsdk.core.wp.dq.dq().dq("DeviceRate", "bytebench_level")));
            } catch (NumberFormatException unused) {
                jSONObject.put("device_score", -1);
            }
            jSONObject.put("csj_type", no.ia().n() ? 1 : 0);
        } catch (Throwable unused2) {
        }
        return jSONObject;
    }

    public void p() {
        dq(false);
    }

    @Override // java.lang.Runnable
    public void run() {
        if (!q.dq(this.f2490d)) {
            try {
                this.dq.dq();
            } catch (Throwable unused) {
            }
        } else if (!kk() && com.bytedance.sdk.openadsdk.core.le.dq) {
            JSONObject iw2 = iw();
            wn wnVar = new wn(com.bytedance.sdk.openadsdk.core.le.s.dq().d().iw());
            wnVar.dq(com.bytedance.sdk.openadsdk.mn.p.dq(wnVar, c.mn("/api/ad/union/sdk/settings/")));
            wnVar.d("User-Agent", c.mn());
            wnVar.d(iw2, "settings");
            wnVar.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.bl.s.2
                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                    if (dVar == null || !dVar.ia()) {
                        try {
                            s.this.dq.dq();
                            wp.d().jy();
                        } catch (Throwable unused2) {
                        }
                        com.bytedance.sdk.openadsdk.core.le.d();
                        return;
                    }
                    try {
                        try {
                            JSONObject jSONObject = (JSONObject) com.bytedance.sdk.openadsdk.core.ox.iw.dq(dVar, "settings", false).second;
                            if (jSONObject == null) {
                                return;
                            }
                            try {
                                s.this.dq(jSONObject.toString(), dVar.ox());
                            } catch (Throwable unused3) {
                            }
                            if (op.s) {
                                s.this.dq.dq(jSONObject);
                            }
                            JSONArray optJSONArray = jSONObject.optJSONArray("plugins");
                            if (optJSONArray != null) {
                                com.bytedance.sdk.openadsdk.core.e.dq.d.dq().dq(optJSONArray);
                            }
                            try {
                                s.this.dq.d(jSONObject);
                                com.bytedance.sdk.openadsdk.core.le.dq();
                                if (!s.iw) {
                                    boolean unused4 = s.iw = true;
                                }
                                no.ia().fw().s();
                                com.bytedance.sdk.openadsdk.core.n.dq.dq();
                            } catch (Throwable th) {
                                com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq("setting_saveData_failed", th);
                            }
                            com.bytedance.sdk.openadsdk.core.gh.ig.dq().d();
                            if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                                s.ox();
                            }
                        } catch (Throwable th2) {
                            com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq("setting_decrypt", th2);
                        }
                    } catch (Throwable th3) {
                        com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq("setting_parse", th3);
                    }
                }

                @Override // com.bytedance.sdk.component.kk.dq.dq
                public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                    try {
                        Iterator<String> keys = no.ia().wp().keys();
                        while (keys.hasNext()) {
                            com.bytedance.sdk.openadsdk.core.e.dq.d.dq().dq(keys.next(), PluginConstants.ERROR_PLUGIN_FETCH);
                        }
                    } catch (Throwable unused2) {
                    }
                    try {
                        s.this.dq.dq();
                        wp.d().jy();
                    } catch (Throwable unused3) {
                    }
                    com.bytedance.sdk.openadsdk.core.le.d();
                }
            });
        }
    }
}
