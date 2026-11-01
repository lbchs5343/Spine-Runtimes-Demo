package com.bytedance.sdk.openadsdk.core.f.dq;

import android.app.Activity;
import android.content.Context;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq extends com.bytedance.sdk.component.dq.s<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private Context f2849d;
    private String dq;

    public dq(String str, Context context) {
        this.dq = str;
        this.f2849d = context;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, Context context) {
        fwVar.dq("closeView", (com.bytedance.sdk.component.dq.s<?, ?>) new dq("closeView", context));
    }

    @Override // com.bytedance.sdk.component.dq.s
    public JSONObject dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        JSONObject jSONObject2 = new JSONObject();
        String str = this.dq;
        str.getClass();
        if (!str.equals("closeView")) {
            return jSONObject2;
        }
        Context context = this.f2849d;
        if (context == null) {
            jSONObject2.put("success", false);
            return jSONObject2;
        }
        ((Activity) context).finish();
        jSONObject2.put("success", true);
        return jSONObject2;
    }
}
