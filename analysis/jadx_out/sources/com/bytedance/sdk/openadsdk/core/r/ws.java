package com.bytedance.sdk.openadsdk.core.r;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.abn;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ws {

    /* renamed from: d, reason: collision with root package name */
    private String f3522d;
    private String dq;
    private int iw;
    private String mn;
    private String ox;
    private String p;
    private JSONObject s;

    public static ws dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        ws wsVar = new ws();
        wsVar.dq = jSONObject.optString(TTDownloadField.TT_ID);
        wsVar.p = jSONObject.optString("data");
        wsVar.ox = jSONObject.optString(abn.EXTRA_URL);
        wsVar.f3522d = jSONObject.optString(TTDownloadField.TT_MD5);
        wsVar.mn = jSONObject.optString("express_gesture_priority");
        wsVar.iw = jSONObject.optInt("material_type");
        wsVar.s = jSONObject.optJSONObject("custom_components");
        return wsVar;
    }

    public String d() {
        return this.f3522d;
    }

    public String dq() {
        return this.dq;
    }

    public JSONObject ia() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TTDownloadField.TT_ID, this.dq);
            jSONObject.put(TTDownloadField.TT_MD5, this.f3522d);
            jSONObject.put(abn.EXTRA_URL, this.ox);
            jSONObject.put("data", this.p);
            jSONObject.put("material_type", this.iw);
            jSONObject.put("custom_components", this.s);
            jSONObject.put("express_gesture_priority", this.mn);
            return jSONObject;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public String iw() {
        return this.mn;
    }

    public int mn() {
        return this.iw;
    }

    public String ox() {
        return this.ox;
    }

    public String p() {
        return this.p;
    }

    public JSONObject s() {
        return this.s;
    }
}
