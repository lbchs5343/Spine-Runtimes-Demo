package com.bytedance.sdk.component.kk.ox;

import android.content.Context;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p {
    private static final Object p = new Object();

    /* renamed from: d, reason: collision with root package name */
    private ox f1995d = new ox();
    private Context dq;
    private boolean ox;
    private int s;

    public p(Context context, boolean z, int i) {
        this.dq = context;
        this.ox = z;
        this.s = i;
    }

    private ox d(JSONObject jSONObject) {
        try {
            ox oxVar = new ox();
            if (jSONObject.has("local_enable")) {
                oxVar.dq = jSONObject.getInt("local_enable") != 0;
            }
            if (jSONObject.has("probe_enable")) {
                oxVar.f1994d = jSONObject.getInt("probe_enable") != 0;
            }
            if (jSONObject.has("local_host_filter")) {
                JSONArray jSONArray = jSONObject.getJSONArray("local_host_filter");
                HashMap hashMap = new HashMap();
                if (jSONArray.length() > 0) {
                    for (int i = 0; i < jSONArray.length(); i++) {
                        String string = jSONArray.getString(i);
                        if (!TextUtils.isEmpty(string)) {
                            hashMap.put(string, 0);
                        }
                    }
                }
                oxVar.ox = hashMap;
            } else {
                oxVar.ox = null;
            }
            if (jSONObject.has("host_replace_map")) {
                JSONObject jSONObject2 = jSONObject.getJSONObject("host_replace_map");
                HashMap hashMap2 = new HashMap();
                if (jSONObject2.length() > 0) {
                    Iterator<String> keys = jSONObject2.keys();
                    while (keys.hasNext()) {
                        String next = keys.next();
                        String string2 = jSONObject2.getString(next);
                        if (!TextUtils.isEmpty(next) && !TextUtils.isEmpty(string2)) {
                            hashMap2.put(next, string2);
                        }
                    }
                }
                oxVar.p = hashMap2;
            } else {
                oxVar.p = null;
            }
            oxVar.s = jSONObject.optInt("req_to_cnt", oxVar.s);
            oxVar.iw = jSONObject.optInt("req_to_api_cnt", oxVar.iw);
            oxVar.mn = jSONObject.optInt("req_to_ip_cnt", oxVar.mn);
            oxVar.ia = jSONObject.optInt("req_err_cnt", oxVar.ia);
            oxVar.kk = jSONObject.optInt("req_err_api_cnt", oxVar.kk);
            oxVar.o = jSONObject.optInt("req_err_ip_cnt", oxVar.o);
            oxVar.no = jSONObject.optInt("update_interval", oxVar.no);
            oxVar.ig = jSONObject.optInt("update_random_range", oxVar.ig);
            oxVar.mp = jSONObject.optString("http_code_black", oxVar.mp);
            return oxVar;
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public void d() {
        try {
            String dq = com.bytedance.sdk.component.kk.p.p.dq(this.dq, 1, this.s);
            if (TextUtils.isEmpty(dq)) {
                com.bytedance.sdk.component.kk.p.ox.ox("TNCConfigHandler", "loadLocalConfigForOtherProcess, data empty");
                return;
            }
            ox d2 = d(new JSONObject(dq));
            StringBuilder sb = new StringBuilder("loadLocalConfigForOtherProcess, config: ");
            sb.append(d2 == null ? "null" : d2.toString());
            com.bytedance.sdk.component.kk.p.ox.ox("TNCConfigHandler", sb.toString());
            if (d2 != null) {
                this.f1995d = d2;
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.kk.p.ox.ox("TNCConfigHandler", "loadLocalConfigForOtherProcess, except: " + th.getMessage());
        }
    }

    public void dq() {
        if (this.ox) {
            String string = com.bytedance.sdk.openadsdk.api.plugin.d.d(this.dq, mn.dq().dq(this.s).dq(), 0).getString("tnc_config_str", null);
            if (TextUtils.isEmpty(string)) {
                com.bytedance.sdk.component.kk.p.ox.ox("TNCConfigHandler", "loadLocalConfig: no existed");
                return;
            }
            try {
                ox d2 = d(new JSONObject(string));
                if (d2 != null) {
                    this.f1995d = d2;
                }
                StringBuilder sb = new StringBuilder("loadLocalConfig: ");
                sb.append(d2 == null ? "null" : d2.toString());
                com.bytedance.sdk.component.kk.p.ox.ox("TNCConfigHandler", sb.toString());
            } catch (Throwable th) {
                th.printStackTrace();
                com.bytedance.sdk.component.kk.p.ox.ox("TNCConfigHandler", "loadLocalConfig: except: " + th.getMessage());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0126 A[Catch: all -> 0x0074, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x0074, blocks: (B:8:0x001d, B:11:0x0028, B:15:0x0042, B:16:0x0048, B:18:0x004e, B:20:0x006a, B:22:0x0077, B:25:0x007a, B:27:0x0080, B:28:0x0089, B:30:0x008f, B:31:0x0099, B:33:0x009f, B:36:0x00ae, B:39:0x00b8, B:40:0x00d4, B:43:0x00ea, B:55:0x0126, B:67:0x00e6, B:69:0x00c2, B:71:0x00cf), top: B:7:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00e6 A[Catch: all -> 0x0074, TryCatch #3 {all -> 0x0074, blocks: (B:8:0x001d, B:11:0x0028, B:15:0x0042, B:16:0x0048, B:18:0x004e, B:20:0x006a, B:22:0x0077, B:25:0x007a, B:27:0x0080, B:28:0x0089, B:30:0x008f, B:31:0x0099, B:33:0x009f, B:36:0x00ae, B:39:0x00b8, B:40:0x00d4, B:43:0x00ea, B:55:0x0126, B:67:0x00e6, B:69:0x00c2, B:71:0x00cf), top: B:7:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00c2 A[Catch: all -> 0x0074, TryCatch #3 {all -> 0x0074, blocks: (B:8:0x001d, B:11:0x0028, B:15:0x0042, B:16:0x0048, B:18:0x004e, B:20:0x006a, B:22:0x0077, B:25:0x007a, B:27:0x0080, B:28:0x0089, B:30:0x008f, B:31:0x0099, B:33:0x009f, B:36:0x00ae, B:39:0x00b8, B:40:0x00d4, B:43:0x00ea, B:55:0x0126, B:67:0x00e6, B:69:0x00c2, B:71:0x00cf), top: B:7:0x001d }] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00cd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void dq(JSONObject jSONObject) {
        JSONObject jSONObject2;
        JSONObject optJSONObject;
        ox d2;
        if (!this.ox) {
            com.bytedance.sdk.component.kk.p.ox.ox("TNCConfigHandler", "handleConfigChanged: no mainProc");
            return;
        }
        mn.dq().dq(this.s).s();
        try {
            boolean z = jSONObject.optInt("ttnet_url_dispatcher_enabled", 0) > 0;
            JSONArray optJSONArray = jSONObject.optJSONArray("ttnet_dispatch_actions");
            if (mn.dq().dq(this.s).ox() && z && optJSONArray != null) {
                ArrayList arrayList = new ArrayList();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject jSONObject3 = ((JSONObject) optJSONArray.get(i)).getJSONObject("param");
                    if (jSONObject3.optString("service_name", "").equals("idc_selection")) {
                        arrayList.add(jSONObject3.getJSONObject("strategy_info"));
                    }
                }
                if (!arrayList.isEmpty()) {
                    jSONObject2 = new JSONObject();
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        JSONObject jSONObject4 = (JSONObject) it.next();
                        Iterator<String> keys = jSONObject4.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            jSONObject2.put(next, jSONObject4.getString(next));
                        }
                    }
                    optJSONObject = jSONObject.optJSONObject("tnc_config");
                    if (optJSONObject != null && jSONObject2 == null) {
                        com.bytedance.sdk.component.kk.p.ox.dq("TNCConfigHandler", " tnc host_replace_map config is null");
                    } else if (optJSONObject != null) {
                        optJSONObject = new JSONObject();
                        optJSONObject.put("host_replace_map", jSONObject2);
                    } else if (jSONObject2 != null) {
                        optJSONObject.put("host_replace_map", jSONObject2);
                    }
                    d2 = d(optJSONObject);
                    StringBuilder sb = new StringBuilder("handleConfigChanged, newConfig: ");
                    sb.append(d2 != null ? "null" : d2.toString());
                    com.bytedance.sdk.component.kk.p.ox.ox("TNCConfigHandler", sb.toString());
                    if (d2 != null) {
                        synchronized (p) {
                            com.bytedance.sdk.openadsdk.api.plugin.d.d(this.dq, mn.dq().dq(this.s).dq(), 0).edit().putString("tnc_config_str", "").apply();
                            com.bytedance.sdk.component.kk.p.p.dq(this.dq, 1, "", this.s);
                        }
                        return;
                    } else {
                        this.f1995d = d2;
                        String jSONObject5 = optJSONObject.toString();
                        synchronized (p) {
                            com.bytedance.sdk.openadsdk.api.plugin.d.d(this.dq, mn.dq().dq(this.s).dq(), 0).edit().putString("tnc_config_str", jSONObject5).apply();
                            com.bytedance.sdk.component.kk.p.p.dq(this.dq, 1, jSONObject5, this.s);
                        }
                        return;
                    }
                }
            }
            jSONObject2 = null;
            optJSONObject = jSONObject.optJSONObject("tnc_config");
            if (optJSONObject != null) {
            }
            if (optJSONObject != null) {
            }
            d2 = d(optJSONObject);
            StringBuilder sb2 = new StringBuilder("handleConfigChanged, newConfig: ");
            sb2.append(d2 != null ? "null" : d2.toString());
            com.bytedance.sdk.component.kk.p.ox.ox("TNCConfigHandler", sb2.toString());
            if (d2 != null) {
            }
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                this.f1995d = new ox();
                synchronized (p) {
                    com.bytedance.sdk.openadsdk.api.plugin.d.d(this.dq, mn.dq().dq(this.s).dq(), 0).edit().putString("tnc_config_str", "").apply();
                    com.bytedance.sdk.component.kk.p.p.dq(this.dq, 1, "", this.s);
                }
            } catch (Throwable th2) {
                synchronized (p) {
                    com.bytedance.sdk.openadsdk.api.plugin.d.d(this.dq, mn.dq().dq(this.s).dq(), 0).edit().putString("tnc_config_str", "").apply();
                    com.bytedance.sdk.component.kk.p.p.dq(this.dq, 1, "", this.s);
                    throw th2;
                }
            }
        }
    }

    public ox ox() {
        return this.f1995d;
    }
}
