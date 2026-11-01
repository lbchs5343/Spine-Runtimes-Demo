package com.bytedance.sdk.openadsdk.core.o.ox.d;

import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    public String f3291d;
    public j dq;
    public String ox;
    public JSONObject p;

    public static dq dq() {
        return new dq();
    }

    public static dq dq(JSONObject jSONObject) {
        String str;
        String str2;
        JSONObject jSONObject2;
        j jVar = null;
        if (jSONObject == null) {
            return null;
        }
        try {
            str = jSONObject.optString(TTDownloadField.TT_TAG, null);
        } catch (Exception unused) {
            str = null;
            str2 = null;
        }
        try {
            str2 = jSONObject.optString(TTDownloadField.TT_LABEL, null);
            try {
                jSONObject2 = jSONObject.optJSONObject("extra");
                try {
                    jVar = com.bytedance.sdk.openadsdk.core.d.dq(jSONObject.optJSONObject("material_meta"));
                } catch (Exception unused2) {
                }
            } catch (Exception unused3) {
                jSONObject2 = null;
            }
        } catch (Exception unused4) {
            str2 = null;
            jSONObject2 = str2;
            return dq().dq(str).d(str2).d(jSONObject2).dq(jVar);
        }
        return dq().dq(str).d(str2).d(jSONObject2).dq(jVar);
    }

    public dq d(String str) {
        this.ox = str;
        return this;
    }

    public dq d(JSONObject jSONObject) {
        this.p = jSONObject;
        return this;
    }

    public JSONObject d() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(TTDownloadField.TT_TAG, this.f3291d);
            jSONObject.put(TTDownloadField.TT_LABEL, this.ox);
            JSONObject jSONObject2 = this.p;
            if (jSONObject2 != null) {
                jSONObject.put("extra", jSONObject2);
            }
            j jVar = this.dq;
            if (jVar != null) {
                jSONObject.put("material_meta", jVar.ve());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public dq dq(j jVar) {
        this.dq = jVar;
        return this;
    }

    public dq dq(String str) {
        this.f3291d = str;
        return this;
    }
}
