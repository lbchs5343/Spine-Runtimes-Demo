package com.bytedance.sdk.openadsdk.core.e.dq;

import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.component.kk.d.p;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.le;
import com.bytedance.sdk.openadsdk.core.mn;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.wp;
import g.abn;
import java.io.IOException;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq extends kk {

    /* renamed from: com.bytedance.sdk.openadsdk.core.e.dq.dq$dq, reason: collision with other inner class name */
    public static class C0158dq {
        private static final dq dq = new dq();
    }

    private dq() {
        super("PluginSettingsFetchTask");
    }

    public static dq d() {
        return C0158dq.dq;
    }

    private JSONObject p() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("oaid", le.dq(false));
            jSONObject.put("conn_type", q.d(wp.getContext()));
            jSONObject.put("os", 1);
            jSONObject.put("os_api", Build.VERSION.SDK_INT);
            jSONObject.put(PluginConstants.KEY_SDK_VERSION, op.ox);
            jSONObject.put(PluginConstants.KEY_PLUGIN_VERSION, "6.6.0.7");
            jSONObject.put("package_name", c.kk());
            jSONObject.put("app_version", c.no());
            jSONObject.put("app_code", c.o());
            jSONObject.put("vendor", Build.MANUFACTURER);
            long currentTimeMillis = System.currentTimeMillis() / 1000;
            String mp = no.ia().mp();
            jSONObject.put("ts", currentTimeMillis);
            jSONObject.put(PluginConstants.KEY_APP_ID, mp);
            jSONObject.put("req_sign", s.d(mp != null ? mp.concat(String.valueOf(currentTimeMillis)).concat(op.ox) : ""));
            jSONObject.put("channel", op.iw);
            jSONObject.put("applog_did", mn.dq().d());
            jSONObject.put("imei", i.iw());
            jSONObject.put(abn.EXTRA_SOURCE, 1);
            jSONObject.put("device_abi", Build.SUPPORTED_ABIS[0]);
            jSONObject.put("plugins", s());
            jSONObject.put("csj_type", no.ia().n() ? 1 : 0);
        } catch (Throwable unused) {
        }
        return jSONObject;
    }

    private JSONObject s() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject wp = no.ia().wp();
        boolean xx = wp.d().xx();
        if (wp != null) {
            Iterator<String> keys = wp.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (!TextUtils.isEmpty(next)) {
                    JSONObject optJSONObject = wp.optJSONObject(next);
                    if (optJSONObject != null) {
                        optJSONObject.put("plugin_update_network", no.ia().fw().dq(next));
                    }
                    if (xx && next.equals("com.byted.live.lite")) {
                        jSONObject.putOpt(d.d(), optJSONObject);
                    } else {
                        jSONObject.putOpt(next, optJSONObject);
                    }
                }
            }
        }
        return jSONObject;
    }

    public void ox() {
        if (q.dq(wp.getContext())) {
            com.bytedance.sdk.component.o.mn.d(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().d();
        d2.dq(c.mn("/api/ad/union/sdk/settings/plugins"));
        d2.d("User-Agent", c.mn());
        d2.dq(com.bytedance.sdk.component.utils.dq.dq(p()));
        d2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.e.dq.dq.1
            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(p pVar, com.bytedance.sdk.component.kk.d dVar) {
                if (dVar == null || !dVar.ia() || TextUtils.isEmpty(dVar.p())) {
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(dVar.p());
                    if (jSONObject.optInt("cypher") == 3) {
                        String ox = com.bytedance.sdk.component.utils.dq.ox(jSONObject.optString("message"));
                        if (TextUtils.isEmpty(ox)) {
                            return;
                        }
                        d.dq().dq(new JSONObject(ox).optJSONArray("plugins"));
                    }
                } catch (JSONException unused) {
                }
            }

            @Override // com.bytedance.sdk.component.kk.dq.dq
            public void dq(p pVar, IOException iOException) {
                try {
                    Iterator<String> keys = no.ia().wp().keys();
                    while (keys.hasNext()) {
                        d.dq().dq(keys.next(), PluginConstants.ERROR_PLUGIN_FETCH);
                    }
                } catch (Throwable unused) {
                }
            }
        });
    }
}
