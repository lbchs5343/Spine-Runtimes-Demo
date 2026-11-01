package com.bytedance.sdk.openadsdk.core.f.dq;

import android.widget.Toast;
import com.bytedance.sdk.component.dq.p;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class r extends com.bytedance.sdk.component.dq.p<JSONObject, JSONObject> {
    private WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;

    public r(com.bytedance.sdk.openadsdk.core.c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, String str) {
        com.bytedance.sdk.component.utils.ig.d("MallTopBarClickMethod", "code = " + i + ", msg = " + str);
        Toast.makeText(com.bytedance.sdk.openadsdk.core.wp.getContext(), "努力加载中，请稍后再试", 1).show();
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, final com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("mallTopbarClick", new p.d() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.r.1
            @Override // com.bytedance.sdk.component.dq.p.d
            public com.bytedance.sdk.component.dq.p dq() {
                return new r(com.bytedance.sdk.openadsdk.core.c.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, JSONObject jSONObject) {
        int dq = com.bytedance.sdk.openadsdk.core.live.d.dq().dq(str);
        try {
            jSONObject.putOpt(PluginConstants.KEY_ERROR_CODE, Integer.valueOf(dq));
        } catch (JSONException unused) {
        }
        if (dq != 1) {
            dq(dq, "schema 解析失败");
        }
        dq((r) jSONObject);
    }

    private void dq(final String str, boolean z) throws JSONException {
        final JSONObject jSONObject = new JSONObject();
        if (2 == com.bytedance.sdk.openadsdk.core.live.d.dq().s()) {
            dq(str, jSONObject);
            return;
        }
        int dq = com.bytedance.sdk.openadsdk.core.live.d.dq().dq(new com.bytedance.sdk.openadsdk.core.live.d.d() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.r.2
            @Override // com.bytedance.sdk.openadsdk.core.live.d.d
            public void dq(Object obj) {
                if (obj instanceof Map) {
                    Map map = (Map) obj;
                    if (map.containsKey(PluginConstants.KEY_ERROR_CODE)) {
                        Object obj2 = map.get(PluginConstants.KEY_ERROR_CODE);
                        if (obj2 instanceof String) {
                            try {
                                int parseInt = Integer.parseInt((String) obj2);
                                if (parseInt == 1) {
                                    r.this.dq(str, jSONObject);
                                    return;
                                }
                                try {
                                    jSONObject.putOpt(PluginConstants.KEY_ERROR_CODE, Integer.valueOf(parseInt));
                                } catch (JSONException unused) {
                                }
                                r.this.dq(parseInt, "授权失败");
                                r.this.dq((r) jSONObject);
                                return;
                            } catch (NumberFormatException unused2) {
                            }
                        }
                    }
                }
                try {
                    jSONObject.putOpt(PluginConstants.KEY_ERROR_CODE, -1);
                } catch (JSONException unused3) {
                }
                r.this.dq(-1, "授权失败");
                r.this.dq((r) jSONObject);
            }
        }, z);
        jSONObject.putOpt(PluginConstants.KEY_ERROR_CODE, Integer.valueOf(dq));
        if (dq != 1) {
            dq(dq, "执行授权失败");
            dq((r) jSONObject);
        }
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        com.bytedance.sdk.openadsdk.core.no.ia().c();
        WeakReference<com.bytedance.sdk.openadsdk.core.c> weakReference = this.dq;
        if (weakReference == null) {
            return;
        }
        if (weakReference.get() == null || jSONObject == null) {
            ox();
            return;
        }
        String optString = jSONObject.optString("schema");
        if (optString.isEmpty()) {
            ox();
        } else {
            dq(optString, jSONObject.optBoolean("sync_auth", false));
        }
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void p() {
        this.dq = null;
    }
}
