package com.bytedance.sdk.openadsdk.core.r;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class yy {

    /* renamed from: d, reason: collision with root package name */
    private int f3525d;
    private int dq;
    private int ox;

    public static yy dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        yy yyVar = new yy();
        yyVar.dq = jSONObject.optInt("auth_type");
        yyVar.f3525d = jSONObject.optInt("auth_time");
        yyVar.ox = jSONObject.optInt("video_open_deeplink");
        return yyVar;
    }

    public int d() {
        return this.dq;
    }

    public JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("auth_type", this.dq);
            jSONObject.put("auth_time", this.f3525d);
            jSONObject.put("video_open_deeplink", this.ox);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public int ox() {
        return this.f3525d;
    }

    public int p() {
        return this.ox;
    }
}
