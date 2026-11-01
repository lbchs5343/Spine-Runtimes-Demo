package com.bytedance.sdk.openadsdk.core.dislike;

import android.text.TextUtils;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.wp;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private String f2799d;
    private boolean dq;
    private String ox;
    private com.bytedance.sdk.openadsdk.core.dislike.ox.ox p;

    public static d dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return dq(new JSONObject(str));
        } catch (JSONException e2) {
            ig.d("OncallUploadConfig", "parse failed:".concat(String.valueOf(e2)));
            return null;
        }
    }

    public static d dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        d dVar = new d();
        dVar.dq = jSONObject.optBoolean("enable");
        dVar.f2799d = jSONObject.optString("upload_api");
        dVar.ox = jSONObject.optString("alert_text");
        JSONObject optJSONObject = jSONObject.optJSONObject("filter_word");
        if (optJSONObject != null) {
            com.bytedance.sdk.openadsdk.core.dislike.ox.ox dq = com.bytedance.sdk.openadsdk.core.dislike.ox.ox.dq(optJSONObject);
            if (dq != null) {
                if (TextUtils.isEmpty(dq.dq())) {
                    dq.dq("99:1");
                }
                if (TextUtils.isEmpty(dq.d())) {
                    dq.d("素材反馈");
                }
            }
            dVar.p = dq;
        }
        return dVar;
    }

    public static com.bytedance.sdk.openadsdk.core.dislike.ox.ox dq() {
        d pa = wp.d().pa();
        if (pa != null) {
            return pa.s();
        }
        return null;
    }

    public boolean d() {
        return this.dq;
    }

    public String ox() {
        return this.f2799d;
    }

    public String p() {
        return this.ox;
    }

    public com.bytedance.sdk.openadsdk.core.dislike.ox.ox s() {
        return this.p;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("enable", Boolean.valueOf(this.dq));
            jSONObject.putOpt("upload_api", this.f2799d);
            jSONObject.putOpt("alert_text", this.ox);
            com.bytedance.sdk.openadsdk.core.dislike.ox.ox oxVar = this.p;
            if (oxVar != null) {
                jSONObject.putOpt("filter_word", oxVar.mn());
            }
        } catch (JSONException e2) {
            ig.d("OncallUploadConfig", e2);
        }
        return jSONObject.toString();
    }
}
