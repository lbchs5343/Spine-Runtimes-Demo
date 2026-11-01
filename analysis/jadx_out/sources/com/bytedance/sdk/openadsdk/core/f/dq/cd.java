package com.bytedance.sdk.openadsdk.core.f.dq;

import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.uh;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class cd extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private final String f2846d;
    private final WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;

    public cd(com.bytedance.sdk.openadsdk.core.c cVar, String str) {
        this.dq = new WeakReference<>(cVar);
        this.f2846d = str;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, com.bytedance.sdk.openadsdk.core.c cVar) {
        fwVar.dq("interactiveStart", (com.bytedance.sdk.component.dq.s<?, ?>) new cd(cVar, "interactiveStart"));
        fwVar.dq("interactiveFinish", (com.bytedance.sdk.component.dq.s<?, ?>) new cd(cVar, "interactiveFinish"));
        fwVar.dq("interactiveEnd", (com.bytedance.sdk.component.dq.s<?, ?>) new cd(cVar, "interactiveEnd"));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        char c2;
        JSONObject jSONObject2 = new JSONObject();
        if (this.dq.get() != null) {
            com.bytedance.sdk.openadsdk.core.c cVar = this.dq.get();
            j kk = cVar.kk();
            String str = this.f2846d;
            str.getClass();
            int i = -1;
            boolean z = true;
            switch (str.hashCode()) {
                case -1055587680:
                    if (str.equals("interactiveStart")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 803356313:
                    if (str.equals("interactiveEnd")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1254561301:
                    if (str.equals("interactiveFinish")) {
                        c2 = 2;
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
                    cVar.gh();
                    break;
                case 1:
                    cVar.r();
                    break;
                case 2:
                    try {
                        if (jSONObject.optInt("finish", 1) != 1) {
                            z = false;
                        }
                        int optInt = jSONObject.optInt("reduce_duration", -1);
                        int uw = kk != null ? kk.uw() : 0;
                        if (optInt >= 0 && uw >= 0) {
                            optInt = Math.min(optInt, uw);
                        } else if (optInt < 0) {
                            optInt = uw >= 0 ? uw : 0;
                        }
                        if (uh.s(kk)) {
                            optInt = 0;
                        }
                        if (z) {
                            cVar.p(optInt);
                            i = 0;
                        }
                        jSONObject2.put(PluginConstants.KEY_ERROR_CODE, i);
                        jSONObject2.put("reduce_duration", optInt);
                        break;
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                        return jSONObject2;
                    }
            }
        }
        return jSONObject2;
    }
}
